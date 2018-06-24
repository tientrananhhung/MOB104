<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="icon" type="image/png" sizes="16x16"
	href="<c:url value="resources/images/favicon.png" />">
<title>Test API</title>
<base href="${pageContext.servletContext.contextPath}/" />
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
	<select id="ds" style="margin-top: 20px;">
		<option value="dsNhanVien">Danh sách nhân viên</option>
		<option value="dsChucVu">Danh sách chức vụ</option>
	</select>
	<button id="btn-chon" class="btn btn-success m-b-10 m-l-5" style="margin-top: 20px;">Chọn</button>
	<table id="myTable" class="table table-bordered table-striped">
		<thead>
			<tr>
				<th>DEMO API JavaScript</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td>TEST</td>
			</tr>
		</tbody>
	</table>
	<br><br><br><br>
	<div class="container">
		<div class="row">
			<div class="col-lg-12">
				<form id="checknv" action="abc" method="POST">
					<div class=".row">
						<div class="col-lg-3">
							<label for="email">Email</label>
						</div>
						<div class="col-lg-9">
							<input id="email" name="email">
						</div>
						<div class="col-lg-12">
							<div class="alert alert-primary" id="thongbao1"></div>
						</div>
						<div class="col-lg-3">
							<label for="soDienThoai">SĐT</label>
						</div>
						<div class="col-lg-9">
							<input id="soDienThoai" name="soDienThoai">
						</div>
						<div class="col-lg-12">
							<div class="alert alert-primary" id="thongbao2"></div>
						</div>
						<div class="col-lg-3">
							<label for="cmnd">CMND</label>
						</div>
						<div class="col-lg-9">
							<input id="cmnd" name="cmnd">
						</div>
						<div class="col-lg-12">
							<div class="alert alert-primary" id="thongbao3"></div>
						</div>
						<button id="btn-check">Check</button>
					</div>
				</form>
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
	<script>
		$(document).on('click', '#btn-chon', function(event) {
			var ds = $('#ds').val();
			var ck;
			console.log(ds);
			if(ds == 'dsNhanVien'){
				ck = 1;
			}else{
				ck = 2;
			}
			$.ajax({
		        url: '/assignment/api/'+ds,
		        type: 'GET',
		      })
		      .done(function(data) {
		        console.log(data);
		        $('thead').empty();
		        $('tbody').empty();
		        if(ck == 1){
		        	$('thead').append(
		        		'<tr>'+
		        		'<th>Mã Nhân Viên</th>'+
		        		'<th>Tên Nhân Viên</th>'+
		        		'</tr>'
		        	);
		        	$.each(data, function(index, val) {
		        		$('tbody').append(
		        			'<tr>'+
		        			'<td>'+val.maNhanVien+'</td>'+
		        			'<td>'+val.tenNhanVien+'</td>'+
		        			'</tr>'
		        		);
			        });
		        	$('#myTable').draw();
		        	$('#myTable').DataTable();
		        }else{
		        	$('thead').append(
		        		'<tr>'+
		        		'<th>Mã Chức Vụ</th>'+
		        		'<th>Tên Chức Vụ</th>'+
		        		'</tr>'
		        	);
		        	$.each(data, function(index, val) {
		        		$('tbody').append(
		        			'<tr>'+
		        			'<td>'+val.maChucVu+'</td>'+
		        			'<td>'+val.tenChucVu+'</td>'+
		        			'</tr>'
		        		);
			        });
		        	$('#myTable').draw();
		        	$('#myTable').DataTable();
		        }
		        
		      })
		      .fail(function() {
		      })
		      .always(function() {
		      });
		});
		
		$(document).ready(function() {
			$.ajax({
                url: '/assignment/api/dsDonHang',
                type: 'GET',
            })
            .done(function(data) {
            })
            .fail(function() {
            })
            .always(function() {
            });
        });
		
		$(document).on('change', '#email', function(event){
			event.preventDefault();
			var formCheckNV = $('#checknv').serializeArray();
			json = {};
			$.each(formCheckNV, function(index, val) {
				json[val.name] = val.value;
			});
			$.ajax({
				url: "/assignment/api/cknhanvientheoemail",
				type: "POST",
				dataType: 'json',
				data: {
					dataJson: JSON.stringify(json)
				},
			})
			.done(function(data) {
				console.log(data);
				$('#thongbao1').html('Đã trùng');
			})
			.fail(function() {
				$('#thongbao1').html('Được thêm');
				console.log("Không tồn tại");
			})
		});
		$(document).on('change', '#soDienThoai', function(event){
			event.preventDefault();
			var formCheckNV = $('#checknv').serializeArray();
			json = {};
			$.each(formCheckNV, function(index, val) {
				json[val.name] = val.value;
			});
			$.ajax({
				url: "/assignment/api/cknhanvientheosdt",
				type: "POST",
				dataType: 'json',
				data: {
					dataJson: JSON.stringify(json)
				},
			})
			.done(function(data) {
				console.log(data);
				$('#thongbao2').html('Đã trùng');
			})
			.fail(function() {
				$('#thongbao2').html('Được thêm');
				console.log("Không tồn tại");
			})
		});
		$(document).on('change', '#cmnd', function(event){
			event.preventDefault();
			var formCheckNV = $('#checknv').serializeArray();
			json = {};
			$.each(formCheckNV, function(index, val) {
				json[val.name] = val.value;
			});
			$.ajax({
				url: "/assignment/api/cknhanvientheocmnd",
				type: "POST",
				dataType: 'json',
				data: {
					dataJson: JSON.stringify(json)
				},
			})
			.done(function(data) {
				console.log(data);
				$('#thongbao3').html('Đã trùng');
			})
			.fail(function() {
				$('#thongbao3').html('Được thêm');
				console.log("Không tồn tại");
			})
		});
	</script>
</body>
</html>