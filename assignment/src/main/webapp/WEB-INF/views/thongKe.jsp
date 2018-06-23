<%-- 
    Document   : thongKe
    Created on : Jun 9, 2018, 3:35:31 PM
    Author     : ACER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Thống kê</title>
</head>
<body>
	<div id="main-wrapper">
		<jsp:include page="include/header.jsp"></jsp:include>
		<jsp:include page="include/left-sidebar.jsp"></jsp:include>
		<div class="page-wrapper">
		<div class="row page-titles">
				<div class="col-md-5 align-self-center">
					<h3 class="text-primary">DANH SÁCH THỐNG KÊ</h3>
				</div>
				<div class="col-md-7 align-self-center">
					<ol class="breadcrumb">
						<li class="breadcrumb-item"><a href="javascript:void(0)">Trang
								chủ</a></li>
						<li class="breadcrumb-item active">Thống kê</li>
					</ol>
				</div>
			</div>
			<div class="container-fluid">
				<div class="row">
					<div class="col-lg-12">
						<div class="card">
							<div class="card-title">
								<h4>Danh sách các nhân viên xuất sắc trong tháng</h4>
								<h4>&nbsp1</h4>
							</div>
							<div class="card-body">
								<div class="table-responsive">
									<table class="table">
										<thead>
											<tr>
												<th>Ảnh</th>
												<th>Tên</th>
												<th>Chức vụ</th>
												<th>Số đơn hàng hoàn thành</th>
											</tr>
										</thead>
										<tbody>
											<c:forEach items="${topNhanVien}" var="item" begin="0"
												end="2">
												<tr>
													<td><img style="width: 70px; height: 80px;"
														src="resources/images/${item.anhDaiDien}" /></td>
													<td><c:out value="${item.tenNhanVien}" /></td>
													<td><c:out value="${item.chucVu.tenChucVu}" /></td>
													<td><c:out value="${item.matKhau}" /></td>
												</tr>
											</c:forEach>
										</tbody>
									</table>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="form-group row">
					<label class="col-lg-1 col-form-label" for="val-skill">Dữ
						liệu</label>
						<div class="col-lg-2">
							<select class="form-control" id="val-skill" name="val-skill">
								<option value="">Please select</option>
								<option value="dt">Doanh thu</option>
								<option value="dh">Đơn hàng</option>
								<option value="nv">Lương nhân viên</option>
							</select>
						</div>
						<div class="col-lg-6">
							<div class="row" id="val-date-choose"></div>
						</div>
						<div class="col-lg-3" style="text-align: right;">
						<button type="button" id="click"
										class="btn btn-success m-b-10 m-l-5">Thống kê</button>
										</div>
						<div>
						</div>
				</div>
				<div class="row" id="bangdonhang">
					<div class="col-12">
						<div class="card">
							<div class="card-body">
								<h4 class="card-title">Thống kê đơn hàng</h4>
								<div class="table-responsive m-t-40">
									<table id="example23"
										class="display nowrap table table-hover table-striped table-bordered"
										cellspacing="0" width="100%">
										<thead>
											<tr>
												<th>Mã đơn hàng</th>
												<th>Tên mặt hàng</th>
												<th>Tên người nhận</th>
												<th>Thời gian nhận đơn</th>
											</tr>
										</thead>
										<tbody id="bangdh">
										</tbody>
									</table >
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="row" id="bangdoanhthu">
					<div class="col-12">
						<div class="card">
							<div class="card-body">
								<h4 class="card-title">Thống kê doanh thu</h4>
								<div class="table-responsive m-t-40">
									<table id="example23"
										class="display nowrap table table-hover table-striped table-bordered"
										cellspacing="0" width="100%">
										<thead>
											<tr>
												<th>Số đơn hàng</th>
												<th>Tổng doanh thu</th>
											</tr>
										</thead>
										<tbody id="bangdt">
										</tbody>
									</table>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="row" id="bangluongcoban">
					<div class="col-12">
						<div class="card">
							<div class="card-body">
								<h4 class="card-title">Thống kê lương cơ bản</h4>
								<div class="table-responsive m-t-40">
									<table id="example23"
										class="display nowrap table table-hover table-striped table-bordered"
										cellspacing="0" width="100%">
										<thead>
											<tr>
												<th>Mã nhân viên</th>
												<th>Tên nhân viên</th>
												<th>Lương cơ bản</th>
											</tr>
										</thead>
										<tbody id="banglcb">
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
	</div>
	</div>
	<footer class="footer">
		© 2018 All rights reserved. Template designed by <a
			href="https://www.facebook.com/profile.php?id=100010754627040"></a>
	</footer>
	<script src="https://code.jquery.com/jquery-1.10.2.js"></script>
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
	<script type="text/javascript">
		$(document)
				.on(
						'change',
						'#val-skill',
						function(event) {
							var ck = $(this).val();
							if (ck == 'nv') {
								$('#val-date-choose').empty();
							} else if (ck == 'dh') {
									$('#val-date-choose').empty();
									$('#val-date-choose')
									.append(
											'<label class="col-form-label" for="val-skill">Từ ngày</label>'
													+ '<div class="col-lg-4">'
													+ '<input type="date" id="from" class="form-control" placeholder="dd/mm/yyyy">'
													+ '</div>'
													+ '<label class="col-form-label" for="val-skill">Đến ngày</label>'
													+ '<div class="col-lg-4">'
													+ '<input type="date" id="to" class="form-control" placeholder="dd/mm/yyyy">'
													+ '</div>');
							} else if (ck == 'dt') {
								
									$('#val-date-choose').empty();
									$('#val-date-choose')
									.append(
											'<label class="col-form-label" for="val-skill">Từ ngày</label>'
													+ '<div class="col-lg-4">'
													+ '<input type="date" id="from2" class="form-control" placeholder="dd/mm/yyyy">'
													+ '</div>'
													+ '<label class="col-form-label" for="val-skill">Đến ngày</label>'
													+ '<div class="col-lg-4">'
													+ '<input type="date" id="to2" class="form-control" placeholder="dd/mm/yyyy">'
													+ '</div>');
									
							} else {
								$('#val-date-choose').empty();
							}
						});
	</script>	
	<script type="text/javascript">
	$('#bangdonhang').hide();
	$('#bangluongcoban').hide();
	$('#bangdoanhthu').hide();
		$(document)
				.on(
						'click',
						'#click',
						function(event) {
							var ck = $('#val-skill').val();
							if (ck == 'nv') {
								$('#val-date-choose').empty();
								$.ajax({
									url : '/assignment/api/dsNhanVien',
									type : 'GET',
								}).done(function(data) {
									console.log(data);
									$('#val-date-choose').empty();
									$('#banglcb').empty();
									$.each(data, function(index, val) {
										var d = new Date(val.thoiGian);
										var formattedDate = d.getDate() + "/" + (d.getMonth()+1) + "/" + d.getFullYear();
										var hours = (d.getHours() < 10) ? "0" + d.getHours() : d.getHours();
										var minutes = (d.getMinutes() < 10) ? "0" + d.getMinutes() : d.getMinutes();
										var formattedTime = hours + ":" + minutes;

										formattedDate = formattedDate + " " + formattedTime;
												$('#banglcb').append(
												'<tr>'
												+'<td>'
												+val.maNhanVien
												+'</td>'
												+'<td>'
												+val.tenNhanVien
												+'</td>'
												+'<td>'
												+val.luongCoBan
												+'</td>'
												+'</tr>'
												);
									});
									$('#bangdonhang').hide();
									$('#bangluongcoban').show();
									$('#bangdoanhthu').hide();
										
								}).fail(function() {
								}).always(function() {
								});
							} else if (ck == 'dh') {
								$.ajax({
									url : '/assignment/api/tinhtrangdonhang',
									type : 'GET',
								}).done(function(data) {
									$('#bangdh').empty();
									var a =  new Date($('#from').val());
									var b = new Date($('#to').val());
									a = a.getTime();
									b =b.getTime();
									$.each(data, function(index, val) {
										var d = new Date(val.thoiGian);
										var formattedDate = d.getDate() + "/" + (d.getMonth()+1) + "/" + d.getFullYear();
										var hours = (d.getHours() < 10) ? "0" + d.getHours() : d.getHours();
										var minutes = (d.getMinutes() < 10) ? "0" + d.getMinutes() : d.getMinutes();
										var formattedTime = hours + ":" + minutes;
										formattedDate = formattedDate + " " + formattedTime;
										if(val.trangThai.maTrangThai=="daTao"&& a<= val.thoiGian&&b>=val.thoiGian){
												$('#bangdh').append(
												'<tr>'
												+'<td>'
												+val.donHang.maDonHang
												+'</td>'
												+'<td>'
												+val.donHang.tenMatHang
												+'</td>'
												+'<td>'
												+val.donHang.tenNguoiNhan
												+'</td>'
												+'<td>'
												+formattedDate
												+'</td>'
												+'</tr>'
												);
										}else if(val.trangThai.maTrangThai=="daTao"&& a<= val.thoiGian){
											$('#bangdh').append(
													'<tr>'
													+'<td>'
													+val.donHang.maDonHang
													+'</td>'
													+'<td>'
													+val.donHang.tenMatHang
													+'</td>'
													+'<td>'
													+val.donHang.tenNguoiNhan
													+'</td>'
													+'<td>'
													+formattedDate
													+'</td>'
													+'</tr>'
													);
										}else if(val.trangThai.maTrangThai=="daTao"&& b>= val.thoiGian){
											$('#bangdh').append(
													'<tr>'
													+'<td>'
													+val.donHang.maDonHang
													+'</td>'
													+'<td>'
													+val.donHang.tenMatHang
													+'</td>'
													+'<td>'
													+val.donHang.tenNguoiNhan
													+'</td>'
													+'<td>'
													+formattedDate
													+'</td>'
													+'</tr>'
													);
										}else if(val.trangThai.maTrangThai=="daTao"&&isNaN( a)&&isNaN(b)){
											$('#bangdh').append(
													'<tr>'
													+'<td>'
													+val.donHang.maDonHang
													+'</td>'
													+'<td>'
													+val.donHang.tenMatHang
													+'</td>'
													+'<td>'
													+val.donHang.tenNguoiNhan
													+'</td>'
													+'<td>'
													+formattedDate
													+'</td>'
													+'</tr>'
													);
										}
									
									});
									$('#bangdonhang').show();
									$('#bangluongcoban').hide();
									$('#bangdoanhthu').hide();
										
								}).fail(function() {
								}).always(function() {
								});
							} else if (ck == 'dt') {
								$.ajax({
									url : '/assignment/api/tinhtrangdonhang',
									type : 'GET',
								}).done(function(data) {
									$('#bangdt').empty();
									var a1 =  new Date($('#from2').val());
									var b1 = new Date($('#to2').val());
									a1 = a1.getTime();
									b1 =b1.getTime();
									var a =0;
									var b =0;
									$.each(data, function(index, val) {
										if(val.trangThai.maTrangThai=="daTiepNhan"&&a1<=val.thoiGian&&b1>= val.thoiGian){
												a++;
												b = b+ (val.donHang.phiVanChuyen);
										}else if(val.trangThai.maTrangThai=="daTiepNhan"&&a1<=val.thoiGian){
											a++;
											b = b+ (val.donHang.phiVanChuyen);
										}else if(val.trangThai.maTrangThai=="daTiepNhan"&&b1>= val.thoiGian){
											a++;
											b = b+ (val.donHang.phiVanChuyen);
										}else if(val.trangThai.maTrangThai=="daTiepNhan"&&isNaN(a1)&&isNaN(b1)){
											a++;
											b = b+ (val.donHang.phiVanChuyen);
										}
									});
									$('#bangdt').append(
											'<tr>'
											+'<td>'
											+a
											+'</td>'
											+'<td>'
											+b+' vnd'
											+'</td>'
											+'</tr>'
											);
									$('#bangdonhang').hide();
									$('#bangluongcoban').hide();
									$('#bangdoanhthu').show();
								}).fail(function() {
								}).always(function() {
								});
							} else {
								$('#val-date-choose').empty();
								$('#bangdonhang').hide();
								$('#bangluongcoban').hide();
								$('#bangdoanhthu').hide();
							}
						});
	</script>
</body>
</html>
