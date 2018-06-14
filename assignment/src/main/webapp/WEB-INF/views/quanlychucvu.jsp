<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Quản Lý Chức Vụ - Giao Hàng Chậm</title>
<base href="${pageContext.servletContext.contextPath}/" />
<link rel="icon" type="image/png" sizes="16x16"
	href="<c:url value="resources/images/favicon.png" />">
<!-- Nice Select Box -->
<link rel="stylesheet" href="<c:url value="resources/css/nice-select.css" />">
<!-- Bootstrap Core CSS -->
<link href="<c:url value="resources/css/lib/bootstrap/bootstrap.min.css" />" rel="stylesheet">
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
			<!-- Bread crumb -->
			<div class="row page-titles">
				<div class="col-md-5 align-self-center">
					<h3 class="text-primary">QUẢN LÝ CHỨC VỤ</h3>
				</div>
				<div class="col-md-7 align-self-center">
					<ol class="breadcrumb">
						<li class="breadcrumb-item"><a href="javascript:void(0)">Trang
								Chủ</a></li>
						<li class="breadcrumb-item active">Chức Vụ</li>
					</ol>
				</div>
			</div>
			<div class="container-fluid">
				<!-- Start Page Content -->
				<div class="row">
					<div class="col-12">
						<div class="card">
							<div class="card-body">
								<h4 class="card-title">Danh Sách Chức Vụ</h4>
								<a href="chucvu/themchucvu" class="btn btn-success m-b-10 m-l-5"
									style="margin-top: 20px;">Thêm</a>
								<div class="table-responsive m-t-40">
									<table id="myTable" class="table table-bordered table-striped">
										<thead>
											<tr>
												<th>Mã chức vụ</th>
												<th>Tên chức vụ</th>
												<th>Chức năng</th>
											</tr>
										</thead>
										<tbody>
											<c:forEach items="${dsChucVu}" var="l">
												<tr>
													<td>${l.maChucVu}</td>
													<td>${l.tenChucVu}</td>
													<td>
														<a href="" class="btn btn-danger m-b-10 m-l-5"><i class="ti-trash"></i></a>
													</td>
												</tr>
											</c:forEach>
										</tbody>
									</table>
								</div>
							</div>
							<!-- end card-body -->
						</div>
						<!-- end card -->
					</div>
				</div>
			</div>
			<!-- end container-fluid -->
		</div>
		<!-- end page-wrapper -->
	</div>
	<!-- end main-wrapper -->
	<!-- All Jquery -->
	<script src="<c:url value="resources/js/lib/jquery/jquery.min.js" />"></script>
	<!-- Bootstrap tether Core JavaScript -->
	<script
		src="<c:url value="resources/js/lib/bootstrap/js/popper.min.js" />"></script>
	<script
		src="<c:url value="resources/js/lib/bootstrap/js/bootstrap.min.js" />"></script>
	<!-- slimscrollbar scrollbar JavaScript -->
	<script src="<c:url value="resources/js/jquery.slimscroll.js" />"></script>
	<!--Menu sidebar -->
	<script src="<c:url value="resources/js/sidebarmenu.js" />"></script>
	<!--stickey kit -->
	<script
		src="<c:url value="resources/js/lib/sticky-kit-master/dist/sticky-kit.min.js" />"></script>
	<!--Custom JavaScript -->
	<script src="<c:url value="resources/js/custom.min.js" />"></script>

	<script src="<c:url value="resources/js/lib/datatables/datatables.min.js" />"></script>
	<script src="<c:url value="resources/js/lib/datatables/cdn.datatables.net/buttons/1.2.2/js/dataTables.buttons.min.js" />"></script>
	<script src="<c:url value="resources/js/lib/datatables/cdn.datatables.net/buttons/1.2.2/js/buttons.flash.min.js" />"></script>
	<script src="<c:url value="resources/js/lib/datatables/cdnjs.cloudflare.com/ajax/libs/jszip/2.5.0/jszip.min.js" />"></script>
	<script src="<c:url value="resources/js/lib/datatables/cdn.rawgit.com/bpampuch/pdfmake/0.1.18/build/pdfmake.min.js" />"></script>
	<script src="<c:url value="resources/js/lib/datatables/cdn.rawgit.com/bpampuch/pdfmake/0.1.18/build/vfs_fonts.js" />"></script>
	<script src="<c:url value="resources/js/lib/datatables/cdn.datatables.net/buttons/1.2.2/js/buttons.html5.min.js" />"></script>
	<script src="<c:url value="resources/js/lib/datatables/cdn.datatables.net/buttons/1.2.2/js/buttons.print.min.js" />"></script>
	<script src="<c:url value="resources/js/lib/datatables/datatables-init.js" />"></script>
	<script src="<c:url value="resources/js/lib/nice-select/jquery.nice-select.min.js" />"></script>
	<script src="<c:url value="resources/js/lib/nice-select/fastclick.js" />"></script>
	<script src="<c:url value="resources/js/lib/nice-select/prism.js" />"></script>
</body>
</html>