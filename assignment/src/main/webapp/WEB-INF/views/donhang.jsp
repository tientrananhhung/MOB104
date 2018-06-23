<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<%
	if (session != null) {
		if (session.getAttribute("loginnv") != "true") {
			response.sendRedirect("/assignment/dangnhapNV");
		}

	}
%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Danh sách đơn hàng</title>
<base href="${pageContext.servletContext.contextPath}/" />
<link rel="icon" type="image/png" sizes="16x16"
	href="<c:url value="resources/images/favicon.png" />">
<!-- Nice Select Box -->
<link rel="stylesheet"
	href="<c:url value="resources/css/nice-select.css" />">
<!-- Bootstrap Core CSS -->
<link
	href="<c:url value="resources/css/lib/bootstrap/bootstrap.min.css" />"
	rel="stylesheet">
<!-- Custom CSS -->
<link href="<c:url value="resources/css/helper.css" />" rel="stylesheet">
<link href="<c:url value="resources/css/style.css" />" rel="stylesheet">
<link href="<c:url value="resources/css/custom.css" />" rel="stylesheet">
</head>
<body>

	<div id="main-wrapper">
		<jsp:include page="include/header.jsp"></jsp:include>
		<jsp:include page="include/left-sidebar.jsp"></jsp:include>
		<div class="page-wrapper">
			<div class="row page-titles">
				<div class="col-md-5 align-self-center">
					<h3 class="text-primary">QUẢN LÝ ĐƠN HÀNG</h3>
				</div>
				<div class="col-md-7 align-self-center">
					<ol class="breadcrumb">
						<li class="breadcrumb-item"><a href="javascript:void(0)">Trang
								Chủ</a></li>
						<li class="breadcrumb-item active">Đơn hàng</li>
					</ol>
				</div>
			</div>
			<div class="container-fluid">
				<div class="row">
					<div class="col-12">
						<div class="card">
							<div class="card-body">
								<h4 class="card-title">Danh sách hóa đơn</h4>
								<a href="quanlydonhang/taodonhang"><button type="button"
										class="btn btn-success m-b-10 m-l-5" data-toggle="tooltip"
										data-placement="top" title="Create order">Tiếp nhận
										hóa đơn</button></a>
								<div class="table-responsive m-t-40">
									<table id="example23"
										class="display nowrap table table-hover table-striped table-bordered"
										cellspacing="0" width="100%">
										<thead>
											<tr>
												<th>Mã đơn hàng</th>
												<th width="90px">Tên mặt hàng</th>
												<th>Tên người nhận</th>
												<th width="80px">Số điện thoại người nhận</th>
												<th>Địa chỉ người nhận</th>
												<th>Địa chỉ gửi</th>
												<th>Trạng thái đơn</th>
												<th>Action</th>
											</tr>
										</thead>
										<tbody>
											<c:forEach var="a" items="${dsDonHang}">
												<tr>
													<td><c:out value="${a.maDonHang}" /></td>
													<td><c:out value="${a.tenMatHang}" /></td>
													<td><c:out value="${a.tenNguoiNhan}" /></td>
													<td><c:out value="${a.sdtNguoiNhan}" /></td>
													<td><c:out value="${a.diaChiNguoiNhan}" /></td>
													<td><c:out value="${a.diaChiKhachHang.diaChiGui}" /></td>
													<td><c:forEach var="b" items="${dsTinhTrangDonHang}">
															<c:if test="${b.donHang.maDonHang == a.maDonHang }">
																<c:out value="${b.trangThai.trangThai}" />
															</c:if>
														</c:forEach></td>
													<th width="120px">
														<a href="quanlydonhang/editdonhang/${a.maDonHang}" class="btn btn-warning m-b-10 m-l-5"><i class="fa fa-cog"></i></a>
														<a href="quanlydonhang/huydonhang/${a.maDonHang}" class="btn btn-danger m-b-10 m-l-5"><i class="icomoon icon-close"></i></a>
													</th>
												</tr>
											</c:forEach>
										</tbody>
									</table>
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
			href="https://www.facebook.com/profile.php?id=100010754627040">Chu
			Thái</a>
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
