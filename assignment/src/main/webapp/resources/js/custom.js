function traDonHang(maHoaDon){
	$.ajax({
		url : '/assignment/api/tinhtrangdonhang/'+ maHoaDon,
		type : 'GET',
	})
	.done(
		function(data) {
			console.log(data);
			if (data.length == 0 && data == '') {
				$('.daPho').empty();
				$('.tt-kh').empty();
				$('.log-kh').empty();
				$('.daPho')
				.append(
					'<div class="alert alert-danger" role="alert"> Mã hóa đơn không tồn tại</div>');
			} else {
				$('.log-kh').empty();
				$('.tt-kh').empty();
				$('.daPho').empty();
				$('.log-kh').append(
					'<thead><tr><th scope="col">Log</th></tr></thead>'+
					'<tbody id="log-donhang">'+
					'</tbody>'
					);
				$.each(data, function(index, val) {
					var d = new Date(val.thoiGian);
					var formattedDate = d.getDate() + "/" + (d.getMonth()+1) + "/" + d.getFullYear();
					var hours = (d.getHours() < 10) ? "0" + d.getHours() : d.getHours();
					var minutes = (d.getMinutes() < 10) ? "0" + d.getMinutes() : d.getMinutes();
					var formattedTime = hours + ":" + minutes;

					formattedDate = formattedDate + " " + formattedTime;
					$('#log-donhang').append(
						'<tr><td>'+formattedTime+', ngày '+
						formattedDate+': '+val.trangThai.trangThai+' bởi '+
						val.nhanVien.tenNhanVien+'</td></tr>'
						);
				});

				var traShip;
				if (data[0].donHang.cachThucTraPhi == true
					|| data[0].donHang.cachThucTraPhi == 'true') {
					traShip = '<b id="traShip">Người nhận</b>'
			} else {
				traShip = '<b id="traShip">Người gửi</b>'
			}
			$('.tt-kh').empty();
			$('.daPho').empty();
			$('.tt-kh')
			.append(
				'<thead><tr><th scope="col" colspan="2">Thông tin vận đơn</th></tr></thead>'
				+ '<tbody>'
				+ '<tr>'
				+ '<td>Người nhận</td>'
				+ '<td>'
				+ '<p>Họ Tên: '
				+ '<b id="hoTenNN">'
				+ data[0].donHang.tenNguoiNhan
				+ '</b>'
				+ '</p>'
				+ '<p>SĐT: '
				+ '<b id="sdtNN">'
				+ data[0].donHang.sdtNguoiNhan
				+ '</b>'
				+ '</p>'
				+ '<p>Địa chỉ: '
				+ '<b id="diaChiNN">'
				+ data[0].donHang.diaChiNguoiNhan
				+ '</b>'
				+ '</p>'
				+ '</td></tr>'
				+ '<tr><td>Người gửi</td><td>'
				+ '<p>Họ Tên: '
				+ '<b id="hoTenNG">'
				+ data[0].donHang.diaChiKhachHang.khachHang.tenKhachHang
				+ '</b>'
				+ '</p>'
				+ '<p>SĐT: '
				+ '<b id="sdtNG">'
				+ data[0].donHang.diaChiKhachHang.khachHang.soDienThoai
				+ '</b>'
				+ '</p>'
				+ '<p>Địa chỉ: '
				+ '<b id="diaChiNG">'
				+ data[0].donHang.diaChiKhachHang.diaChiGui
				+ '</b>'
				+ '</p></td></tr>'
				+ '<tr><td>Thông tin đơn hàng</td><td>'
				+ '<p>Tên mặt hàng: <b id="mdhKH">'+data[0].donHang.tenMatHang+'</b></p>'
				+ '<p>Tiền thu hộ: '
				+ '<b id="tienThuHo">'
				+ data[0].donHang.tienThuHo
				+ ' VNĐ</b>'
				+ '</p>'
				+ '<p>Phí ship: '
				+ '<b id="phiShip">'
				+ data[0].donHang.phiVanChuyen
				+ ' VNĐ</b>'
				+ '</p>'
				+ '<p>Trả ship: '
				+ traShip
				+ '</p></td></tr>'
				+ '<tr><td>Trạng thái đơn hàng</td>'
				+ '<td id="trangThaiDH">'
				+ data[0].trangThai.trangThai
				+ '</td>'
				+ '</tr>'
				+ '</tbody>');

		}
	})
	.fail(
		function() {
			$('.daPho').empty();
			$('.daPho')
			.append(
				'<div class="alert alert-danger" role="alert"> Lỗi</div>');
		}).always(function() {
		});
}

function resetTraCuuDonHang(){
	$('.tt-kh').empty();
	$('.daPho').empty();
	$('.log-kh').empty();
	$('#maHoaDon').val('');
}

function btnTop(){
	window.onscroll = function() {
		scrollFunction()
	};

	function scrollFunction() {
		if (document.body.scrollTop > 20
				|| document.documentElement.scrollTop > 20) {
			document.getElementById("myBtn").style.display = "block";
		} else {
			document.getElementById("myBtn").style.display = "none";
		}
	}

	// When the user clicks on the button, scroll to the top of the document
	function topFunction() {
		document.body.scrollTop = 0;
		document.documentElement.scrollTop = 0;
	}
}

function activeLinkNav(){
	var page = location.pathname.split('/').pop();
	$('#navbarSupportedContent').find('li').each(function() {
	   $(this).toggleClass('current-item', $(this).children().attr('href') == page);
	});
}

function loadInfoCustomer(maKH){
	$.ajax({
		url: '/assignment/api/donhang/'+maKH,
		type: 'GET',
	})
	.done(function(data) {
		if(data != null && data != undefined){
			$('tbody').empty();
			$('tbody').append(
				'<tr><td rowspan="" class="col-sdt-kh"></td><td rowspan="" class="col-email-kh"></td></tr>'		
			);
			$.each(data, function(index, val) {
				$('tbody').append(
					'<tr><td>'+val.diaChiGui+'</td>'+
					'<td>'+
					'<button type="button" data-adr="'+val.maDiaChi+
					'" class="btn btn-warning btn-warning-format" id="update-diachikh"'+
					' style="color: white;"><i class="fas fa-edit"></i></button>'+
					'<button type="button" data-adr="'+val.maDiaChi+
					'" class="btn btn-danger btn-danger-format" id="delete-diachikh"'+
					' style="margin-left: 3px;"><i class="fas fa-trash-alt"></i></button>'+
					'</td>'+
					'</tr>'		
				);
			});
			$('#name-kh').html(data[0].khachHang.tenKhachHang);
			$('#customer-avartar').attr('src', '/resoures/images/customer/'+data[0].khachHang.anhDaiDien);
			$('.col-sdt-kh').html(data[0].khachHang.soDienThoai);
			$('.col-email-kh').html(data[0].khachHang.email);
			$('.col-sdt-kh').attr('rowspan', data.length+1);
			$('.col-email-kh').attr('rowspan', data.length+1);
		}else{
			
		}
	})
	.fail(function() {
	})
	.always(function() {
	});
}

function xoaDiaChiKH(maDiaChi, maKH) {
	swal({
		title: "Thông Báo", 
		text: "Bạn có thật sự muốn xóa?", 
		type: "warning",
		showCancelButton: true,
		closeOnConfirm: false,
		cancelButtonText: "Hủy",
		confirmButtonText: "Xóa",
		confirmButtonColor: "#ec6c62"
	}, function() {
		$.ajax({
			url: '/assignment/api/xoadiachikh/'+maDiaChi,
			type: "DELETE"
		})
		.done(function(data) {
			swal("Thông Báo!", "Địa chỉ này đã được xóa", "success");
			loadInfoCustomer(maKH);
		})
		.error(function(data) {
			swal("Thông Báo!", "Server đang nghẽn, xin vui lòng thực hiện lại sau giây lát", "error");
		});
	});
}