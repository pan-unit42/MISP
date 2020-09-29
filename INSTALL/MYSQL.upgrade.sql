ALTER TABLE `servers`
    ADD COLUMN `client_cert_content` text DEFAULT NULL;
ALTER TABLE `servers`
    ADD COLUMN `cert_content` text DEFAULT NULL;

CREATE TABLE IF NOT EXISTS `attachments`
(
    `id`           int(11) PRIMARY KEY AUTO_INCREMENT,
    `attribute_id` int(11) NOT NULL,
    `event_id`     int(11) NOT NULL,
    `data`         mediumtext,
    UNIQUE (`attribute_id`, `event_id`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8
  COLLATE = utf8_bin;