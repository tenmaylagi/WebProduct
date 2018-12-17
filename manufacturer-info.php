<?php
/**
 * Copyright Le Minh Hoa
 *
 * Trang thông tin nhà sản xuất
 */
// Cấu hình hệ thống
include_once 'configs.php';

// Thư viện hàm
include_once 'lib/table/table.manufacturer.php';
include_once 'lib/table/table.product.php';
include_once 'lib/tool.image.php';

if (isset($_GET['manufacturer_id'])) 
{
	$manufacturer_id = (int)$_GET['manufacturer_id'];
} 
else 
{
	$manufacturer_id = 0;
}

if (isset($_GET['sort'])) 
{
	$sort = $_GET['sort'];
} 
else 
{
	$sort = 'p.sort_order';
}

if (isset($_GET['order'])) 
{
	$order = $_GET['order'];
} 
else 
{
	$order = 'ASC';
}

if (isset($_GET['page'])) 
{
	$page = $_GET['page'];
} 
else 
{
	$page = 1;
}

if (isset($_GET['limit'])) 
{
	$limit = $_GET['limit'];
} 
else 
{
	$limit = settings('config_product_limit');
}

$manufacturer_info = manufacturerGetById($manufacturer_id);

$url = '';

if (isset($_GET['sort'])) 
{
	$url .= '&sort=' . $_GET['sort'];
}

if (isset($_GET['order'])) 
{
	$url .= '&order=' . $_GET['order'];
}

if (isset($_GET['page'])) 
{
	$url .= '&page=' . $_GET['page'];
}

if (isset($_GET['limit'])) 
{
	$url .= '&limit=' . $_GET['limit'];
}

$breadcrumbs[] = array(
	'text' => $manufacturer_info['name'],
	'href' => '/manufacturer-info.php?manufacturer_id=' . $_GET['manufacturer_id'] . $url
);
			
$manufacturer_name = $manufacturer_info['name'];
$manufacturer_href = "/manufacturer-info.php?manufacturer_id=" . $_GET['manufacturer_id'] . $url;
$text_compare = sprintf("So sánh sản phẩm (%s)", (isset($_SESSION['compare']) ? count($_SESSION['compare']) : 0));

// @todo: đổi thành hàm productsByManufacturer()
$manu_products = array();

$filter_data = array(
	'filter_manufacturer_id' => $manufacturer_id,
	'sort'                   => $sort,
	'order'                  => $order,
	'start'                  => ($page - 1) * $limit,
	'limit'                  => $limit
);

$product_total = productGetTotalForManufacturer($filter_data);

$results = productGetAllForManufacturer($filter_data);

foreach ($results as $result) 
{
	//if ($result['image']) 
	if (is_file(DIR_IMAGE . $result['image']))
	{
		$image = img_resize($result['image'], settings('config_image_product_width'), settings('config_image_product_height'));
	} 
	else 
	{
		$image = img_resize('placeholder.png', settings('config_image_product_width'), settings('config_image_product_height'));
	}

	$price = $price = number_format($result['price'],0,'.',',').' ₫';

	$manu_products[] = array(
		'product_id'  => $result['product_id'],
		'thumb'       => $image,
		'name'        => $result['name'],
		'description' => utf8_substr(strip_tags(html_entity_decode($result['description'], ENT_QUOTES, 'UTF-8')), 0, settings('config_product_description_length')) . '..',
		'price'       => $price,
		'href'        => "/product-info.php?product_id={$result['product_id']}&manufacturer_id={$result['manufacturer_id']}".$url
	);
}

$url = '';

if (isset($_GET['limit'])) 
{
	$url .= '&limit=' . $_GET['limit'];
}

//$manu_sorts = array();
$manu_sorts = array();

$manu_sorts[] = array(
	'text'  => "Mặc định",
	'value' => 'p.sort_order-ASC',
	'href'  => '/manufacturer-info.php?manufacturer_id=' . $_GET['manufacturer_id'] . '&sort=p.sort_order&order=ASC' . $url
);

$manu_sorts[] = array(
	'text'  => "Tên (A - Z)",
	'value' => 'p.name-ASC',
	'href'  => '/manufacturer-info.php?manufacturer_id=' . $_GET['manufacturer_id'] . '&sort=p.name&order=ASC' . $url
);

$manu_sorts[] = array(
	'text'  => "Tên (Z - A)",
	'value' => 'p.name-DESC',
	'href'  => '/manufacturer-info.php?manufacturer_id=' . $_GET['manufacturer_id'] . '&sort=p.name&order=DESC' . $url
);

$manu_sorts[] = array(
	'text'  => "Giá (Thấp &gt; Cao)",
	'value' => 'p.price-ASC',
	'href'  => '/manufacturer-info.php?manufacturer_id=' . $_GET['manufacturer_id'] . '&sort=p.price&order=ASC' . $url
);

$manu_sorts[] = array(
	'text'  => "Giá (Cao &gt; Thấp)",
	'value' => 'p.price-DESC',
	'href'  => '/manufacturer-info.php?manufacturer_id=' . $_GET['manufacturer_id'] . '&sort=p.price&order=DESC' . $url
);

$manu_sorts[] = array(
	'text'  => "Model (A - Z)",
	'value' => 'p.model-ASC',
	'href'  => '/manufacturer-info.php?manufacturer_id=' . $_GET['manufacturer_id'] . '&sort=p.model&order=ASC' . $url
);

$manu_sorts[] = array(
	'text'  => "Model (Z - A)",
	'value' => 'p.model-DESC',
	'href'  => '/manufacturer-info.php?manufacturer_id=' . $_GET['manufacturer_id'] . '&sort=p.model&order=DESC' . $url
);

$url = '';

if (isset($_GET['sort'])) 
{
	$url .= '&sort=' . $_GET['sort'];
}

if (isset($_GET['order'])) 
{
	$url .= '&order=' . $_GET['order'];
}

$manu_limits = array();

//$_limits = array_unique(array(settings('config_product_limit'), 25, 50, 75, 100));
$_limits = array_unique(array(5, 10, 15, 20, 25, 30, 35, 40));

sort($_limits);

foreach($_limits as $value) 
{
	$manu_limits[] = array(
		'text'  => $value,
		'value' => $value,
		'href'  => '/manufacturer-info.php?manufacturer_id=' . $_GET['manufacturer_id'] . $url . '&limit=' . $value
	);
}

$url = '/manufacturer-info.php?manufacturer_id=' . $_GET['manufacturer_id'];

if (isset($_GET['sort'])) 
{
	$url .= '&sort=' . $_GET['sort'];
}

if (isset($_GET['order'])) 
{
	$url .= '&order=' . $_GET['order'];
}

if (isset($_GET['limit'])) 
{
	$url .= '&limit=' . $_GET['limit'];
}
			
paginate($product_total, $page,$limit, $url);

// Nội dung riêng của trang...
$web_title = "Hãng Sản Xuất";
$web_content = "view/view-manufacturer-info.php";

// ...được đặt vào bố cục chung của toàn site:
include_once $web_layout;	

