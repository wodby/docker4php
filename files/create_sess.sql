CREATE TABLE IF NOT EXISTS `dbsessions` (
                        `sess_id` VARCHAR(128) NOT NULL PRIMARY KEY,
                        `sess_data` BLOB NOT NULL,
                        `sess_time` INTEGER UNSIGNED NOT NULL,
                        `sess_lifetime` MEDIUMINT NOT NULL
                       ) COLLATE utf8_bin, ENGINE = InnoDB;
