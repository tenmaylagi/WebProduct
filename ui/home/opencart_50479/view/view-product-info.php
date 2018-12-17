<section>
    <div id="container">
        <p id="back-top" style="display: none;"> <a href="#top"><span></span></a> </p>
        <div class="container">
            <div id="notification"></div>
            <div class="row">
                <div class="col-sm-9 col-sm-12   " id="content">
                    <div class="breadcrumb">
                        <a href="/home.php">Trang Chủ</a> » <a href="<?php echo $product_info['href'];?>" class="last"><?php echo $product_info['name'];?></a>
                    </div>
                    <div class="product-info">
                        <div class="row">
                            <div class="col-sm-4">
                                <h1 class="view"><?php echo $product_info['name'];?></h1>
                                <script type="text/javascript">
                                    jQuery(document).ready(function() {
                                        var myPhotoSwipe = $("#gallery a").photoSwipe({
                                            enableMouseWheel: false,
                                            enableKeyboard: false,
                                            captionAndToolbarAutoHideDelay: 0
                                        });
                                    });
                                </script>
                                <div id="full_gallery">
                                	<ul id="gallery">                                                    
										<?php foreach ($product_info['product_images'] as $image) { ?>
											<li>
												<a href="<?php echo $image['popup']; ?>" title="<?php echo $product_info['product_name']; ?>" data-something="something" data-another-thing="anotherthing"> 
													<img src="<?php echo $image['popup']; ?>" title="<?php echo $product_info['product_name']; ?>" alt="<?php echo $product_info['product_name']; ?>" />
												</a>
											</li>
										<?php } ?>                                                        
									</ul>
                                </div>
                                <div id="default_gallery" class="left spacing">
                                    <div class="image">
                                        <div style="height:270px;width:270px;" class="zoomWrapper">
                                         <img id="zoom_01" data-zoom-image="<?php echo $product_info['popup'];?>" src="<?php echo $product_info['thumb'];?>" title="<?php echo $product_info['name'];?>" alt="<?php echo $product_info['name'];?>" style="position: absolute;"></div>
                                    </div>
                                    <div class="image-additional">
                                    	<ul id="image-additional">                                                    
											<?php foreach ($product_info['product_images'] as $image) { ?>
												<li>
													<a href="#" data-image="<?php echo $image['popup']?>" data-zoom-image="<?php echo $image['popup']?>"> 
														<img src="<?php echo $image['popup']; ?>" title="<?php echo $product_info['product_name']; ?>" alt="<?php echo $product_info['product_name']; ?>" />
													</a>
												</li>
											<?php } ?>                                                        
										</ul>
                                        <div class="clear"></div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-8">
                                <h1><?php echo $product_info['product_name'];?></h1>
                                <div class="description">
                                    <div class="product-section">
                                        <span>Thương hiệu:</span> <a href="<?php  echo $product_info['manufacturer_href'];?>"><?php echo  $product_info['manufacturer'];?></a><br>
                                        <span>Model:&nbsp;</span><?php echo $product_info['model'];?><br>
                                        <!-- 
                                        <span>Tình trạng:</span>
                                        <div class="prod-stock"><?php echo $product_info['availability'];?></div>
                                        -->
                                    </div>
                                    <div class="price">
                                        <span class="text-price">Giá:</span>
                                        <span class="price-new"><?php echo $product_info['price'];?></span>
                                        <!-- 
                                        <span class="price-old">$96.00</span>
                                        <span class="price-tax">Ex Tax: $73.00</span>
                                         -->
                                    </div>
                                    <div class="cart">
                                        <div class="prod-row">
                                            <div class="cart-top">
                                                <div class="cart-top-padd form-inline">
                                                    <label>Số lượng: <input class="q-mini" name="quantity" value="1" type="text">
													<input class="q-mini" name="product_id" value="<?php echo $product_info['product_id'];?>" type="hidden">
</label>
                                                    <a id="button-cart" class="button-prod"><i class="fa fa-shopping-cart"></i>Thêm vào giỏ</a>
                                                </div>
                                                <!-- 
                                                <div class="extra-button">
                                                    <div class="wishlist">
                                                        <a onclick="addToWishList('31');" title="Add to Wish List"><i class="fa fa-heart"></i><span>Add to Wish List</span></a>
                                                    </div>
                                                    <div class="compare">
                                                        <a onclick="addToCompare('31');" title="So Sánh Sản Phẩm"><i class="fa fa-signal"></i><span>So Sánh Sản Phẩm</span></a>
                                                    </div>
                                                </div>
                                                 -->
                                                <div class="clear"></div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="clear"></div>
                                   <!-- 
                                    <div class="review">
                                        <div>
                                            <img src="catalog/view/theme/theme425/image/stars-5.png" alt="1 reviews">&nbsp;&nbsp;
                                            <div class="btn-rew">
                                                <a onclick="document.getElementById('tab-review').scrollIntoView();">1 reviews</a>
                                                <a onclick="document.getElementById('tab-review').scrollIntoView();"><i class="fa fa-pencil"></i>Write a review</a>
                                                <div class="clear"></div>
                                            </div>
                                        </div>
                                        <div class="clear"></div>
                                    </div>
                                    -->
                                    <div class="clear"></div>
                                    <div class="share">

                                        <span class="st_facebook_hcount" displaytext="Facebook"></span>
                                        <span class="st_twitter_hcount" displaytext="Tweet"></span>
                                        <span class="st_googleplus_hcount" displaytext="Google +"></span>
                                        <span class="st_pinterest_hcount" displaytext="Pinterest"></span>
                                        <script type="text/javascript" src="https://w.sharethis.com/button/buttons.js"></script>
                                        <script type="text/javascript">
                                            stLight.options({
                                                publisher: "00fa5650-86c7-427f-b3c6-dfae37250d99",
                                                doNotHash: false,
                                                doNotCopy: false,
                                                hashAddressBar: false
                                            });
                                        </script>

                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="tabs">
                            <div class="tab-heading">Mô Tả</div>
                            <div class="tab-content">
                                <?php echo $product_info['description'];?>
                            </div>
                        </div>
                        <!-- 
                        <div class="tabs" id="tab-review">
                            <div class="tab-heading">
                                Reviews (1) </div>
                            <div class="tab-content">
                                <div id="review">
                                    <div class="content"><b>Demo</b> | <img src="catalog/view/theme/theme425/image/stars-5.png" alt="1 reviews"><br> 21/06/2014
                                        <br>
                                        <br> Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam malesuada libero vel tincidunt hendrerit. Donec condimentum, augue a hendrerit iaculis, turpis felis egestas nibh, et elementum enim arcu quis enim. Donec non imperdiet arcu. Sed pharetra iaculis elit, in scelerisque lectus eleifend id.</div>
                                    <div class="pagination">
                                        <div class="results">Showing 1 to 1 of 1 (1 Pages)</div>
                                    </div>
                                </div>
                                <h2 id="review-title">Write a review</h2>
                                <label>Your Name:</label>
                                <input name="name" value="" type="text">
                                <br>
                                <br>
                                <label>Your Review:</label>
                                <textarea name="text" cols="40" rows="8" style="width: 93%;"></textarea>
                                <div class="clear"></div>
                                <span style="font-size: 11px;"><span style="color: #FF0000;">Note:</span> HTML is not translated!</span><br>
                                <br>
                                <label class="inline">Rating:</label>
                                <div class="form-inline border">
                                    <span class="radio">Bad</span>&nbsp;
                                    <input name="rating" value="1" type="radio"> &nbsp;
                                    <input name="rating" value="2" type="radio"> &nbsp;
                                    <input name="rating" value="3" type="radio"> &nbsp;
                                    <input name="rating" value="4" type="radio"> &nbsp;
                                    <input name="rating" value="5" type="radio"> &nbsp; <span class="radio">Good</span><br>
                                </div>
                                <label>Enter the code in the box below:</label>
                                <input name="captcha" value="" type="text">
                                <img src="index.php?route=product/product/captcha" alt="" id="captcha">
                                <br>
                                <div class="buttons">
                                    <div><a id="button-review" class="button-cont-right">Continue<i class="fa fa-arrow-circle-right"></i></a></div>
                                </div>
                            </div>
                        </div>
                         -->
                    </div>
                    <h1 class="style-1 mt0">Sản Phẩm Nổi Bật</h1>
                    <div class="related">
                        <div class="box-product">
                                    <ul class="related-slider" style="width: 215%; position: relative; transition-duration: 0s; transform: translate3d(0px, 0px, 0px);">
                                        <?php foreach (productFeatureds() as $product) {?>
                                        <li class="related-info" style="float: left; list-style: outside none none; position: relative; width: 170px; margin-right: 30px;">
                                            <div class="image">
                                                <a href="<?php echo $product_info['href'];?>"><img id="img_43" src="<?php echo $product['thumb'];?>" alt="<?php echo $product_info['name'];?>"></a>
                                            </div>
                                            <div class="name"><a href="<?php echo $product_info['href'];?>"><?php echo $product_info['name'];?></a></div>
                                            <div class="price">
                                                <span class="price-new"><?php echo $product['price']?></span>
                                                <!-- <span class="price-old">$589.50</span> -->
                                            </div>
                                            <div class="cart-button">
                                                <div class="cart">
                                                    <a title="Thêm vào giỏ" onclick="cart.add('<?php echo $product['product_id'];?>');" class="button ">
                                                        <span>Thêm vào giỏ</span>
                                                    </a>
                                                </div>
                                                <div class="wishlist"><a class="tooltip-2" title="" onclick="addToWishList('43');" data-original-title="Add to Wish List"><i class="fa fa-heart"></i><span>Add to Wish List</span></a></div>
                                                <div class="compare"><a class="tooltip-2" title="" onclick="compare.add('<?php echo $product['product_id']?>');" data-original-title="So Sánh Sản Phẩm"><i class="fa fa-signal"></i><span>So Sánh Sản Phẩm</span></a></div>
                                                <span class="clear"></span>
                                            </div>
                                            <div class="rating">
                                            </div>
                                        </li>
                                        <?php }?>
                                    </ul>
                        </div>
                    </div>
                </div>
                <aside class="col-sm-3" id="column-right">
                    <div class="box info" id="compare" style="display: none;">
                        <div class="box-heading">Product Comparison</div>
                        <div class="box-content">
                            <div class="product-compare"><a class="button" href="https://livedemo00.template-help.com/opencart_50479/index.php?route=product/compare"><span>Product Compare</span></a></div>
                        </div>
                    </div>
                    <script type="text/javascript">
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
                            if ($(".maxheight-best").length) {
                                $(".maxheight-best").equalHeights()
                            }
                        })
                    </script>
                    <div class="box bestsellers">
                        <!-- <div class="box-heading">Bestsellers</div> -->
                        <div class="box-heading">Sản Phẩm Bán Chạy</div>
                        <div class="box-content">
                            <div class="box-product">
                                <ul class="row">
                                    <?php foreach(productBestSellers() as $bs_product) {?>
                                    <li class="first-in-line last_line col-sm-3">
                                        <div class="padding">
                                            <div class="product_image image2">
                                                <a href="<?php echo $bs_product['href'];?>"><img id="img_43" src="<?php echo $bs_product['thumb'];?>" alt="<?php echo $bs_product['name'];?>"></a>
                                            </div>
                                            <div class="inner">
                                                <div class="f-left">
                                                    <div class="product_price price">
                                                        <span class="price-new"><?php echo $bs_product['price'];?></span>
                                                        <!-- <span class="price-old">$589.50</span> -->
                                                    </div>
                                                    <div class="product_name name maxheight-best" style="height: 19px;"><a href="<?php echo $bs_product['href'];?>"><?php echo $bs_product['name'];?></a></div>
                                                </div>
                                                <div class="product_buton cart-button">
                                                    <div class="cart">
                                                        <a onclick="cart.add('<?php echo $bs_product['product_id'];?>');" title="Add to Cart" data-id="<?php echo $bs_product['product_id'];?>;" class="button addToCart">
                                                            <span><i class="fa fa-shopping-cart"></i>Thêm vào giỏ</span>
                                                        </a>
                                                    </div>
                                                    <div class="compare_btn compare">
                                                        <a class="tooltip-1" title="" onclick="compare.add('<?php echo $bs_product['product_id']?>');" data-original-title="So Sánh Sản Phẩm">
                                                            <i class="fa fa-signal"></i>
                                                            <span>So Sánh Sản Phẩm</span>
                                                        </a>
                                                    </div>
                                                    <div class="wishlist_btn wishlist">
                                                        <a class="tooltip-1" title="" onclick="addToWishList('43');" data-original-title="Add to wishlist">
                                                            <i class="fa fa-heart"></i>
                                                            <span>Add to wishlist</span>
                                                        </a>
                                                    </div>
                                                    <span class="clear"></span>
                                                </div>
                                                <div class="clear"></div>
                                                <div class="rating">
                                                </div>
                                            </div>
                                            <div class="clear"></div>
                                        </div>
                                    </li>
                                    <?php }?>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <script type="text/javascript">
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
                            if ($(".maxheight").length) {
                                $(".maxheight").equalHeights()
                            }
                        })
                    </script>
                    <!-- 
                    <div class="box new-products">
                        <div class="box-heading">Latest</div>
                        <div class="box-content">
                            <div class="box-product">
                                <ul class="row">
                                    <li class="first-in-line last_line col-sm-3">
                                        <div class="padding">
                                            <div class="product_image image2">
                                                <a href="https://livedemo00.template-help.com/opencart_50479/index.php?route=product/product&amp;product_id=49"><img src="https://livedemo00.template-help.com/opencart_50479/image/cache/data/product-52-180x180.png" alt="Sint occaecat cupidatat non proident, sunt in culpa qui  dolore"></a>
                                            </div>
                                            <div class="inner">
                                                <div class="f-left">
                                                    <div class="product_price price">
                                                        <span class="price-new">$225.25</span><span class="price-old">$236.99</span>
                                                    </div>
                                                    <div class="product_name name maxheight" style="height: 37px;"><a href="https://livedemo00.template-help.com/opencart_50479/index.php?route=product/product&amp;product_id=49">Sint occaecat cupidatat non proident, sunt in culpa qui dolore</a></div>
                                                </div>
                                                <div class="product_buton cart-button">
                                                    <div class="cart">
                                                        <a title="Add to Cart" data-id="49;" class="button addToCart">
                                                            <span><i class="fa fa-shopping-cart"></i>Add to Cart</span>
                                                        </a>
                                                    </div>
                                                    <div class="compare_btn compare">
                                                        <a class="tooltip-1" title="" onclick="addToCompare('49');" data-original-title="So Sánh Sản Phẩm">
                                                            <i class="fa fa-signal"></i>
                                                            <span>So Sánh Sản Phẩm</span>
                                                        </a>
                                                    </div>
                                                    <div class="wishlist_btn wishlist">
                                                        <a class="tooltip-1" title="" onclick="addToWishList('49');" data-original-title="Add to wishlist">
                                                            <i class="fa fa-heart"></i>
                                                            <span>Add to wishlist</span>
                                                        </a>
                                                    </div>
                                                    <span class="clear"></span>
                                                </div>
                                                <div class="clear"></div>
                                                <div class="product_rating rating">
                                                    <img src="catalog/view/theme/theme425/image/stars-5.png" alt="Based on 1 reviews." height="13">
                                                </div>
                                            </div>
                                            <div class="clear"></div>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                     -->
                </aside>
                <script type="text/javascript">
                    <!--
                    $(document).ready(function() {
                        $('.colorbox').colorbox({
                            overlayClose: true,
                            opacity: 0.5,
                            rel: "colorbox"
                        });
                    });
                    //-->
                </script>
                <script type="text/javascript">
                    <!--

                    $('select[name="profile_id"], input[name="quantity"]').change(function() {
                        $.ajax({
                            url: 'index.php?route=product/product/getRecurringDescription',
                            type: 'post',
                            data: $('input[name="product_id"], input[name="quantity"], select[name="profile_id"]'),
                            dataType: 'json',
                            beforeSend: function() {
                                $('#profile-description').html('');
                            },
                            success: function(json) {
                                $('.success, .warning, .attention, information, .error').remove();

                                if (json['success']) {
                                    $('#profile-description').html(json['success']);
                                }
                            }
                        });
                    });

                    $('#button-cart').bind('click', function() {
                        $.ajax({
                            //url: 'index.php?route=checkout/cart/add',
                            url: '/cart-add.php',
                            type: 'post',
                            data: $('.product-info input[type=\'text\'], .product-info input[type=\'hidden\'], .product-info input[type=\'radio\']:checked, .product-info input[type=\'checkbox\']:checked, .product-info select, .product-info textarea'),
                            dataType: 'json',
                            success: function(json) {
                                $('.success, .warning, .attention, information, .error').remove();

                                if (json['error']) {
                                    if (json['error']['option']) {
                                        for (i in json['error']['option']) {
                                            $('#option-' + i).after('<span class="error">' + json['error']['option'][i] + '</span>');
                                        }
                                    }
                                    if (json['error']['profile']) {
                                        $('select[name="profile_id"]').after('<span class="error">' + json['error']['profile'] + '</span>');
                                    }
                                }

                                if (json['success']) {
                                    $('#notification').html('<div class="success" style="display: none;">' + json['success'] + '<span><i class="fa fa-times-circle"></i></span></div>');

                                    $('.success').fadeIn('slow');

                                    $('#cart-total').html(json['total']);
                                    $('#cart-total2').html(json['total']);
                                    
                                    //$('#cart').load('index.php?route=module/cart #cart > *');
                                    // tải lại nội dung html của giỏ hàng bằng (ajax load) lấy từ nguồn: /common/cart-info.php
									// chỉ lấy phần nội dung bên trong phần tử html có id="cart" 
									// sau đó đắp phần html đó vào bên trong phần tử id="cart" của trang hiện tại.
									var urlCartInfo = $('#urlCartAjax').attr('href');
									$('#cart').load(urlCartInfo+' #cart > *');
                                    
                                    $('html, body').animate({
                                        scrollTop: 0
                                    }, 'slow');
                                }
                                setTimeout(function() {
                                    $('.success').fadeOut(1000)
                                }, 3000)
                            }
                        });
                    });
                    //-->
                </script>
                <script type="text/javascript">
                    <!--
                    $('#review .pagination a').live('click', function() {
                        $('#review').fadeOut('slow');

                        $('#review').load(this.href);

                        $('#review').fadeIn('slow');

                        return false;
                    });

                    $('#review').load('index.php?route=product/product/review&product_id=31');

                    $('#button-review').bind('click', function() {
                        $.ajax({
                            url: 'index.php?route=product/product/write&product_id=31',
                            type: 'post',
                            dataType: 'json',
                            data: 'name=' + encodeURIComponent($('input[name=\'name\']').val()) + '&text=' + encodeURIComponent($('textarea[name=\'text\']').val()) + '&rating=' + encodeURIComponent($('input[name=\'rating\']:checked').val() ? $('input[name=\'rating\']:checked').val() : '') + '&captcha=' + encodeURIComponent($('input[name=\'captcha\']').val()),
                            beforeSend: function() {
                                $('.success, .warning').remove();
                                $('#button-review').attr('disabled', true);
                                $('#review-title').after('<div class="attention"><img src="catalog/view/theme/theme425/image/loading.gif" alt="" /> Please Wait!</div>');
                            },
                            complete: function() {
                                $('#button-review').attr('disabled', false);
                                $('.attention').remove();
                            },
                            success: function(data) {
                                if (data['error']) {
                                    $('#review-title').after('<div class="warning">' + data['error'] + '</div>');
                                }

                                if (data['success']) {
                                    $('#review-title').after('<div class="success">' + data['success'] + '</div>');

                                    $('input[name=\'name\']').val('');
                                    $('textarea[name=\'text\']').val('');
                                    $('input[name=\'rating\']:checked').attr('checked', '');
                                    $('input[name=\'captcha\']').val('');
                                }
                            }
                        });
                    });
                    //-->
                </script>
                <script type="text/javascript">
                    <!--
                    $('#tabs a').tabs();
                    //-->
                </script>
                <script type="text/javascript" src="catalog/view/javascript/jquery/ui/jquery-ui-timepicker-addon.js"></script>
                <script type="text/javascript">
                    <!--
                    $(document).ready(function() {
                        if ($.browser.msie && $.browser.version == 6) {
                            $('.date, .datetime, .time').bgIframe();
                        }

                        $('.date').datepicker({
                            dateFormat: 'yy-mm-dd'
                        });
                        $('.datetime').datetimepicker({
                            dateFormat: 'yy-mm-dd',
                            timeFormat: 'h:m'
                        });
                        $('.time').timepicker({
                            timeFormat: 'h:m'
                        });
                    });
                    //-->
                </script>
                <div class="clear"></div>
            </div>
        </div>
    </div>
    <div class="clear"></div>
</section>