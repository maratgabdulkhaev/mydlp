ALTER TABLE Rule ADD COLUMN notificationEnabled TINYINT(1) NULL DEFAULT NULL COMMENT '';
CREATE TABLE EmailNotificationItem (
    id INT(11) NOT NULL,
    PRIMARY KEY (id)
) ENGINE=InnoDB COLLATE=utf8mb4_general_ci;
CREATE TABLE NotificationItem (
    id INT(11) AUTO_INCREMENT NOT NULL,
    authUser_id INT(11) NOT NULL,
    rule_id INT(11) NOT NULL,
    INDEX FK2DCD4EBE75A7E1A9 (rule_id),
    INDEX FK2DCD4EBE71D65EE9 (authUser_id),
    PRIMARY KEY (id)
) ENGINE=InnoDB COLLATE=utf8mb4_general_ci;
ALTER TABLE EmailNotificationItem ADD CONSTRAINT FKC7FE323AAE930AA8 FOREIGN KEY (id) REFERENCES NotificationItem (id) ON UPDATE NO ACTION ON DELETE NO ACTION;
ALTER TABLE NotificationItem ADD CONSTRAINT FK2DCD4EBE71D65EE9 FOREIGN KEY (authUser_id) REFERENCES AuthUser (id) ON UPDATE NO ACTION ON DELETE NO ACTION, ADD CONSTRAINT FK2DCD4EBE75A7E1A9 FOREIGN KEY (rule_id) REFERENCES Rule (id) ON UPDATE NO ACTION ON DELETE NO ACTION;