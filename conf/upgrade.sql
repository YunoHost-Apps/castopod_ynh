SET AUTOCOMMIT = 0;
START TRANSACTION;

/* Set category parent_id to be nullable + remove "uncategorized" value */
ALTER TABLE `cp_categories` CHANGE `parent_id` `parent_id` INT(10) UNSIGNED NULL DEFAULT NULL;
UPDATE `cp_categories` SET parent_id = null WHERE parent_id = 0;
DELETE FROM `cp_categories` WHERE id = 0;

/* rename `location_osmid` to `location_osm` */
ALTER TABLE `cp_podcasts` CHANGE `location_osmid` `location_osm` VARCHAR(12) NULL DEFAULT NULL;
ALTER TABLE `cp_episodes` CHANGE `location_osmid` `location_osm` VARCHAR(12) NULL DEFAULT NULL;

/* use more precise DECIMAL type for duration and start time */ 
ALTER TABLE `cp_episodes` CHANGE `audio_file_duration` `audio_file_duration` DECIMAL(8,3) UNSIGNED NOT NULL COMMENT 'Playtime in seconds';
ALTER TABLE `cp_soundbites` CHANGE `start_time` `start_time` DECIMAL(8,3) UNSIGNED NOT NULL;
ALTER TABLE `cp_soundbites` CHANGE `duration` `duration` DECIMAL(7,3) UNSIGNED NOT NULL;
ALTER TABLE `cp_analytics_podcasts` CHANGE `duration` `duration` DECIMAL(15,3) UNSIGNED NOT NULL;

/* add pages html content in database */
ALTER TABLE `cp_pages` CHANGE `content` `content_markdown` TEXT NOT NULL;
ALTER TABLE `cp_pages` ADD `content_html` TEXT NOT NULL AFTER `content_markdown`;

/* Longitude and latitude precision with DECIMAL */
ALTER TABLE `cp_soundbites` CHANGE `latitude` `latitude` DECIMAL(8,6) NULL DEFAULT NULL;
ALTER TABLE `cp_soundbites` CHANGE `longitude` `longitude` DECIMAL(9,6) NULL DEFAULT NULL;

/* update analytics procedures */

DELIMITER //

DROP PROCEDURE `cp_analytics_podcasts` //
CREATE PROCEDURE `cp_analytics_podcasts`(
	IN `p_podcast_id` INT UNSIGNED,
	IN `p_episode_id` INT UNSIGNED,
	IN `p_country_code` VARCHAR(3),
	IN `p_region_code` VARCHAR(3),
	IN `p_latitude` DECIMAL(8,6),
	IN `p_longitude` DECIMAL(9,6),
	IN `p_service` VARCHAR(128),
	IN `p_app` VARCHAR(128),
	IN `p_device` VARCHAR(32),
	IN `p_os` VARCHAR(32),
	IN `p_bot` TINYINT(1) UNSIGNED,
	IN `p_filesize` INT UNSIGNED,
	IN `p_duration` DECIMAL(8,3) UNSIGNED,
	IN `p_age` INT UNSIGNED,
	IN `p_new_listener` TINYINT(1) UNSIGNED
) COMMENT 'Add one hit in podcast logs tables.' DETERMINISTIC MODIFIES SQL DATA SQL SECURITY INVOKER
BEGIN

SET @current_datetime = NOW();
SET @current_date = DATE(@current_datetime);
SET @current_hour = HOUR(@current_datetime);

IF NOT `p_bot` THEN
    INSERT INTO `cp_analytics_podcasts`(`podcast_id`, `date`)
        VALUES (p_podcast_id, @current_date)
        ON DUPLICATE KEY UPDATE
            `duration`=`duration`+`p_duration`,
            `bandwidth`=`bandwidth`+`p_filesize`,
            `hits`=`hits`+1,
            `unique_listeners`=`unique_listeners`+`p_new_listener`;
    INSERT INTO `cp_analytics_podcasts_by_hour`(`podcast_id`, `date`, `hour`)
        VALUES (p_podcast_id, @current_date, @current_hour)
        ON DUPLICATE KEY UPDATE `hits`=`hits`+1;
    INSERT INTO `cp_analytics_podcasts_by_episode`(`podcast_id`, `episode_id`, `date`, `age`)
        VALUES (p_podcast_id, p_episode_id, @current_date, p_age)
        ON DUPLICATE KEY UPDATE `hits`=`hits`+1;
    INSERT INTO `cp_analytics_podcasts_by_country`(`podcast_id`, `country_code`, `date`)
        VALUES (p_podcast_id, p_country_code, @current_date)
        ON DUPLICATE KEY UPDATE `hits`=`hits`+1;
    INSERT INTO `cp_analytics_podcasts_by_region`(`podcast_id`, `country_code`, `region_code`, `latitude`, `longitude`, `date`)
        VALUES (p_podcast_id, p_country_code, p_region_code, p_latitude, p_longitude, @current_date)
        ON DUPLICATE KEY UPDATE `hits`=`hits`+1;
END IF;
INSERT INTO `cp_analytics_podcasts_by_player`(`podcast_id`, `service`, `app`, `device`, `os`, `is_bot`, `date`)
    VALUES (p_podcast_id, p_service, p_app, p_device, p_os, p_bot, @current_date)
    ON DUPLICATE KEY UPDATE `hits`=`hits`+1;
END //

DROP PROCEDURE `cp_analytics_unknown_useragents` //
CREATE PROCEDURE `cp_analytics_unknown_useragents`(IN `p_useragent` VARCHAR(191)) COMMENT 'Add an unknown useragent to table cp_analytics_unknown_useragents.' DETERMINISTIC MODIFIES SQL DATA SQL SECURITY INVOKER INSERT INTO `cp_analytics_unknown_useragents`(`useragent`)
VALUES (p_useragent)
ON DUPLICATE KEY UPDATE `hits`=`hits`+1 //

DROP PROCEDURE `cp_analytics_website` //
CREATE PROCEDURE `cp_analytics_website`(
	IN `p_podcast_id` INT UNSIGNED,
	IN `p_browser` VARCHAR(191),
	IN `p_entry_page` VARCHAR(512),
	IN `p_referer_url` VARCHAR(512),
	IN `p_domain` VARCHAR(128),
	IN `p_keywords` VARCHAR(384)
) COMMENT 'Add one hit in website logs tables.' DETERMINISTIC MODIFIES SQL DATA SQL SECURITY INVOKER BEGIN

SET @current_date = DATE(NOW());

INSERT INTO cp_analytics_website_by_browser(`podcast_id`, `browser`, `date`)
    VALUES (p_podcast_id, p_browser, @current_date)
    ON DUPLICATE KEY UPDATE `hits`=`hits`+1;
INSERT INTO cp_analytics_website_by_referer(`podcast_id`, `referer_url`, `domain`, `keywords`, `date`)
    VALUES (p_podcast_id, p_referer_url, p_domain, p_keywords, @current_date)
    ON DUPLICATE KEY UPDATE `hits`=`hits`+1;
INSERT INTO cp_analytics_website_by_entry_page(`podcast_id`, `entry_page_url`, `date`)
    VALUES (p_podcast_id, p_entry_page, @current_date)
    ON DUPLICATE KEY UPDATE `hits`=`hits`+1;
END //

COMMIT;
