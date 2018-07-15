<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="f"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Thông tin khách hàng</title>
<base href="${pageContext.servletContext.contextPath}/" />
<link rel="stylesheet" type="text/css"
	href="<c:url value="/resources/css/lib/sweetalert/sweetalert.css" />">
<link rel="stylesheet" type="text/css"
	href="<c:url value="/resources/css/lib/bootstrap/bootstrap.min.css" />">
<link rel="stylesheet" type="text/css"
	href="<c:url value="/resources/css/lib/font-awesome/fontawesome-all.css" />">
<link rel="stylesheet" type="text/css"
	href="<c:url value="/resources/css/styleindex.css" />">
</head>
<body>
	<jsp:include page="include/headerkh.jsp"/>
	
	<jsp:include page="include/tracuuvandon.jsp" />
	
	<jsp:include page="include/suathongtin.jsp" />
	
	<!-- Modal Save -->
	<div class="modal fade" id="Modal-ThemDiaChi" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="Title-ThemDiaChi">THÊM ĐỊA CHỈ</h5>
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<div class="row">
						<div class="col-lg-12">
							<f:form action="thongtin" method="POST" modelAttribute="thongTinKH" id="form-themdiachi">
								<div class="row">
									<f:hidden path="maDiaChi"/>
									<f:hidden path="khachHang.maKhachHang"/>
									<div class="col-lg-3">
										<f:label path="diaChiGui" cssClass="col-form-label">Địa chỉ:</f:label>
									</div>
									<div class="col-lg-9">
										<f:input path="diaChiGui" cssClass="form-control" cssStyle="width: 100%;" placeholder="Xin vui lòng nhập địa chỉ"/>
									</div>
								</div>
							</f:form>
						</div>
					</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary btn-secondary-format" data-dismiss="modal">Hủy</button>
					<button type="button" class="btn btn-primary btn-primary-format" id="save-themdiachi">Lưu</button>
				</div>
			</div>
		</div>
	</div>
	<!-- End Modal -->
	
	<!-- Modal Update -->
	<div class="modal fade" id="Modal-SuaDiaChi" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="Title-SuaDiaChi">SỬA ĐỊA CHỈ</h5>
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<div class="row">
						<div class="col-lg-12">
							<form action="thongtin" method="POST" id="form-suadiachi">
								<div class="row">
									<input value="" id="madiachi" name="madiachi" hidden>
									<input value="" id="makhachhang" name="makhachhang" hidden>
									<div class="col-lg-3">
										<label for="diachigui" class="col-form-label">Địa chỉ</label>
									</div>
									<div class="col-lg-9">
										<input id="diachigui" name="diachigui" class="form-control" style="width: 100%;" placeholder="Xin vui lòng nhập địa chỉ" />
									</div>
								</div>
							</form>
						</div>
					</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary btn-secondary-format" data-dismiss="modal">Hủy</button>
					<button type="button" class="btn btn-primary btn-primary-format" id="update-diachi">Sửa</button>
				</div>
			</div>
		</div>
	</div>
	<!-- End Modal -->
	
	
	<!-- Main -->
	<main style="min-height: 500px;">
		<div class="container-fluid">
			<div class="row">
				<div class="col-lg-12">
					<div class="card">
						<div class="card-body">
							<div class="card-two">
								<header>
									<div class="avatar">
										<img src="images/user.png" alt="avatar customer" id="customer-avartar">
									</div>
								</header>
								<h3 id="name-kh"></h3>
								<div class="contacts">
									<button type="button" class="btn btn-success btn-success-format" id="save-diachikh" data-toggle="modal" data-target="#Modal-ThemDiaChi"><i class="fas fa-plus-circle"></i></button>
									<button type="button" class="btn btn-warning btn-warning-format" id="edit-suathongtin" style="color: white;" data-toggle="modal" data-target="#Modal-suathongtin"><i class="fas fa-user-edit"></i></button>
									<div class="clear"></div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-12">
					<div class="card">
						<div class="card-body">
							<table class="table table-bordered">
								<thead>
									<tr>
										<th scope="col">Số điện thoại</th>
										<th scope="col">Email</th>
										<th colspan="2" scope="col">Địa chỉ</th>
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
	</main>
	<!-- End Main -->
	<jsp:include page="include/footerkh.jsp"/>
	<!-- Script -->
	<script src="<c:url value="/resources/js/lib/jquery/jquery.min.js" />"></script>
	<script type="text/javascript" src="<c:url value="/resources/js/lib/bootstrap/js/bootstrap.min.js" />"></script>
	<script type="text/javascript" src="<c:url value="/resources/js/lib/sweetalert/sweetalert.min.js" />"></script>
	<script type="text/javascript" src="<c:url value="/resources/js/lib/sweetalert/sweetalert.init.js" />"></script>
	<script type="text/javascript" src="<c:url value="/resources/js/custom.js" />"></script>
	<!-- End Script -->
	<!-- Custom Script -->
	
	<script type="text/javascript">
		$(document).ready(function() {
			activeLinkNav();
		});
	</script>
	
	<script type="text/javascript">
		$(document).on('click', '#timHoaDon', function(event) {
			var maHoaDon = $('#maHoaDon').val();
			if(maHoaDon != null && maHoaDon != undefined && maHoaDon != ''){
				traDonHang(maHoaDon);
			}else{
				$('.daPho').empty();
				$('.tt-kh').empty();
				$('.daPho').append(
					'<div class="alert alert-danger" role="alert"> Mã hóa đơn không tồn tại</div>'
				);
			}
		});
	</script>
	
	<script type="text/javascript">
		$(document).on('click', '#traCuuDH', function(event) {
			resetTraCuuDonHang();
		});
	</script>
	
	<script type="text/javascript">
		$(document).ready(function() {
			loadInfoCustomer(${maKhachHang});
		});
	</script>
	<script type="text/javascript">
		$(document).on('click', '#save-diachikh', function(){
			$('#diaChiGui').val('');
		});
	</script>
	<script type="text/javascript">
		$(document).on('click', '#save-themdiachi', function(event) {
			event.preventDefault();
			var formThemDiaChi = $('#form-themdiachi').serializeArray();
			json = {};
			$.each(formThemDiaChi, function(index, val) {
				json[val.name] = val.value;
			});
			
			$.ajax({
				url: "/assignment/api/themdiachikh",
				type: "POST",
				data: {
					dataJson: JSON.stringify(json)
				},
			})
			.done(function(data) {
				loadInfoCustomer(${maKhachHang});
			})
			.fail(function() {
			})
			.always(function() {
				$('#Modal-ThemDiaChi').modal("hide");
			});
		});
	</script>
	<script type="text/javascript">
		$(document).on('click', '#update-diachikh', function(event) {
			event.preventDefault();
			var dataID = $(this).attr('data-adr');
			
			$.ajax({
				url: '/assignment/api/timkiemdiachikh/'+dataID,
				type: "GET",
			})
			.done(function(data) {
				$('#Modal-SuaDiaChi').modal('show');
				$('#madiachi').attr('value', data.maDiaChi);
				$('#makhachhang').attr('value', ${maKhachHang});
				$('#diachigui').val(data.diaChiGui);
			});
		});
	</script>
	<script type="text/javascript">
		$(document).on('click', '#update-diachi', function(event){
			event.preventDefault();
			
			var formSuaDiaChi = $('#form-suadiachi').serializeArray();
			jsonSua = {};
			$.each(formSuaDiaChi, function(index, val) {
				jsonSua[val.name] = val.value;
			});
			$.ajax({
				url: "/assignment/api/suadiachikh",
				type: "POST",
				dataType: 'json',
				data: {
					dataJson: JSON.stringify(jsonSua)
				},
			})
			.done(function(data) {
				loadInfoCustomer(${maKhachHang});
			})
			.fail(function() {
			})
			.always(function() {
				$('#Modal-SuaDiaChi').modal("hide");
				loadInfoCustomer(${maKhachHang});
			});
		});
	</script>
	<script type="text/javascript">
		$(document).on('click', '#delete-diachikh', function(){
			var id = $(this).attr('data-adr');
			xoaDiaChiKH(id, ${maKhachHang});
		});
	</script>
	<!-- End Custom Script -->
</body>
</html>