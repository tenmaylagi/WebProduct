-- Loại bỏ các bảng sau đây (bắt đầu từ C1710L Đội Cấn)
-- `banner`, `module`, `product_related`

-- Thay đổi khóa chính của bảng `banner_image`
-- PRIMARY KEY (`banner_id`)
-- thêm vào tính chất AUTO_INCREMENT


-- Bổ sung cột `status` cho bảng `banner_image`
--	ALTER TABLE `banner_image` ADD `status`    tinyint(1) NOT NULL DEFAULT '0';
-- bổ sung giá trị cho cột này

-- Bổ sung các cột thể hiện tính nổi bật và tính bán chạy của sản phẩm trong bảng `product` 
ALTER TABLE `product` ADD `best_seller` tinyint(1) NOT NULL DEFAULT '0';  
ALTER TABLE `product` ADD `featured`    tinyint(1) NOT NULL DEFAULT '0';  


-- Bổ sung cột `featured` cho bang `category` để thể hiện tính nổi bật
-- của loại sản phẩm trên trang home.php
ALTER TABLE `category` ADD `featured`    tinyint(1) NOT NULL DEFAULT '0';
 
-- Bổ sung cấu hình hệ thống trên bảng `setting`
INSERT INTO `setting` SET `key` = 'categories_featured_limit', `value`='3';	

-- Bổ sung cột `featured` cho bảng `manufacturer` để thể hiện tính nổi bật của nhà sản xuất
-- từ đó hiển thị trên carousel
ALTER TABLE `manufacturer` ADD `featured`    tinyint(1) NOT NULL DEFAULT '0';




