USE `web_fashion`;

-- this script is about to make a very simple
-- demonstration of eProject 1 web PHP.
-- So that no one can complaint about anything.

-- delete table: `length_class`, `weight_class`, `order_history`, 
-- delete table: `order_status`, `stock_status`, `user_group`, `zone`
-- delete php code of these tables too.
-- delete config: config_weight_class_id, config_length_class_id
-- delete php files: order-history-add.php, admin/order-history.php
-- delete php files, columns related to: order-history, order-status, stock_status, user_group, 
--                   zone_id, post code, customer image, fax, wishlist, compare in settings 
-- what about city ?

-- OKAY, let's do it:
-- Delete constraints:
ALTER TABLE `product` DROP FOREIGN KEY `fk_product_to_length_class`;
ALTER TABLE `product` DROP FOREIGN KEY `fk_product_to_weight_class`;
ALTER TABLE `product` DROP FOREIGN KEY `fk_product_to_stock_status`;
ALTER TABLE `order`   DROP FOREIGN KEY `fk_order_to_order_status`;
ALTER TABLE `user`    DROP FOREIGN KEY `fk_user_to_user_group`;

-- Xóa các bảng không cần thiết
DROP TABLE `length_class`;
DROP TABLE `weight_class`;
DROP TABLE `order_history`;
DROP TABLE `order_status`;
DROP TABLE `stock_status`;
DROP TABLE `user_group`;
DROP TABLE `zone`;


-- Xóa các cột không cần thiết
ALTER TABLE `user`
	DROP `lastname`;
--
ALTER TABLE `customer`
	DROP `lastname`,
	DROP `cart`,
	DROP `city`,
	DROP `image`,
	DROP `fax`,
	DROP `postcode`,
	DROP `zone_id`,
	DROP `wishlist`;

-- Bảng này nên xóa thêm các thông tin liên quan bên trong bảng `setting`
ALTER TABLE `order`
	DROP `date_modified`,
	DROP `invoice_no`,
	DROP `invoice_prefix`,
	DROP `store_id`,
	DROP `store_name`,
	DROP `store_url`,
	DROP `payment_method`,
	DROP `payment_code`,
	DROP `shipping_lastname`,
	DROP `shipping_address_format`,
	DROP `shipping_method`,
	DROP `shipping_code`,
	DROP `fax`,
	DROP `shipping_postcode`,
	DROP `shipping_company`,
	DROP `shipping_city`,
	DROP `shipping_zone`,
	DROP `shipping_zone_id`,
	DROP `order_status_id`;

ALTER TABLE `product`
	DROP `stock_status_id`,
	DROP `shipping`,
	DROP `date_available`,
	DROP `weight`,
	DROP `length`,
	DROP `width`,
	DROP `height`,
	DROP `weight_class_id`,
	DROP `length_class_id`,
	DROP `subtract`,
	DROP `minimum`,
	DROP `quantity`;


-- Thay tên các cột cho ngắn gọn hơn
ALTER TABLE `customer` CHANGE COLUMN `firstname` `fullname` VARCHAR(32) NOT NULL;
ALTER TABLE `user` CHANGE COLUMN `firstname` `fullname` VARCHAR(32) NOT NULL;
ALTER TABLE `order` CHANGE COLUMN `shipping_firstname` `fullname` VARCHAR(32) NOT NULL;
ALTER TABLE `order` CHANGE COLUMN `shipping_address` `address` varchar(255) DEFAULT NULL;

-- Có nên đổi tên bảng `order_product` thành `order_details` ???
-- Việc này cần cẩn thận vì mã nguồn liên quan đến tên bảng ở khắp nơi.
-- Nếu có thay thì sau đó cũng phải kiểm tra lại toàn bộ hệ thống.

-- Xóa đi các setting không phải là cấu hình 'config'
DELETE FROM `setting`
WHERE setting_id >=1 AND `code` <> 'config';

-- Xóa cột không cần thiết trong bảng `setting`
ALTER TABLE `setting`
	DROP `code`,
	DROP `store_id`,
	DROP `serialized`;

-- Xóa đi các khóa không cần thiết nữa trong bảng `setting`
DELETE FROM `setting`
WHERE setting_id >=1 AND `key` IN ('shipping_sort_order', 
'sub_total_sort_order',
'sub_total_status',
'tax_status',
'total_sort_order',
'total_status',
'tax_sort_order',
'free_checkout_sort_order',
'cod_sort_order',
'cod_total',
'cod_order_status_id',
'cod_geo_zone_id',
'cod_status',
'shipping_status',
'shipping_estimator',
'coupon_sort_order',
'coupon_status',
                
'config_geocode', 
'config_fax',
'config_meta_title',
'config_meta_description',
'config_meta_keyword',
'config_template',
'config_layout_id',
'config_country_id',
'config_zone_id',
'config_language',
'config_admin_language',
'config_currency',
'config_currency_auto',
'config_length_class_id',
'config_weight_class_id',
'config_review_status',
'config_review_guest',
'config_review_mail',
'config_voucher_min',
'config_voucher_max',
'config_tax',
'config_tax_default',
'config_tax_customer',
'config_customer_online',
'config_customer_group_id',
'config_customer_group_display',
'config_customer_price',
'config_account_id',
'config_account_mail',
'config_invoice_prefix',
'config_cart_weight',
'config_checkout_guest',
'config_checkout_id',
'config_order_status_id',
'config_processing_status',
'config_complete_status',
'config_stock_display',
'config_stock_warning',
'config_stock_checkout',
'config_affiliate_approval',
'config_affiliate_auto',
'config_affiliate_commission',
'config_affiliate_id',
'config_affiliate_mail',
'config_return_id',
'config_return_status_id',
'config_ftp_hostname',
'config_ftp_port',
'config_ftp_username',
'config_ftp_password',
'config_ftp_root',
'config_ftp_status',
'config_mail',
'config_mail_alert',
'config_fraud_detection',
'config_fraud_key',
'config_fraud_score',
'config_fraud_status_id',
'config_secure',
'config_shared',
'config_robots',
'config_seo_url',
'config_google_analytics',
'config_encryption',
'config_api_id');

