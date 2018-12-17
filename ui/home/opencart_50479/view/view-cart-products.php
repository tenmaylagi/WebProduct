<div id="cart" class="">
    <div class="heading">
        <span class="link_a">
<i class="fa fa-shopping-cart"></i>
<b>Giỏ Hàng</b>
<span class="sc-button"></span>
        <span id="cart-total2"><?php echo cartCountProducts();?></span>
        <span id="cart-total"><?php echo cartGetTextCountAndTotal();?></span>
        <i class="fa fa-angle-down"></i>
        <span class="clear"></span>
        </span>
    </div>
    <div class="content">
        <div class="content-scroll">
            <span class="latest-added">Sản phẩm mới thêm:</span>
            <br><br>
            <div class="mini-cart-info">
                <table class="cart">
                    <tbody>
                    	<?php foreach (cartGetProductsWithFormat() as $product) { ?>  
                        <tr>
                            <td class="image">
                                <a href="<?php echo $product['href'];?>"><img src="<?php echo $product['thumb'];?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>"></a>
                            </td>
                            <td class="name"><a href="<?php echo $product['href'];?>"><?php echo $product['name']; ?></a>
                                <!-- 
                                <div>
                                    - <small>Select Red</small><br>
                                </div>
                                 -->
                                <span class="quantity">x&nbsp;<?php echo $product['quantity'];?></span>
                                <span class="total"><?php echo $product['total'];?></span>
                                <div class="remove"><span onclick="cart.remove('<?php echo $product['product_id'];?>');"><i class="fa fa-times-circle"></i>Xóa</span></div>
                            </td>
                        </tr>
                        <?php } ?>  
                    </tbody>
                </table>
            </div>
            <div>
                <table class="total">
                    <tbody>
                        <!-- 
                        <tr>
                            <td class="text-right total-right"><b>Sub-Total:</b></td>
                            <td class="text-left total-left"><span class="t-price">$167.00</span></td>
                        </tr>
                        <tr>
                            <td class="text-right total-right"><b>Eco Tax (-2.00):</b></td>
                            <td class="text-left total-left"><span class="t-price">$4.00</span></td>
                        </tr>
                        <tr>
                            <td class="text-right total-right"><b>VAT (17.5%):</b></td>
                            <td class="text-left total-left"><span class="t-price">$29.23</span></td>
                        </tr>
                        <tr>
                            <td class="text-right total-right"><b>Total:</b></td>
                            <td class="text-left total-left"><span class="t-price">$200.23</span></td>
                        </tr>
                         -->
                         <tr>
						 	<td class="text-right total-right"><b>Tổng giá trị đơn hàng:</b></td>
							<td class="text-left total-left"><span class="t-price"><?php echo cartGetTotalWithFormat(); ?></span></td>
						 </tr>
                    </tbody>
                </table>
            </div>
            <div class="checkout">
                <a class="button" href="/cart.php"><span>Giỏ Hàng</span></a>
                <a class="button" href="/checkout.php"><span>Thanh Toán</span></a>
            </div>
        </div>
    </div>
</div>