<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Quản lý nhân viên</title>
</head>
<body>
	<div id="main-wrapper">
		<jsp:include page="include/header.jsp"></jsp:include><br />
		<br />
		<jsp:include page="include/left-sidebar.jsp"></jsp:include>
		<div class="page-wrapper">
			<div class="container-fluid">
				<div class="card">
					<div class="card-body">
						<h1 class="card-title">ABC Group</h1>
						<h3 class="card-subtitle">Danh sách nhân viên</h3>
						<hr style="background-color: #00827c" />
						<div class="table-responsive m-t-40">
							<div class="text-left">
								<a href="quanlynhanvien/themnhanvien"><button type="button"
										class="btn btn-success m-b-10 m-l-5">Thêm mới nhân
										viên</button></a>
							</div>
							<table id="example23"
										class="display nowrap table table-hover table-striped table-bordered"
										cellspacing="0" width="100%">
								<thead>
									<tr>
										<th>Avatar</th>
										<th>Mã NV</th>
										<th>Tên NV</th>
										<th>Email</th>
										<th>Số điện thoại</th>
										<th>Địa chỉ</th>
										<th>CMDN</th>
										<th>Chức vụ</th>
										<th>Lương CB</th>
										<th>Mật khẩu</th>
										<th>Action</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach var="item" items="${dsNhanVien}">
										<tr>
											<td><img style="width: 70px; height: 80px;"
												src="resources/images/${item.anhDaiDien}" /></td>
											<td><c:out value="${item.maNhanVien}" /></td>
											<td><c:out value="${item.tenNhanVien}" /></td>
											<td><c:out value="${item.email}" /></td>
											<td><c:out value="${item.soDienThoai}" /></td>
											<td><c:out value="${item.diaChi}" /></td>
											<td><c:out value="${item.cmnd}" /></td>
											<td><c:out value="${item.chucVu.tenChucVu}" /></td>
											<td><c:out value="${item.luongCoBan}" /></td>
											<td><c:out value="${item.matKhau}" /></td>
											<td>
												<a href="quanlynhanvien/editnhanvien/${item.maNhanVien}" class="btn btn-warning m-b-10 m-l-5"><i class="ti-pencil-alt"></i></a> 
												<a href="quanlynhanvien/xoanhanvien/${item.maNhanVien}" class="btn btn-danger m-b-10 m-l-5"><i class="ti-trash"></i></a>
											</td>
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

	<script
		src="<c:url value="resources/js/lib/datatables/datatables.min.js" />"></script>
	<script
		src="<c:url value="resources/js/lib/datatables/cdn.datatables.net/buttons/1.2.2/js/dataTables.buttons.min.js" />"></script>
	<script
		src="<c:url value="resources/js/lib/datatables/cdn.datatables.net/buttons/1.2.2/js/buttons.flash.min.js" />"></script>
	<script
		src="<c:url value="resources/js/lib/datatables/cdnjs.cloudflare.com/ajax/libs/jszip/2.5.0/jszip.min.js" />"></script>
	<script
		src="<c:url value="resources/js/lib/datatables/cdn.rawgit.com/bpampuch/pdfmake/0.1.18/build/pdfmake.min.js" />"></script>
	<script
		src="<c:url value="resources/js/lib/datatables/cdn.rawgit.com/bpampuch/pdfmake/0.1.18/build/vfs_fonts.js" />"></script>
	<script
		src="<c:url value="resources/js/lib/datatables/cdn.datatables.net/buttons/1.2.2/js/buttons.html5.min.js" />"></script>
	<script
		src="<c:url value="resources/js/lib/datatables/cdn.datatables.net/buttons/1.2.2/js/buttons.print.min.js" />"></script>
	<script
		src="<c:url value="resources/js/lib/datatables/datatables-init.js" />"></script>
	<script
		src="<c:url value="resources/js/lib/nice-select/jquery.nice-select.min.js" />"></script>
	<script
		src="<c:url value="resources/js/lib/nice-select/fastclick.js" />"></script>
	<script src="<c:url value="resources/js/lib/nice-select/prism.js" />"></script>
</body>
</html>
													