<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="f" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Thêm nhân viên</title>
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
								<h4 class="card-title">Danh Sách Đơn Hàng</h4>
								<a href="chucvu/themchucvu" class="btn btn-success m-b-10 m-l-5"
									style="margin-top: 20px;">Thêm mới đơn hàng</a>
								<div class="table-responsive m-t-40">
									<table id="myTable" class="table table-bordered table-striped">
										<thead>
											<tr>
												<th>Mã đơn hàng</th>
												<th>Tên mặt hàng</th>
												<th>Tên người nhận</th>
												<th>Địa chỉ người nhận</th>
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
											<c:forEach var="item" items="${dsChucVu}">
												<tr>
													<td><c:out value="${item.maDonHang}" /></td>
													<td><c:out value="${item.tenMatHang}" /></td>
													<td><c:out value="${item.tenNguoiNhan}" /></td>
													<td><c:out value="${item.diaChiNguoiNhan}" /></td>
													<td><c:out value="${item.sdtNguoiNhan}" /></td>
													<td><c:out value="${item.trongLuong}" /></td>
													<td><c:out value="${item.phiVanChuyen}" /></td>
													<td><c:out value="${item.cachThucTraPhi}" /></td>
													<td><c:out value="${item.tienThuHo}" /></td>
													<td><c:out value="${item.ghiChu}" /></td>
													<td>
														<a href="chucvu/suachucvu/${item.maDonHang}" class="btn btn-warning m-b-10 m-l-5"><i class="ti-pencil-alt"></i></a> 
														<a href="chucvu/xoachucvu/${item.maDonHang}" class="btn btn-danger m-b-10 m-l-5"><i class="ti-trash"></i></a>
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

</body>
</html>