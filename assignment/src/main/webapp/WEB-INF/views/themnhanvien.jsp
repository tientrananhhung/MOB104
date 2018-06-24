<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="f" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<base href="${pageContext.servletContext.contextPath}/" />
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Thêm nhân viên</title>
<link
	href="<c:url value="/resources/css/lib/bootstrap/bootstrap.min.css" />"
	rel="stylesheet">
<!-- Custom CSS -->
<link href="<c:url value="/resources/css/helper.css" />"
	rel="stylesheet">
<link href="<c:url value="/resources/css/style.css" />" rel="stylesheet">
<link rel="stylesheet" type="text/css"
	href="<c:url value="/resources/css/lib/bootstrap/bootstrap.min.css" />">
</head>
<body>
	<div id="main-wrapper">
		<jsp:include page="include/header.jsp"></jsp:include>
		<jsp:include page="include/left-sidebar.jsp"></jsp:include>
		<div class="page-wrapper">
			<div class="row page-titles">
				<div class="col-md-5 align-self-center">
					<h3 class="text-primary">THÊM NHÂN VIÊN</h3>
				</div>
				<div class="col-md-7 align-self-center">
					<ol class="breadcrumb">
						<li class="breadcrumb-item"><a href="javascript:void(0)">Trang
								chủ</a></li>
						<li class="breadcrumb-item"><a href="javascript:void(0)">Nhân
								viên</a></li>
						<li class="breadcrumb-item active">Thêm nhân viên</li>
					</ol>
				</div>
			</div>
			<div class="container-fluid">
				<div class="row">
					<div class="col-md-12">
						<div class="card">
							<div class="card-header">
								<strong class="card-title">Thêm nhân viên</strong>
							</div>
							<br />
							<hr />
							<div class="card-body">
								<div class="typo-headers">
									<f:form action="quanlynhanvien/${action}" modelAttribute="nhanvien"
										method="POST">
										<f:hidden path="maNhanVien"/>
										<div class="form-group">
											<f:label cssClass="control-label mb-1" path="tenNhanVien">Tên nhân viên</f:label>
											<f:input path="tenNhanVien" cssClass="form-control"
												placeholder="Xin mời nhập tên nhân viên" />
										</div>
										<div id="e1"></div>
										<div class="form-group">
											<f:label cssClass="control-label mb-1" path="email">Email</f:label>
											<f:input type="email" path="email" cssClass="form-control"
												placeholder="Xin mời nhập email nhân viên" />
										</div>
										<div id="e2"></div>
										<div class="form-group">
											<f:label cssClass="control-label mb-1" path="soDienThoai">Số điện thoại</f:label>
											<f:input path="soDienThoai" cssClass="form-control"
												placeholder="Xin mời nhập số điện thoại nhân viên" />
										</div>
										<div id="e3"></div>
										<div class="form-group">
											<f:label cssClass="control-label mb-1" path="diaChi">Địa chỉ</f:label>
											<f:input path="diaChi" cssClass="form-control"
												placeholder="Xin mời nhập địa chỉ nhân viên" />
										</div>
										<div id="e4"></div>
										<div class="form-group">
											<f:label cssClass="control-label mb-1" path="cmnd">Chứng minh nhân dân</f:label>
											<f:input path="cmnd" cssClass="form-control"
												placeholder="Xin mời nhập chứng minh nhân dân" />
										</div>
										<div id="e5"></div>
										<div class="form-group">
											<f:label cssClass="control-label mb-1" path="chucVu.maChucVu">Chức vụ</f:label>
											<f:select path="chucVu.maChucVu" cssClass="form-control">
												<f:options items="${dsChucVu}" />
											</f:select>
										</div>
										<div class="form-group">
											<f:label cssClass="control-label mb-1" path="luongCoBan">Lương cơ bản</f:label>
											<f:input type="number" path="luongCoBan"
												cssClass="form-control"
												placeholder="Xin mời nhập lương cơ bản của nhân viên" />
										</div>
										<div class="form-group">
											<f:label cssClass="control-label mb-1" path="matKhau">Mật khẩu</f:label>
											<f:input path="matKhau" cssClass="form-control"
												placeholder="Xin mời nhập mật khẩu" />
										</div>
										<div id="e6"></div></div>
										<div class="form-group">
											<f:label cssClass="control-label mb-1" path="anhDaiDien">Ảnh đại diện</f:label>
											<f:input path="anhDaiDien" cssClass="form-control"
												type="file" />
										</div>
										<div>
											<button class="btn btn-success m-b-10 m-l-5">
												<i id="bt" class="fa fa-plus fa-lg"></i>&nbsp; <span>${tenbutton}</span>
											</button>
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
	<footer class="footer"> © 2018 All rights reserved. Template
	designed by <a
		href="https://www.facebook.com/profile.php?id=100010754627040">Ấu
		Đoàn Poly</a> </footer>
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
	$('form').submit(function () {	
	    // Get the Login Name value and trim it
	    var tenNhanVien = $.trim($('#tenNhanVien').val());
	    var email = $.trim($('#email').val());
	    var soDienThoai = $.trim($('#soDienThoai').val());
	    var diaChi = $.trim($('#diaChi').val());
	    var cmnd = $.trim($('#cmnd').val());
	    var luongCoBan = $.trim($('#luongCoBan').val());
	    var matKhau = $.trim($('#matKhau').val());
	    // Check if empty of not
	    	$('#e1').empty();
			$('#e2').empty();
			$('#e3').empty();
			$('#e4').empty();
			$('#e5').empty();
			$('#e6').empty();
			var check =true;
	    if (tenNhanVien === '') {
	    	$('#e1').append('<div class="alert alert-danger" role="alert">Không được để trống tên nhân viên</div>');
	    	check = false;
	    }else if(email ===''){
	    	$('#e2').append('<div class="alert alert-danger" role="alert">Không được để trống email</div>');
	    	check = false;
	    }else if(soDienThoai ===''){
	    	$('#e3').append('<div class="alert alert-danger" role="alert">Không được để trống số điện thoại</div>');
	    	check = false;
	    }else if(diaChi ===''){
	    	$('#e4').append('<div class="alert alert-danger" role="alert">Không được để trống địa chỉ</div>');
	    	check = false;
	    }else if(cmnd ===''){
	    	$('#e5').append('<div class="alert alert-danger" role="alert">Không được để trống chứng minh nhân dân</div>');
	    	check = false;
	    }else if(matKhau ===''){
	    	$('#e6').append('<div class="alert alert-danger" role="alert">Không được để trống mật khẩu</div>');
	    	check = false;
	    }else{
	    	$.ajax({
				url : '/assignment/api/checkNV',
				type : 'GET',
			}).done(function(data) {
				console.log(data);
				$.each(data, function(index, val) {
					if(email ==val.email){
				    	$('#e2').append('<div class="alert alert-danger" role="alert">Email không được trùng</div>');
				    	check = false;
				    	break;
				    }else if(soDienThoai==val.soDienThoai){
				    	$('#e3').append('<div class="alert alert-danger" role="alert">Số điện thoại không được trùng</div>');
				    	check = false;
				    	break;
				    }else if(cmnd ==val.cmnd){
				    	$('#e5').append('<div class="alert alert-danger" role="alert">Chứng minh nhân dân không được trùng</div>');
				    	check = false;
				    	break;
				    }
				});
			}).fail(function() {
			}).always(function() {
			});;
	    }
	    check = false;
	    return check;
	});
	</script>
</body>
</html>
