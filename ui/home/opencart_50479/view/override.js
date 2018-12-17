// Viết đè hàm này vì hộp thoại thông báo thêm mới sản phẩm vào giỏ hàng
// ở các mẫu thiết kế rất khác nhau. Ví dụ:
// Có mẫu thì nó đặt thông báo bên trong <div id="notification"></div>
// Có mẫu thì thông báo được đặt ngay bên dưới <div id="menu"></div>
cart.add = function(product_id, quantity) { 
		$.ajax({
			url: '/cart-add.php',
			type: 'post',
			data: 'product_id=' + product_id + '&quantity=' + (typeof(quantity) != 'undefined' ? quantity : 1),
			dataType: 'json',
			beforeSend: function() {
				$('#cart > button').button('loading');
			},
			success: function(json) {	// sau khi thêm mới giỏ hàng thành công
				$('.alert, .text-danger').remove();

				$('#cart > button').button('reset');

				if (json['redirect']) {
					// error products are to be redirected ?
					// example: json['error']['recurring'];
					location = json['redirect'];
				}
				
				// Cập nhật lại thông tin về giỏ hàng trên giao diện html
				// sau khi vừa thêm mới sản phẩm
				if (json['success']) {
					// đoạn html này thông báo thêm giỏ hàng thành công.
					// Thêm đoạn mã html vào trước thẻ cha của thẻ con có id="content"
					//$('#content').parent().before('<div class="alert alert-success"><i class="fa fa-check-circle"></i> ' + json['success'] + '<button type="button" class="close" data-dismiss="alert">&times;</button></div>');
					// hoặc sau menu ngang trên cùng:
					$('#notification').html('<div class="success" style="display: none;"><i class="fa fa-thumbs-up"></i>' + json['success'] + '<i class="fa fa-times-circle"></i></div>');
					
					// Thông báo rằng đã thêm mới thành công sản phẩm vào giỏ hàng
					$('.success').fadeIn('slow');
					
					// nếu người dùng nhấp chuột vào để tắt đi
					$('#notification > .success > .fa-times-circle').click(function(){
						$('.success').fadeOut(3000);
					});
					
					// Tự động ẩn đi hộp thoại
					$('.success').fadeOut(3000);
					
					
					
					// cập nhật thông tin số sản phẩm trong giỏ hàng
					$('#cart-total').html(json['total']);
					
					// cuộn lên đầu trang
					$('html, body').animate({ scrollTop: 0 }, 'slow');

					// tải lại nội dung html của giỏ hàng bằng ajax load
					// chỉ lấy phần nội dung bên trong phần tử html có id="cart" 
					// sau đó đắp phần html đó vào bên trong phần tử id="cart" của trang hiện tại.
					// Thêm vào lớp "active" cho thẻ để nó hiển thị.
					
					$('#cart').load(urlCartInfo+' #cart > *').addClass("active"); 
					
					// Sau một khoảng thời gian trễ thì gỡ bỏ lớp active để giấu giỏ hàng đi
					// Nếu khách hàng muốn xem lại thì di chuột vào
					setTimeout(() => {
						$('#cart').removeClass("active");
					}, 3000);
					
					
				}
				
			}
		});
}; // end cart.add() override

