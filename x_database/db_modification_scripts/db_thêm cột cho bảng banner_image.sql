-- Thêm cột cho bảng `banner_image`
-- 2017.06.23
USE `web_demo_mobile`;

ALTER TABLE `banner_image` ADD `sub_title` varchar(64) DEFAULT NULL;
ALTER TABLE `banner_image` ADD `description` text;
ALTER TABLE `banner_image` ADD `price` decimal(15,4) NOT NULL DEFAULT '0.0000';
