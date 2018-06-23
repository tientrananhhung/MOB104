<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="f"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Giao Hang Chậm - Chậm Mà Chắc</title>
<base href="${pageContext.servletContext.contextPath}/" />
<link rel="stylesheet" type="text/css"
	href="<c:url value="resources/css/styleindex.css" />">
<link rel="stylesheet" type="text/css"
	href="<c:url value="resources/css/lib/bootstrap/bootstrap.min.css" />">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>
	<jsp:include page="include/headerkh.jsp" />

	<!-- Main -->
	<main id="main" class="site-main" style="min-height: 500px;"> <section
		class="title-page-st title-page">
	<div class="container">
		<h1 class="mashead-title text-center">Quản lý đơn hàng</h1>
		<h3>
			Xin chào!
			<c:out value="${thongtindangnhap.tenKhachHang}" />
		</h3>
		<div class="dropdown">
			<button class="btn btn-secondary dropdown-toggle btn-dropdown-kh"
				type="button" id="dropdownMenuButton" data-toggle="dropdown"
				aria-haspopup="true" aria-expanded="false">Sửa thông tin
				khách hàng</button>
			<div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
				<a class="dropdown-item" href="#">Đổi thông tin khách hàng</a> <a
					class="dropdown-item" href="#">Thoát</a>
			</div>
		</div>
	</div>
	</section>
	<div class="container-fluid">
		<div class="row">
			<div class="col-12">
				<div class="card">
					<div class="card-body">
						<h3 class="card-subtitle">Danh sách đơn hàng</h3>
						<hr style="background-color: #00827c" />
						<div class="table-responsive m-t-40">
							<div class="text-left">
								<a href="taodonhang"><button type="button"
										class="btn btn-success m-b-10 m-l-5">Thêm mới đơn
										hàng</button></a>
							</div>
							<table id="example23"
								class="display nowrap table table-hover table-striped table-bordered dataTable no-footer"
								style="margin-top: 50px" align="center">
								<thead>
									<tr>
										<th>Mã đơn hàng</th>
										<th>Tên mặt hàng</th>
										<th>Tên người nhận</th>
										<th>SDT người nhận</th>
										<th>Trọng lượng</th>
										<th>Phí vận chuyển</th>
										<th>Cách thức trả phí</th>
										<th>Tiền thu hộ</th>
										<th>Ghi Chú</th>
										<th>Chức năng</th>
									</tr>
								</thead>
								<tbody>

								</tbody>
							</table>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	</main>
	<!-- End Main -->
	<jsp:include page="include/footerkh.jsp" />
	<!-- Script -->
	
	<script src="<c:url value="resources/js/lib/jquery/jquery.min.js" />"></script>
	<script
		src="<c:url value="resources/js/lib/datatables/datatables.min.js" />"></script>
	<script type="text/javascript"
		src="<c:url value="resources/js/lib/bootstrap/js/popper.min.js" />"></script>
	<script type="text/javascript"
		src="<c:url value="resources/js/lib/bootstrap/js/bootstrap.min.js" />"></script>
	<!-- End Script -->
	<script>
		// When the user scrolls down 20px from the top of the document, show the button
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
		
		
		$(document).ready(function() {
			$.ajax({
		        url: '/assignment/api/donhang/${maKhachHang}',
		        type: 'GET',
		      })
		      .done(function(data) {
		        console.log(data);
		        $('tbody').empty();
		       	$.each(data, function(index, val) {
		    		$.each(val.donHang, function(index, val1) {
		    			var a = val1.cachThucTraPhi;
		    			var b;
		    			if(a){
		    				b = 'Người nhận';
		    			}else{
		    				b = 'Người gửi';
		    			}
		    			  $('tbody').append(
		    			  	'<tr>'+
		        			'<td>'+val1.maDonHang+'</td>'+
		        			'<td>'+val1.tenMatHang+'</td>'+
		        			'<td>'+val1.tenNguoiNhan+'</td>'+
		        			'<td>'+val1.sdtNguoiNhan+'</td>'+
		        			'<td>'+val1.trongLuong+'</td>'+
		        			'<td>'+val1.phiVanChuyen+'</td>'+
		        			'<td>'+b+'</td>'+
		        			'<td>'+val1.tienThuHo+'</td>'+
		        			'<td>'+val1.ghiChu+'</td>'+
		        			'<td><center> <a href="suadonhang/'+val1.maDonHang+'" class="btn btn-warning m-b-10 m-l-5"><i class="fa fa-cog"></i></a> <a href="huydonhang/'+val1.maDonHang+'" class="btn btn-danger m-b-10 m-l-5"><i class="fa fa-trash"></i></a></center></td>'+
		        			'</tr>'
			        		);
		    		 });
	    		});
		        
		      })
		      .fail(function() {
		      })
		      .always(function() {
		      });
		});
	</script>
</body>
</html>