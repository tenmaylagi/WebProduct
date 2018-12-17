<section>
    <div id="container">
        <p id="back-top" style="display: block;"> <a href="#top"><span></span></a> </p>
        <div class="container">
            <div id="notification"></div>
            <div class="row">
                <div class="col-sm-9 col-sm-12   " id="content">
                    <div class="breadcrumb">
                        <a href="/home.php">Trang Chủ</a> » <a href="<?php echo $search_url;?>" class="last">Tìm Kiếm</a>
                    </div>
                    <h1><?php echo $search_title?></h1>
                    <div class="box-container">
                        <b style=" padding-bottom:7px; display:block;">Tiêu Chí Tìm Kiếm</b>
                        <div class="content">
                            <div>
                                <h3>Tìm:</h3>
                                <div class="form-group">
                                    <input name="search" value="<?php echo $search;?>" type="text">
                                </div>
                               <!-- 
                                <div class="form-group">
                                    <select name="category_id">
									<option value="0">All Categories</option>
									<option value="20">Armored Cable</option>
									<option value="57">Building Wire</option>
									<option value="30">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Ctetur adipisicing </option>
									<option value="29">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Lorem ipsum dolor</option>
									<option value="31">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Sed do eiusmod</option>
									<option value="28">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Sit amet conse </option>
									<option value="36">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dolore magna aliqua</option>
									<option value="35">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Ut labore et </option>
									<option value="32">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Tmpor incididunt </option>
									<option value="17"> Coaxial Cable</option>
									<option value="24">Doorbell Wire</option>
									<option value="25"> Grounding Wire</option>
									<option value="59">Lamp Wire</option>
									<option value="70">Landscape Lighting Wire</option>
									<option value="71">Outdoor Electrical Wire</option>
									<option value="72">Portable Power Cord</option>
									</select>
                                </div>
                                <div class="form-group">
                                    <div class="checkbox">
                                        <label for="sub_category">
<input name="sub_category" value="1" id="sub_category" disabled="disabled" type="checkbox">
Search in subcategories</label>
                                    </div>
                                </div>
                                -->
                                
                                <div class="form-group">
                                    <div class="checkbox">
                                        <label for="description">
                                        <?php if ($description) { ?>
								          <input type="checkbox" name="description" value="1" id="description" checked="checked" />
								          <?php } else { ?>
								          <input type="checkbox" name="description" value="1" id="description" />
								          <?php } ?>
										Tìm kiếm trong cả mô tả sản phẩm 
										</label>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="buttons">
                            <div class="right"><a id="button-search" class="button"><span>Tìm</span></a></div>
                        </div>
                    </div>
                    <h2>Kết Quả Tìm Kiếm</h2>
                    <div class="product-filter">
                        <div class="display"><b>Hiển thị:</b> <a id="list_a" onclick="display('list');"><i class="fa fa-list"></i></a>
                            <div id="grid_b"><i class="fa fa-th"></i></div>
                        </div>
                        <div class="sort">Xếp theo: <select onchange="location = this.value;">
                        							<?php foreach ($search_sorts as $sorts) { ?>
											            <?php if ($sorts['value'] == $sort . '-' . $order) { ?>
											            <option value="<?php echo $sorts['href']; ?>" selected="selected"><?php echo $sorts['text']; ?></option>
											            <?php } else { ?>
											            <option value="<?php echo $sorts['href']; ?>"><?php echo $sorts['text']; ?></option>
											            <?php } ?>
											        <?php } ?>
													</select>
                        </div>
                        <div class="limit">Show: <select onchange="location = this.value;">
													<?php foreach ($search_limits as $limits) { ?>
									            <?php if ($limits['value'] == $limit) { ?>
									            <option value="<?php echo $limits['href']; ?>" selected="selected"><?php echo $limits['text']; ?></option>
									            <?php } else { ?>
									            <option value="<?php echo $limits['href']; ?>"><?php echo $limits['text']; ?></option>
									            <?php } ?>
									<?php } ?>
											</select>
                        </div>
                        <!-- <div class="product-compare"><a href="https://livedemo00.template-help.com/opencart_50479/index.php?route=product/compare" id="compare-total">Product Compare (0)</a></div> -->
                    </div>
                    <div class="product-grid">
                        <ul class="row">
                        	<?php $i=0;?>
                            <?php foreach ($productsSearched as $product) {?>
                            <li class="col-sm-4 <?php if($i%3==0) echo 'first-in-line'; elseif($i%3==2) echo 'last-in-line';$i++;?>">
                                <div class="padding">
                                    <div class="image">
                                        <a href="<?php echo $product['href'];?>"><img id="img_43" src="<?php echo $product['thumb'];?>" title="<?php echo $product['name'];?>" alt="<?php echo $product['name'];?>"></a>
                                    </div>
                                    <div class="left">
                                        <div class="name"><a href="<?php echo $product['href'];?>"><?php echo $product['name'];?></a></div>
                                        <div class="price">
                                            <span class="price-new"><?php echo $product['price'];?></span> 
                                            <!-- 
                                            <span class="price-old">$589.50</span>
                                            <br>
                                            <span class="price-tax">Ex Tax: $499.00</span>
                                             -->
                                        </div>
                                        <div class="description"><?php echo $product['description'];?></div>
                                        <div class="cart-button">
                                            <div class="cart">
                                                <a onclick="cart.add('<?php echo $product['product_id'];?>');" class="button" title="Add to Cart"> <span>Thêm vào giỏ</span></a>
                                            </div>
                                            <div class="wishlist"><a class="tooltip-1 " title="" onclick="addToWishList('43');" data-original-title="Add to Wish List"><i class="fa fa-heart"></i></a></div>
                                            <div class="compare"><a class="tooltip-1" title="" onclick="compare.add('<?php echo $product['product_id']?>');" data-original-title="So Sánh Sản Phẩm"><i class="fa fa-signal"></i></a></div>
                                            <div class="clear"></div>
                                        </div>
                                    </div>
                                </div>
                            </li>
                            <?php }?>
                            
                        </ul>
                    </div>
                    <div class="pagination">
                        	<div class="col-sm-6 text-left"><?php echo $web_pagination_controls; ?></div>
          					<div class="col-sm-6 text-right"><?php echo $web_pagination_results; ?></div>
                    </div>
                </div>
                <aside class="col-sm-3" id="column-right">
                    <!-- 
                    <div class="box account info">
                        <div class="box-heading">Account</div>
                        <div class="box-content">
                            <ul class="acount">
                                <li><a href="https://livedemo00.template-help.com/opencart_50479/index.php?route=account/login"><i class="fa fa-caret-right "></i>Login</a> / <a href="https://livedemo00.template-help.com/opencart_50479/index.php?route=account/register"><i class="fa fa-caret-right "></i>Register</a></li>
                                <li><a href="https://livedemo00.template-help.com/opencart_50479/index.php?route=account/forgotten"><i class="fa fa-caret-right "></i>Forgotten Password</a></li>
                                <li><a href="https://livedemo00.template-help.com/opencart_50479/index.php?route=account/account"><i class="fa fa-caret-right "></i>My Account</a></li>
                                <li><a href="https://livedemo00.template-help.com/opencart_50479/index.php?route=account/address"><i class="fa fa-caret-right "></i>Address Books</a></li>
                                <li><a href="https://livedemo00.template-help.com/opencart_50479/index.php?route=account/wishlist"><i class="fa fa-caret-right "></i>Wish List</a></li>
                                <li><a href="https://livedemo00.template-help.com/opencart_50479/index.php?route=account/order"><i class="fa fa-caret-right "></i>Order History</a></li>
                                <li><a href="https://livedemo00.template-help.com/opencart_50479/index.php?route=account/download"><i class="fa fa-caret-right "></i>Downloads</a></li>
                                <li><a href="https://livedemo00.template-help.com/opencart_50479/index.php?route=account/return"><i class="fa fa-caret-right "></i>Returns</a></li>
                                <li><a href="https://livedemo00.template-help.com/opencart_50479/index.php?route=account/transaction"><i class="fa fa-caret-right "></i>Transactions</a></li>
                                <li><a href="https://livedemo00.template-help.com/opencart_50479/index.php?route=account/newsletter"><i class="fa fa-caret-right "></i>Newsletter</a></li>
                                <li><a href="https://livedemo00.template-help.com/opencart_50479/index.php?route=account/recurring"><i class="fa fa-caret-right "></i>Recurring payments</a></li>
                            </ul>
                        </div>
                    </div>
                     -->
                     <?php include_once "view-account-box.php";?>
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
                                    <?php foreach(productGetByModule('best_seller') as $product) {?>
                                    <li class="first-in-line last_line col-sm-3">
                                        <div class="padding">
                                            <div class="product_image image2">
                                                <a href="<?php echo $product['href']?>"><img id="img_<?php echo $product['product_id'];?>" src="<?php echo $product['thumb'];?>" alt="<?php echo $product['name'];?>"></a>
                                            </div>
                                            <div class="inner">
                                                <div class="f-left">
                                                    <div class="product_price price">
                                                        <span class="price-new"><?php echo $product['price'];?></span>
                                                        <!-- <span class="price-old">$589.50</span> -->
                                                    </div>
                                                    <div class="product_name name maxheight-best" style="height: 19px;"><a href="<?php echo $product['href'];?>"><?php echo $product['name'];?></a></div>
                                                </div>
                                                <div class="product_buton cart-button">
                                                    <div class="cart">
                                                        <a onclick="cart.add('<?php echo $product['product_id'];?>');" title="Add to Cart" data-id="<?php echo $product['product_id'];?>;" class="button addToCart">
                                                            <span><i class="fa fa-shopping-cart"></i>Giỏ hàng</span>
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
                    
                    $('#content input[name=\'search\']').keydown(function(e) {
                        if (e.keyCode == 13) {
                            $('#button-search').trigger('click');
                        }
                    });

                    $('select[name=\'category_id\']').bind('change', function() {
                        if (this.value == '0') {
                            $('input[name=\'sub_category\']').attr('disabled', 'disabled');
                            $('input[name=\'sub_category\']').removeAttr('checked');
                        } else {
                            $('input[name=\'sub_category\']').removeAttr('disabled');
                        }
                    });

                    $('select[name=\'category_id\']').trigger('change');

                    $('#button-search').bind('click', function() {
                        //url = 'index.php?route=product/search';
                        url = '/search.php?';

                        var search = $('#content input[name=\'search\']').attr('value');

                        if (search) {
                            url += '&search=' + encodeURIComponent(search);
                        }

                        var category_id = $('#content select[name=\'category_id\']').attr('value');

                        if (category_id > 0) {
                            url += '&category_id=' + encodeURIComponent(category_id);
                        }

                        var sub_category = $('#content input[name=\'sub_category\']:checked').attr('value');

                        if (sub_category) {
                            url += '&sub_category=true';
                        }

                        var filter_description = $('#content input[name=\'description\']:checked').attr('value');

                        if (filter_description) {
                            url += '&description=true';
                        }

                        location = url;
                    });

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
                                html += '<div class="padding">';
                                if (image != null) {
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
                        if ($('.container').width() > 800) {
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
                    
                </script>
                <div class="clear"></div>
            </div>
        </div>
    </div>
    <div class="clear"></div>
</section>