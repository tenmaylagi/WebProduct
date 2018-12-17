<section>
    <div class="header-modules">
        <div class="container">
            <div class="row">
                <div class="col-sm-12">
                    <script>
                        jQuery(function() {
                            jQuery('#camera_wrap_0').camera({
                                fx: 'stampede',
                                navigation: true,
                                playPause: false,
                                thumbnails: false,
                                navigationHover: false,
                                barPosition: 'top',
                                loader: false,
                                time: 3000,
                                transPeriod: 800,
                                alignment: 'center',
                                autoAdvance: true,
                                mobileAutoAdvance: true,
                                barDirection: 'leftToRight',
                                barPosition: 'bottom',
                                easing: 'easeInOutExpo',
                                fx: 'simpleFade',
                                height: '30.17%',
                                minHeight: '90px',
                                hover: true,
                                pagination: false,
                                loaderColor: '#1f1f1f',
                                loaderBgColor: 'transparent',
                                loaderOpacity: 1,
                                loaderPadding: 0,
                                loaderStroke: 3
                            });
                        });
                    </script>
                    <div class="fluid_container">
                            <div id="camera_wrap_0" class="camera_wrap" style="display: block; height: 353px;">

								<?php foreach (banner_imageActives() as $banner) { ?>
                                <div title="slide-no" data-src="<?php echo $banner['image']; ?>" 
                                     data-link="<?php echo $banner['link']; ?>" 
                                     data-thumb="<?php echo $banner['image']; ?>">
                                </div>
                                <?php } ?>
                            </div>
                            <div class="clear"></div>
                        </div>
                </div>
                <div class="clear"></div>
            </div>
        </div>
    </div>
    <div class="clear"></div>
    <div id="container">
        <p id="back-top" style="display: none;"> <a href="#top"><span></span></a> </p>
        <div class="container">
            <div id="notification"></div>
            <div class="row">
                <div class=" col-sm-12   " id="content">
                    <div id="banner0" class="banner row">
                    	<?php foreach (categoryFeatureds() as $category) { ?>
                    	<div class="col-sm-4">
                            <div>
                                <a href="<?php echo $category['href'];?>">
                                    <img src="<?php echo $category['thumb'];?>" alt="<?php echo $category['name'];?>" title="<?php echo $category['name'];?>">
                                    <div class="s-desc"><i class="fa fa-arrow-circle-o-right"></i>
                                        <h1><?php echo $category['name'];?></h1>
                                    </div>
                                </a>
                            </div>
                        </div>
						<?php } ?>
                        
                    </div>
                    <script type="text/javascript">
                        if ($('body').width() > 767) {
                            (function($) {
                                $.fn.equalHeights = function(minHeight, maxHeight) {
                                    tallest = (minHeight) ? minHeight : 0;
                                    this.each(function() {
                                        if ($(this).height() > tallest) {
                                            tallest = $(this).height()
                                        }
                                    });
                                    if ((maxHeight) && tallest > maxHeight) tallest = maxHeight;
                                    return this.each(function() {
                                        $(this).height(tallest)
                                    })
                                }
                            })(jQuery)
                            $(window).load(function() {
                                if ($(".maxheight-feat").length) {
                                    $(".maxheight-feat").equalHeights()
                                }
                            });
                        };
                    </script>
                    <div class="box featured">
                        <div class="box-heading">Sản Phẩm Nổi Bật</div>
                        <div class="box-content">
                            <div class="box-product">
                                <ul class="row">
                                <?php $i=0;?>
                                <?php foreach(productFeatureds() as $product ) {?>
                                <li class="<?php if($i%4==0) echo 'first-in-line'; elseif($i%4==3) echo 'last-in-line'; $i++;?> col-sm-3">
                                        <script type="text/javascript">
                                            $(document).ready(function() {
                                                $("a.colorbox<?php echo $product['product_id'];?>").colorbox({
                                                    rel: 'colorbox',
                                                    inline: true,
                                                    html: true,
                                                    width: '58%',
                                                    maxWidth: '780px',
                                                    height: '70%',
                                                    open: false,
                                                    returnFocus: false,
                                                    fixed: true,
                                                    title: false,
                                                    href: '.quick-view<?php echo $product['product_id'];?>',
                                                    current: 'Product {current} of {total} '
                                                });
                                            });
                                        </script>
                                        <div class="padding">
                                            <div class="product_image image2">
                                                <a href="<?php echo $product['href'];?>"><img id="img_<?php echo $product['product_id'];?>" src="<?php echo $product['thumb'];?>" alt="<?php echo $product['name'];?>"></a>
                                            </div>
                                            <div style="display:none;">
                                                <div class="quick-view<?php echo $product['product_id'];?> preview">
                                                    <div class="wrapper marg row">
                                                        <div class="left col-sm-4">
                                                            <div class="product_image image3">
                                                                <a href="<?php echo $product['href'];?>"><img src="<?php echo $product['thumb'];?>" alt="<?php echo $product['name'];?>"></a>
                                                            </div>
                                                        </div>
                                                        <div class="right col-sm-8">
                                                            <h2><?php echo $product['name'];?></h2>
                                                            <div class="inf">
                                                                <span class="product_manufacture manufacture">Thương Hiệu: <a href="<?php  echo $product['manufacturer_href']?>"><?php echo  $product['manufacturer'];?></a></span>
                                                                <span class="product_model model">Model:<?php echo $product['model'];?></span>
                                                                <span class="product_stock prod-stock-2">Tình Trạng Kho Hàng:</span>
                                                                <span class="product_stock prod-stock"><?php echo $product['availability'];?></span>
                                                                <div class="product_price price">
                                                                    <span class="text-price">Giá: </span> <?php echo $product['price'];?>
                                                                </div>
                                                            </div>
                                                            <div class="product_button cart-button">
                                                                <div class="cart">
                                                                    <a onclick="cart.add('<?php echo $product['product_id'];?>');" title="Add to cart" data-id="<?php echo $product['product_id'];?>;" class="button addToCart-1 ">

                                                                        <span>Thêm vào giỏ</span>
                                                                    </a>
                                                                </div>
                                                                <!-- 
                                                                <div class="wishlist_btn wishlist">
                                                                    <a class="tooltip-1" title="" onclick="addToWishList('34');" data-original-title="Add to Wish List">
                                                                        <i class="fa fa-heart"></i>
                                                                        <span>Add to Wish List</span>
                                                                    </a>
                                                                </div>
                                                                 -->
                                                                <div class="compare_btn compare">
                                                                    <a class="tooltip-1" title="" onclick="addToCompare('34');" data-original-title="So Sánh Sản Phẩm">
                                                                        <i class="fa fa-signal"></i>
                                                                        <span>So Sánh Sản Phẩm</span>
                                                                    </a>
                                                                </div>
                                                                
                                                                <span class="clear"></span>
                                                            </div>
                                                            <div class="clear"></div>
                                                            <div class="product_rating rating">
                                                                <img src="/ui/home/<?php echo $home_themes;?>/template_files/stars-5.png" alt="1" height="18">
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="product_description description">
                                                        <?php echo $product['description'];?>
                                                    </div>
                                                </div>
                                            </div>
                                            <a href="<?php echo $product['href'];?>" class="colorbox<?php echo $product['product_id'];?> quick-view-button cboxElement"><i class=" fa fa-search "></i></a>
                                            <div class="inner">
                                                <div class="f-left">
                                                    <div class="product_price price"><?php echo $product['price'];?></div>
                                                    <div class="product_name name maxheight-feat" style="height: 56px;"><a href="<?php echo $product['href'];?>"><?php echo $product['name'];?></a></div>
                                                </div>
                                                <div class="product_button cart-button">
                                                    <div class="cart">
                                                        <a onclick="cart.add('<?php echo $product['product_id'];?>');" title="Add to cart" data-id="34;" class="button addToCart">
                                                            <span><i class="fa fa-shopping-cart"></i>Thêm vào giỏ</span>
                                                        </a>
                                                    </div>
                                                    <div class="compare_btn compare">
                                                        <a class="tooltip-1" title="" onclick="addToCompare('34');" data-original-title="So Sánh Sản Phẩm">
                                                            <i class="fa fa-signal"></i>
                                                            <span>So Sánh Sản Phẩm</span>
                                                        </a>
                                                    </div>
                                                    <div class="wishlist_btn wishlist">
                                                        <a class="tooltip-1" title="" onclick="addToWishList('34');" data-original-title="Add to Wish List">
                                                            <i class="fa fa-heart"></i>
                                                            <span>Add to Wish List</span>
                                                        </a>
                                                    </div>
                                                    <span class="clear"></span>
                                                </div>
                                                <div class="clear"></div>
                                                <div class="product_rating rating">
                                                    <img src="/ui/home/<?php echo $home_themes;?>/template_files/stars-5.png" alt="1" height="13">
                                                </div>
                                            </div>
                                            <div class="clear"></div>
                                        </div>
                                    </li>
                                <?php }?>
                                </ul>
                            </div>
                            <div class="clear"></div>
                        </div>
                    </div>
                    <h1 style="display: none;">Cords&amp;Wires store</h1>
                </div>
                <div class="clear"></div>
            </div>
        </div>
    </div>
    <div class="clear"></div>
</section>