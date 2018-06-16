<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="f" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Tạo tình trạng đơn hàng</title>
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
					<h3 class="text-primary">TÌNH TRANG ĐƠN HÀNG</h3>
				</div>
				<div class="col-md-7 align-self-center">
					<ol class="breadcrumb">
						<li class="breadcrumb-item"><a href="javascript:void(0)">Trang
								chủ</a></li>
						<li class="breadcrumb-item"><a href="javascript:void(0)">Tình
								trạng đơn hàng</a></li>
						<li class="breadcrumb-item active">Tạo tình trạng đơn</li>
					</ol>
				</div>
			</div>
			<div class="container-fluid">
				<div class="row">
					<div class="col-lg-12">
						<div class="card">
							<h2 class="box-title m-t-40">Tình trạng đơn hàng</h2>
							<hr style="background-color: #F2711C; height: 2px">
							<br />
							<!--/row-->
							<div class="card-body">
								<div class="typo-headers">
									<f:form action="${action}" modelAttribute="tinhtrangDH"
										method="POST">
										<f:hidden path="id" />
										<div class="form-group">
											<f:label cssClass="control-label mb-1" path="donHang.maDonHang">Mã đơn hàng</f:label>
											<f:select path="donHang.maDonHang" cssClass="form-control">
												<f:options items="${dsDonHang}" />
											</f:select>
										</div>
										<div class="form-group">
											<f:label cssClass="control-label mb-1" path="nhanVien.tenNhanVien">Nhân viên</f:label>
											<f:select path="nhanVien.tenNhanVien" cssClass="form-control">
												<f:options items="${dsNhanVien}" />
											</f:select>
										</div>
										<div class="form-group">
											<f:label cssClass="control-label mb-1" path="trangThai.trangThai">Trạng thái</f:label>
											<f:select path="trangThai.trangThai" cssClass="form-control">
												<f:options items="${dsTrangThai}" />
											</f:select>
										</div>
										<div class="form-group">
											<f:label cssClass="control-label mb-1" path="thoiGian">Thời gian</f:label>
											<f:input path="thoiGian" cssClass="form-control" type="Date" />
										</div><br/>
										<hr style="background-color: #00a400">
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
									</f:form>
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
