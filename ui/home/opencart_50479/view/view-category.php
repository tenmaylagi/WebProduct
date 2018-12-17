<section>
    <div id="container">
        <p id="back-top" style="display: none;"> <a href="#top"><span></span></a> </p>
        <div class="container">
            <div id="notification"></div>
            <div class="row">
                <div class="col-sm-9 col-sm-12   " id="content">
                    <div class="breadcrumb">
                        <a href="/home.php">Trang Chủ</a> » <a href="<?php echo $category_href;?>" class="last"><?php echo $category_name;?></a>
                    </div>
                    <h1 class="style-1"><?php echo $category_name;?></h1>
                    <div class="category-info">
					<?php if ($category_thumb || $category_description) { ?>
							      <div class="row">
							        <?php if ($category_thumb) { ?>
							        <div class="col-sm-2"><img src="<?php echo $category_thumb; ?>" alt="<?php echo $category_name; ?>" title="<?php echo $category_name; ?>" class="img-thumbnail" /></div>
							        <?php } ?>
							        <?php if ($category_description) { ?>
							        <div class="col-sm-10"><?php echo $category_description; ?></div>
							        <?php } ?>
							      </div>
					<?php } ?>
                    </div>
                    <div class="product-filter">
                        <div class="sort"><b>Xếp theo:</b>
                            <select onchange="location = this.value;">
                            <?php foreach ($product_sorts as $sorts) { ?>
							            <?php if ($sorts['value'] == $sort . '-' . $order) { ?>
							            <option value="<?php echo $sorts['href']; ?>" selected="selected"><?php echo $sorts['text']; ?></option>
							            <?php } else { ?>
							            <option value="<?php echo $sorts['href']; ?>"><?php echo $sorts['text']; ?></option>
							            <?php } ?>
							<?php } ?>
                            </select>
                        </div>
                        <div class="limit"><b>Hiện:</b>
                            <select onchange="location = this.value;">
                                <?php foreach ($limits as $limits) { ?>
						            <?php if ($limits['value'] == $limit) { ?>
						            <option value="<?php echo $limits['href']; ?>" selected="selected"><?php echo $limits['text']; ?></option>
						            <?php } else { ?>
						            <option value="<?php echo $limits['href']; ?>"><?php echo $limits['text']; ?></option>
						            <?php } ?>
						        <?php } ?>
                            </select>
                        </div>
                        <div class="product-compare">
                        	<a href="#" id="compare-total"></a>
                        </div>
                        <div class="display"><b>Display:</b> <a id="list_a" onclick="display('list');"><i class="fa fa-list"></i></a>
                            <div id="grid_b"><i class="fa fa-th"></i>
                            </div>
                        </div>
                    </div>
                    <div class="product-grid">
                        <ul class="row">
                        <?php $i = 0;?>
                        <?php foreach ($productsByCategory as $product) {?>
                            <li class="col-sm-4 <?php if($i%3==0) echo 'first-in-line'; elseif($i%3==2) echo 'last-in-line';$i++?>">
                                <div class="padding">
                                    <div class="image">
                                        <a href="<?php echo $product['href'];?>"><img id="img_43" src="<?php echo $product['thumb'];?>" title="<?php echo $product['name'];?>" alt="<?php echo $product['name'];?>">
                                        </a>
                                    </div>
                                    <div class="left">
                                        <div class="name"><a href="<?php echo $product['href'];?>"><?php echo $product['name'];?></a>
                                        </div>
                                        <div class="price">
                                            
                                            <span class="price-new">Giá: <?php echo $product['price'];?></span>
                                            <!-- 
                                            <span class="price-tax">Giá: <?php echo $product['price'];?></span>
                                            <span class="price-old">$589.50</span>
                                             -->
                                        </div>
                                        <div class="description"><?php echo $product['description'];?></div>
                                        <div class="cart-button">
                                            <div class="cart">
                                                <a onclick="cart.add('<?php echo $product['product_id'];?>');" class="button" title=""> <span>Thêm vào giỏ</span>
                                                </a>
                                            </div>
                                            <div class="wishlist"><a class="tooltip-1 " title="" onclick="addToWishList('43');" data-original-title="Add to Wish List"><i class="fa fa-heart"></i></a>
                                            </div>
                                            <div class="compare"><a class="tooltip-1" title="" onclick="compare.add('<?php echo $product['product_id']?>');" data-original-title="So Sánh Sản Phẩm"><i class="fa fa-signal"></i></a>
                                            </div>
                                            <div class="clear"></div>
                                        </div>
                                    </div>
                                </div>
                            </li>
                          <?php }?>  
                        </ul>
                    </div>
                    <!-- 
                    <div class="pagination">
                        <div class="links"> <b>1</b> <a href="https://livedemo00.template-help.com/opencart_50479/index.php?route=product/category&amp;path=20&amp;page=2">2</a> <a href="https://livedemo00.template-help.com/opencart_50479/index.php?route=product/category&amp;path=20&amp;page=3">3</a> <a href="https://livedemo00.template-help.com/opencart_50479/index.php?route=product/category&amp;path=20&amp;page=2">&gt;</a> <a href="https://livedemo00.template-help.com/opencart_50479/index.php?route=product/category&amp;path=20&amp;page=3">&gt;|</a> </div>
                        <div class="results">Showing 1 to 6 of 13 (3 Pages)</div>
                    </div>
                     -->
                     <div class="pagination">
                        <div class="col-sm-6 text-left"><?php echo $web_pagination_controls; ?></div>
          				<div class="col-sm-6 text-right"><?php echo $web_pagination_results; ?></div>
                    </div>
                </div>
                <aside class="col-sm-3" id="column-right">
                    <div class="box info" id="compare" style="display: none;">
                        <div class="box-heading">Product Comparison</div>
                        <div class="box-content">
                            <div class="product-compare"><a class="button" href="https://livedemo00.template-help.com/opencart_50479/index.php?route=product/compare"><span>Product Compare</span></a>
                            </div>
                        </div>
                    </div>
                    <script type="text/javascript">
                        $(function() {
                            $('.info-list li').last().addClass('last');
                        });
                    </script>
                    <div class="box info">
                         <?php include_once "view-account-box.php";?>
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
                        <div class="box-heading">Sản Phẩm Bán Chạy</div>
                        <div class="box-content">
                            <div class="box-product">
                                <ul class="row">
                                <?php foreach(productGetByModule('best_seller') as $product){?>
                                <li class="first-in-line last_line col-sm-3">
                                        <div class="padding">
                                            <div class="product_image image2">
                                                <a href="<?php echo $product['href'];?>"><img id="img_<?php echo $product['product_id'];?>" src="<?php echo $product['thumb'];?>" alt="<?php echo $product['name'];?>">
                                                </a>
                                            </div>
                                            <div class="inner">
                                                <div class="f-left">
                                                    <div class="product_price price">
                                                        <span class="price-new"><?php echo $product['price'];?></span>
                                                        <span class="price-old"></span>
                                                    </div>
                                                    <div class="product_name name maxheight-best" style="height: 19px;"><a href="<?php echo $product['href'];?>"><?php echo $product['name'];?></a>
                                                    </div>
                                                </div>
                                                <div class="product_buton cart-button">
                                                    <div class="cart">
                                                        <a onclick="cart.add('<?php echo $product['product_id'];?>');" title="" data-id="<?php echo $product['product_id'];?>;" class="button addToCart">
                                                            <span><i class="fa fa-shopping-cart"></i>Thêm vào giỏ</span>
                                                        </a>
                                                    </div>
                                                    <div class="compare_btn compare">
                                                        <a class="tooltip-1" title="" onclick="compare.add('<?php echo $product['product_id']?>');" data-original-title="So Sánh Sản Phẩm">
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
                                                <a href="https://livedemo00.template-help.com/opencart_50479/index.php?route=product/product&amp;product_id=49"><img src="https://livedemo00.template-help.com/opencart_50479/image/cache/data/product-52-180x180.png" alt="Sint occaecat cupidatat non proident, sunt in culpa qui  dolore">
                                                </a>
                                            </div>
                                            <div class="inner">
                                                <div class="f-left">
                                                    <div class="product_price price">
                                                        <span class="price-new">$225.25</span><span class="price-old">$236.99</span>
                                                    </div>
                                                    <div class="product_name name maxheight" style="height: 37px;"><a href="https://livedemo00.template-help.com/opencart_50479/index.php?route=product/product&amp;product_id=49">Sint occaecat cupidatat non proident, sunt in culpa qui dolore</a>
                                                    </div>
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
                                if ($(".maxheight-spec").length) {
                                    $(".maxheight-spec").equalHeights()
                                }
                            });
                        };
                    </script>
                    <!-- 
                    <div class="box specials">
                        <div class="box-heading special-heading">Specials</div>
                        <div class="box-content">
                            <div class="box-product">
                                <ul class="row">
                                    <li class="first-in-line last_line col-sm-3">
                                        <div class="padding">
                                            <div class="product_image image2">
                                                <a href="https://livedemo00.template-help.com/opencart_50479/index.php?route=product/product&amp;product_id=43"><img id="img_43" src="https://livedemo00.template-help.com/opencart_50479/image/cache/data/product-01-200x200.png" alt="<?php echo $product['name'];?>">
                                                </a>
                                            </div>
                                            <div class="inner">
                                                <div class="f-left">
                                                    <div class="product_price price">
                                                        <span class="price-new">$588.33</span><span class="price-old">$589.50</span>
                                                    </div>
                                                    <div class="product_name name maxheight-spec" style="height: 19px;"><a href="https://livedemo00.template-help.com/opencart_50479/index.php?route=product/product&amp;product_id=43"><?php echo $product['name'];?></a>
                                                    </div>
                                                </div>
                                                <div class="product_button cart-button">
                                                    <div class="cart">
                                                        <a title="Add to cart" data-id="43;" class="button addToCart">
                                                            <span><i class="fa fa-shopping-cart"></i>Add to cart</span>
                                                        </a>
                                                    </div>
                                                    <div class="compare_btn compare">
                                                        <a class="tooltip-1" title="" onclick="compare.add('<?php echo $product['product_id']?>');" data-original-title="So Sánh Sản Phẩm">
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
                    function display(view) {
                        if (view == 'list') {
                            $('.product-grid ').attr('class', 'product-list');
                            $('.product-list ul').removeClass('row');
                            $('.product-list ul li').removeClass('col-sm-4');
                            $('.product-list ul li').each(function(index, element) {
                                html = '';
                                html += '<div class="row">';
                                var image = $(element).find('.image').html();

                                if (image != null) {
                                    html += '<div class="image col-sm-3">' + image + '</div>';
                                }
                                html += '<div class="left col-sm-9">';
                                html += '<div class="name">' + $(element).find('.name').html() + '</div>';
                                html += '<div class="description">' + $(element).find('.description').html() + '</div>';
                                var price = $(element).find('.price').html();
                                if (price != null) {
                                    html += '<div class="price">' + price + '</div>';
                                }
                                html += '<div class="cart-button">';
                                html += '<div class="cart">' + $(element).find('.cart').html() + '</div>';
                                html += '<div class="wishlist">' + $(element).find('.wishlist').html() + '</div>';
                                html += '<div class="compare">' + $(element).find('.compare').html() + '</div>';
                                html += '<div class="clear">' + $(element).find('.clear').html() + '</div>';
                                html += '</div>';
                                var rating = $(element).find('.rating').html();
                                if (rating != null) {
                                    html += '<div class="rating">' + rating + '</div>';
                                }
                                html += '</div>';
                                html += '</div>';



                                $(element).html(html);
                            });

                            $('.display').html('<b>Display:</b> <div id="list_b"><i class="fa fa-list"></i></div> <a id="grid_a" onclick="display(\'grid\');"><i class="fa fa-th"></i></a>');

                            $.totalStorage('display', 'list');
                        } else {
                            $('.product-list').attr('class', 'product-grid');
                            $('.product-grid ul').addClass('row');
                            $('.product-grid ul li').addClass('col-sm-4');
                            $('.product-grid ul li').each(function(index, element) {
                                html = '';

                                var image = $(element).find('.image').html();

                                if (image != null) {
                                    html += '<div class="padding">';
                                    html += '<div class="image">' + image + '</div>';
                                }
                                html += '<div class="left">';




                                html += '<div class="name">' + $(element).find('.name').html() + '</div>';
                                var price = $(element).find('.price').html();

                                if (price != null) {
                                    html += '<div class="price">' + price + '</div>';
                                }
                                html += '<div class="description">' + $(element).find('.description').html() + '</div>';


                                html += '<div class="cart-button">';
                                html += '<div class="cart">' + $(element).find('.cart').html() + '</div>';
                                html += '<div class="wishlist">' + $(element).find('.wishlist').html() + '</div>';
                                html += '<div class="compare">' + $(element).find('.compare').html() + '</div>';
                                html += '<div class="clear">' + $(element).find('.clear').html() + '</div>';
                                html += '</div>';
                                var rating = $(element).find('.rating').html();

                                if (rating != null) {
                                    html += '<div class="rating">' + rating + '</div>';
                                }

                                html += '</div></div>';
                                $(element).html(html);
                            });

                            $('.display').html('<b>Display:</b> <a id="list_a" onclick="display(\'list\');"><i class="fa fa-list"></i></a>  <div id="grid_b"><i class="fa fa-th"></i></i></div>');

                            $.totalStorage('display', 'grid');
                        }
                        if ($('body').width() > 940) {
                            // tooltip demo
                            $('.tooltip-toggle').tooltip({
                                selector: "a[data-toggle=tooltip]"
                            })
                            $('.tooltip-1').tooltip({
                                placement: 'bottom'
                            })
                            $('.tooltip-2').tooltip({
                                placement: 'top'
                            })
                        }

                    }

                    view = $.totalStorage('display');

                    if (view) {
                        display(view);
                    } else {
                        display('grid');
                    }
                    //-->
                </script>

                <div class="clear"></div>
            </div>
        </div>
    </div>
    <div class="clear"></div>
</section>