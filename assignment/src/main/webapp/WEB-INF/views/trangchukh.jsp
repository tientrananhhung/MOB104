<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Giao Hang Chậm - Chậm Mà Chắc</title>
<base href="${pageContext.servletContext.contextPath}/" />
<link rel="stylesheet" type="text/css"
	href="<c:url value="resources/css/lib/bootstrap/bootstrap.min.css" />">
<link rel="stylesheet" type="text/css"
	href="<c:url value="resources/css/lib/font-awesome/fontawesome-all.css" />">
<link rel="stylesheet" type="text/css"
	href="<c:url value="resources/css/styleIndex.css" />">
	<base href="${pageContext.servletContext.contextPath}/" />
</head>
<body>
	<jsp:include page="include/headerkh.jsp" />

	<!-- Modal -->
	<div class="modal fade bd-example-modal-lg" id="exampleModal"
		tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
		aria-hidden="true">
		<div class="modal-dialog modal-lg" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">Tra Cứu Vận Đơn</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					Mời quý khách nhập mã vận đơn để tra cứu (VD: 123456789)
					<div class="input-group mb-3">
						<input type="text" class="form-control"
							placeholder="Nhập mã vận đơn" aria-label="Recipient's username"
							aria-describedby="basic-addon2">
						<div class="input-group-append">
							<button class="btn btn-outline-secondary" type="button"
								style="padding: 7px; border-radius: 0px 5px 5px 0px;">TÌM
								ĐƠN</button>
						</div>
					</div>
					<table class="table table-bordered">
						<thead>
							<tr>
								<th scope="col" colspan="2">Thông tin vận đơn</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>Người nhận</td>
								<td>Name</td>
							</tr>
							<tr>
								<td>Người gửi</td>
								<td>Name</td>
							</tr>
							<tr>
								<td>Thông tin đơn hàng</td>
								<td>Information</td>
							</tr>
							<tr>
								<td>Trạng thái đơn hàng</td>
								<td>Đã đối soát</td>
							</tr>
						</tbody>
					</table>
					<table class="table table-bordered">
						<thead>
							<tr>
								<th scope="col">Log</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>Log trong đây</td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>
	<!-- End Modal -->

	<!-- Main -->
	<main> <section id="masthead" class="section-banner"
		role="banner">
	<div class="container">
		<div class="row">
			<div class="col-sm-7 col-md-8">
				<div id="carouselExampleFade" class="carousel slide carousel-fade"
					data-ride="carousel">
					<div class="carousel-inner">
						<div class="carousel-item active">
							<img class="d-block w-100"
								src="<c:url value="resources/images/anh1.jpg" />"
								alt="First slide">
						</div>
						<div class="carousel-item">
							<img class="d-block w-100"
								src="<c:url value="resources/images/anh2.jpg" />"
								alt="Second slide">
						</div>
						<div class="carousel-item">
							<img class="d-block w-100"
								src="<c:url value="resources/images/anh3.png" />"
								alt="Third slide">
						</div>
						<div class="carousel-item">
							<img class="d-block w-100"
								src="<c:url value="resources/images/anh4.jpg" />"
								alt="Third slide">
						</div>
						<div class="carousel-item">
							<img class="d-block w-100"
								src="<c:url value="resources/images/anh5.jpg" />"
								alt="Third slide">
						</div>
					</div>
					<a class="carousel-control-prev" href="#carouselExampleFade"
						role="button" data-slide="prev"> <span
						class="carousel-control-prev-icon" aria-hidden="true"></span> <span
						class="sr-only">Previous</span>
					</a> <a class="carousel-control-next" href="#carouselExampleFade"
						role="button" data-slide="next"> <span
						class="carousel-control-next-icon" aria-hidden="true"></span> <span
						class="sr-only">Next</span>
					</a>
				</div>
			</div>
			<div class="col-sm-5 col-md-4">
				<div class="block block-signup">
					<div class="content text-center" style="padding: 10px;">
						<h3 class="h4">Bạn là khách hàng mới?</h3>
						<a href="dangky" class="btn btn-primary" style="padding: 10px;"> <span>Đăng
								ký ngay</span>
						</a>
						<h3 class="h4" style="padding: 10px; margin: 0px;">Hoặc</h3>
<<<<<<< HEAD
						<a href="dangnhap"> 
						<span>ĐĂNG NHẬP</span>
=======
						<a href="dangnhap"> <span>ĐĂNG NHẬP</span>
>>>>>>> 77c1fb122135d5e6a9a14e5ad6ff53cd60b6aad3
						</a>
					</div>
				</div>
				<div class="block block-signin">
					<div class="content text-center">
						<a href=""> <img
							src="<c:url value="resources/images/feedback.jpg" />"
							alt="feedback" style="max-width: 100%;">
						</a>
					</div>
				</div>
			</div>
		</div>
	</div>
	</section> <section class="section-ghtkpo shortcode-ghtkpo">
	<div class="container">
		<div class="row">
			<div class="hidden-xs col-sm-5 col-md-6">
				<img class="thumb-map-office"
					src="<c:url value="resources/images/list-post-offices.jpg" />"
					alt="map-office-img">
			</div>
			<div class="search-post-offices">
				<div class="default-title" style="visibility: visible;">
					<div class="col-left">
						<span class="big-text">500++</span>
					</div>
					<div class="col-right">
						<span class="text-before">điểm gửi hàng...</span> <span
							class="text-after">...trên toàn quốc!!!</span>
					</div>
				</div>
			</div>
		</div>
	</div>
	</section> <section class="section widget_text">
	<div class="container">
		<h3 class="section-title text-center">Phương thức hoạt động</h3>
	</div>
	<div class="textwidget">
		<div class="grey-bg actives">
			<div class="container">
				<ul class="row">
					<li class="active-1"><strong>Tiếp nhận đơn hàng</strong> Shop
						đăng nhập và đăng đơn hàng cho trung tâm điều vận GHTK qua hệ
						thống quản lý riêng.</li>
					<li class="active-2"><strong>Lấy hàng</strong> Nhân viên GHTK
						qua địa chỉ shop để lấy hàng tận nơi</li>
					<li class="active-3"><strong>Giao hàng</strong> GHTK giao hàng
						cho khách hàng và thu hộ tiền trực tiếp (Cash on Delivery)</li>
					<li class="active-4"><strong>Đối soát</strong> GHTK đối soát
						trả tiền cho shop (3 lần/tuần) qua tài khoản ngân hàng. Đồng thời
						gửi biên bản đối soát định kì vào email.</li>
					<li class="active-5"><strong>Kết thúc</strong> Giao dịch hoàn
						thành</li>
				</ul>
			</div>
		</div>
	</div>
	</section> <section class="section widget_text">
	<div class="textwidget">
		<div class="container do-you-know">
			<div class="row">
				<div class="col-md-1"></div>
				<div class="col-sm-6 col-md-4 col-md-offset-2 col-md-pull-1">
					<h3 class="section-title">
						Bạn có biết?<br> <em>Dịch vụ chúng tôi cung cấp đã phù
							hợp với </em><br> <strong>5 khách hàng</strong>
					</h3>
					<p>
						<a class="btn btn-primary btn-100" href="dangky">Đăng ký ngay</a>
					</p>
				</div>
				<div class="col-md-1"></div>
				<div class="col-sm-6 col-md-6">
					<ul>
						<li><img
							style="position: absolute; left: 0; top: 10px; height: 75px;"
							src="<c:url value="resources/images/icon-04.png" />"><br>
							<strong><br> Phủ sóng 99% huyện xã<br> </strong><br>
							<i
							style="color: #958686; display: block; font-size: 14px; font-style: italic;">Lấy
								hàng / Giao hàng trên 11.000 huyện xã trên toàn quốc</i></li>
						<li class="know-3"><img
							src="<c:url value="resources/images/icon-05.png" />"><br>
							<strong><br> Giao nhanh không kịp hủy<br> </strong><br>
							<i
							style="color: #958686; display: block; font-size: 14px; font-style: italic;">Giao
								nội tỉnh 6-12h<br> Giao nội miền 24-36h<br> Giao liên
								miền 48h
						</i></li>
						<li class="know-4"><img
							src="<c:url value="resources/images/icon-06.png" />"><br>
							<strong><br> Đối soát trả tiền nhanh<br> </strong><br>
							<i
							style="color: #958686; display: block; font-size: 14px; font-style: italic;">Chuyển
								khoản vào tài khoản NH 3 lần/tuần vào thứ 2/4/6</i></li>
						<li class="know-5"><img style="top: 10%;"
							src="<c:url value="resources/images/icon-07.png" />"><br>
							<strong>Giao hàng linh hoạt</strong><br> <i
							style="color: #958686; display: block; font-size: 14px; font-style: italic;">Linh
								hoạt giao hàng cho khách chọn, đổi địa chỉ giao, đổi tiền thu
								hộ, đổi SĐT, đổi người nhận hàng,…</i></li>
						<li class="know-6"><img style="top: 30%;"
							src="<c:url value="resources/images/icon-03.png" />"><br>
							<strong style="margin: 10px 0 0 0;"><br> Miễn phí
								giao nhiều lần<br> </strong></li>
						<li class="know-7"><img style="top: 30%;"
							src="<c:url value="resources/images/icon-03.png" />"><br>
							<strong style="margin: 22px 0 0 0;">Miễn phí thu hộ tiền</strong></li>
					</ul>
				</div>
			</div>
		</div>
	</div>
	</section> </main>
	<!-- End Main -->
	<jsp:include page="include/footerkh.jsp" />
	<!-- Script -->
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
	</script>
	<script type="text/javascript"
		src="<c:url value="resources/js/lib/jquery/jquery.min.js" />"></script>
	<script type="text/javascript"
		src="<c:url value="resources/js/lib/bootstrap/js/bootstrap.min.js" />"></script>
	<!-- End Script -->
</body>
</html>