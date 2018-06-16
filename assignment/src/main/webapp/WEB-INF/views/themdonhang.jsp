<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="f" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Tạo đơn hàng</title>
<link
	href="<c:url value="resources/css/lib/bootstrap/bootstrap.min.css" />"
	rel="stylesheet">
<!-- Custom CSS -->
<link href="<c:url value="resources/css/helper.css" />" rel="stylesheet">
<link href="<c:url value="resources/css/style.css" />" rel="stylesheet">
</head>
<body>
	<div id="main-wrapper">
		<jsp:include page="include/header.jsp"></jsp:include>
		<jsp:include page="include/left-sidebar.jsp"></jsp:include>
		<div class="page-wrapper">
			<div class="row page-titles">
				<div class="col-md-5 align-self-center">
					<h3 class="text-primary">TẠO ĐƠN HÀNG</h3>
				</div>
				<div class="col-md-7 align-self-center">
					<ol class="breadcrumb">
						<li class="breadcrumb-item"><a href="javascript:void(0)">Trang
								chủ</a></li>
						<li class="breadcrumb-item"><a href="javascript:void(0)">Đơn
								hàng</a></li>
						<li class="breadcrumb-item active">Tạo đơn hàng</li>
					</ol>
				</div>
			</div>
			<div class="container-fluid">
				<div class="row">
					<div class="col-lg-12">
						<div class="card">
							<h2 class="box-title m-t-40">Tiếp nhận đơn hàng</h2>
							<hr style="background-color: #F2711C; height: 2px">
							<br />
							<!--/row-->
							<div class="card-body" style="margin-left: 20px;">
								<div class="col-lg-12">
									<div class="form-validation">
										<f:form cssClass="form-valide" action="${action}"
											method="POST" modelAttribute="donhang">
											<f:hidden path="maDonHang" />
											<div class="row">
												<div class="col-md-6">
													<f:input path="tenMatHang" type="text"
														cssClass="form-control" placeholder="Tên mặt hàng.." />
												</div>
												<div class="col-md-6">
													<f:input path="tenNguoiNhan" type="text"
														cssClass="form-control" placeholder="Tên người nhận.." />
												</div>
											</div>
											<br />
											<div class="row">
												<div class="col-md-6">
													<f:input path="sdtNguoiNhan" type="number"
														cssClass="form-control"
														placeholder="Số điện thoại người nhận.." />
												</div>
												<div class="col-md-6">
													<f:input path="diaChiNguoiNhan" type="text"
														cssClass="form-control" placeholder="Địa chỉ người nhận.." />
												</div>
											</div>
											<br />
											<div class="card-body" style="margin-left: 60px;">
												<div class="form-group row">
													<label class="col-lg-2 col-form-label"
														for="val-suggestions">Trọng lượng :</label>
													<div class="col-lg-9">
														<f:input path="trongLuong" type="number"
															cssClass="form-control" placeholder="Kilogam" />
													</div>
												</div>
												<div class="form-group row">
													<label class="col-lg-2 col-form-label" for="val-currency">Phí
														vận chuyển :</label>
													<div class="col-lg-9">
														<f:input path="phiVanChuyen" type="number"
															cssClass="form-control" placeholder="VNĐ" />
													</div>
												</div>
												<div class="form-group row">
													<label class="col-lg-2 col-form-label" for="val-currency">Thu
														hộ :</label>
													<div class="col-lg-9">
														<f:input path="tienThuHo" type="number"
															cssClass="form-control" placeholder="VNĐ" />
													</div>
												</div>
												<div class="form-group row">
													<label class="col-lg-2 col-form-label" for="val-skill">Địa
														chỉ gửi :</label>
													<div class="col-lg-9">
														<f:select path="diaChiKhachHang.maDiaChi"
															cssClass="form-control" name="val-skill">
															<f:options items="${diachi}" />
														</f:select>
													</div>
												</div>
												<div class="form-group row">
													<label class="col-lg-2 col-form-label" for="val-skill">Cách
														trả phí :</label>
													<div class="col-lg-9">
														<f:select path="cachThucTraPhi" cssClass="form-control"
															name="val-skill">
															<f:option value="0">Người gửi trả</f:option>
															<f:option value="1">Người nhận trả</f:option>
														</f:select>
													</div>
												</div>
												<div class="form-group row">
													<label class="col-lg-2 col-form-label" for="val-currency">Ghi
														chú :</label>
													<div class="col-lg-9">
														<f:textarea path="ghiChu" type="text"
															cssClass="form-control" placeholder="..." />
													</div>
												</div>
											</div>
											<br />
											<hr style="background-color: #00a400">
											<br />
											<div class="form-actions">
												<div class="row">
													<div class="col-md-12">
														<div style="float: left; margin-left: 80px">
															<button style="width: 220px" type="submit"
																class="btn btn-success">Submit</button>
														</div>
													</div>
												</div>
											</div>
											<br />
										</f:form>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<footer class="footer">
		© 2018 All rights reserved. Template designed by <a
			href="https://www.facebook.com/profile.php?id=100010754627040">Ấu
			Đoàn Poly</a>
	</footer>
	<script src="<c:url value="resources/js/lib/jquery/jquery.min.js"/>"></script>
	<!-- Bootstrap tether Core JavaScript -->
	<script
		src="<c:url value="resources/js/lib/bootstrap/js/popper.min.js"/>"></script>
	<script
		src="<c:url value="resources/js/lib/bootstrap/js/bootstrap.min.js"/>"></script>
	<!-- slimscrollbar scrollbar JavaScript -->
	<script src="<c:url value="resources/js/jquery.slimscroll.js"/>"></script>
	<!--Menu sidebar -->
	<script src="<c:url value="resources/js/sidebarmenu.js"/>"></script>
	<!--stickey kit -->
	<script
		src="<c:url value="resources/js/lib/sticky-kit-master/dist/sticky-kit.min.js"/>"></script>
	<!--Custom JavaScript -->
	<script src="<c:url value="resources/js/custom.min.js"/>"></script>


	<script
		src="<c:url value="resources/js/lib/datatables/datatables.min.js"/>"></script>
	<script
		src="<c:url value="resources/js/lib/datatables/cdn.datatables.net/buttons/1.2.2/js/dataTables.buttons.min.js"/>"></script>
	<script
		src="<c:url value="resources/js/lib/datatables/cdn.datatables.net/buttons/1.2.2/js/buttons.flash.min.js"/>"></script>
	<script
		src="<c:url value="resources/js/lib/datatables/cdnjs.cloudflare.com/ajax/libs/jszip/2.5.0/jszip.min.js"/>"></script>
	<script
		src="<c:url value="resources/js/lib/datatables/cdn.rawgit.com/bpampuch/pdfmake/0.1.18/build/pdfmake.min.js"/>"></script>
	<script
		src="<c:url value="resources/js/lib/datatables/cdn.rawgit.com/bpampuch/pdfmake/0.1.18/build/vfs_fonts.js"/>"></script>
	<script
		src="<c:url value="resources/js/lib/datatables/cdn.datatables.net/buttons/1.2.2/js/buttons.html5.min.js"/>"></script>
	<script
		src="<c:url value="resources/js/lib/datatables/cdn.datatables.net/buttons/1.2.2/js/buttons.print.min.js"/>"></script>
	<script
		src="<c:url value="resources/js/lib/datatables/datatables-init.js"/>"></script>
</body>
</html>
