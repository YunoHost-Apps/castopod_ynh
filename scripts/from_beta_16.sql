SET AUTOCOMMIT = 0;
START TRANSACTION;

ALTER TABLE `cp_settings`
ADD COLUMN context VARCHAR(255) NULL AFTER `type`;

ALTER TABLE cp_podcasts ADD COLUMN published_at DATETIME DEFAULT NULL AFTER 
updated_by;
UPDATE cp_podcasts SET published_at = created_at;

COMMIT;
