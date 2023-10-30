-- change Twitter to X
INSERT IGNORE INTO `cp_platforms` (`slug`, `type`, `label`, `home_url`, `submit_url`) VALUES
('x', 'social', 'X', 'https://x.com/', 'https://x.com/i/flow/signup');

UPDATE `cp_podcasts_platforms`
SET `platform_slug` = 'x'
WHERE `platform_slug` = 'twitter';

DELETE FROM `cp_platforms` WHERE `slug` = 'twitter';

-- add buymeacoffee and kofi as funding platforms
INSERT IGNORE INTO `cp_platforms` (`slug`, `type`, `label`, `home_url`, `submit_url`) VALUES
('buymeacoffee', 'funding', 'Buy Me a Coffee', 'https://www.buymeacoffee.com/', 'https://www.buymeacoffee.com/signup'),
('kofi', 'funding', 'Ko-fi', 'https://ko-fi.com/', 'https://ko-fi.com/account/register');
