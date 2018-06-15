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
<title>JSP Page</title>
</head>
<body>
	<div id="main-wrapper">
		<jsp:include page="include/header.jsp"></jsp:include><br /> <br />
		<jsp:include page="include/left-sidebar.jsp"></jsp:include>
		<div class="page-wrapper">
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
												<th>Loại nhân viên</th>
												<th>Số đơn hàng hoàn thành</th>
												<th>Ghi chú</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td>
													<div class="round-img">
														<a href=""><img src="images/avatar/4.jpg" alt=""></a>
													</div>
												</td>
												<td>John Abraham</td>
												<td><span>Shipper</span></td>
												<td><span class="badge badge-success"><span>456</span></span></td>
												<td>Try hard</td>
											</tr>
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
					<div class="col-lg-8">
						<div class="row" id="val-date-choose">
						</div>
					</div>
					<div>
						<button id="hienthibang" type="button"
							class="btn btn-success btn-flat m-b-10 m-l-5">Success</button>
					</div>
				</div>
				<div class="hienthi"></div>
				<div class="row">
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
												<th></th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td></td>
											</tr>
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
			href="https://www.facebook.com/profile.php?id=100010754627040">Chu
			Thái</a>
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
		$(document).on('change', '#val-skill', function(event) {
			var ck = $(this).val();
			if(ck == 'nv'){
				$('#val-date-choose').empty();
				$('.hienthi').empty();
				$('.hienthi')
						.append(
								'<div class="row">'
										+ '<div class="col-12">'
										+ '<div class="card">'
										+ '<div class="card-body">'
										+ '<h4 class="card-title">Thống kê doanh thu</h4>'
										+ '<div class="table-responsive m-t-40">'
										+ '<table id="example23"'
										+ 'class="display nowrap table table-hover table-striped table-bordered"'
										+ 'cellspacing="0" width="100%">'
										+ '<thead>' + '<tr>'
										+ '<th></th>' + '</tr>'
										+ '</thead>'
										+ '<tbody>' + '<tr>'
										+ '<td></td>' + '</tr>'
										+ '</tbody>'
										+ '</table>' + '</div>'
										+ '</div>' + '</div>'
										+ '</div>' + '</div>');
			}else if(ck == 'dh'){
				$('#val-date-choose').empty();
				$('#val-date-choose').append(
					'<label class="col-form-label" for="val-skill">Từ ngày</label>'+
					'<div class="col-lg-4">'+
					'<input type="date" class="form-control" placeholder="dd/mm/yyyy">'+
					'</div>'+
					'<label class="col-form-label" for="val-skill">Đến ngày</label>'+
					'<div class="col-lg-4">'+
					'<input type="date" class="form-control" placeholder="dd/mm/yyyy">'+
					'</div>'
				);
				$.ajax({
			        url: '/assignment/api/dsDonHang',
			        type: 'GET',
			      })
			      .done(function(data) {
			        console.log(data);
			        
			      })
			      .fail(function() {
			        console.log("error");
			      })
			      .always(function() {
			        console.log("complete");
			      });
			}else if(ck == 'dt'){
				$('#val-date-choose').empty();
				$('#val-date-choose').append(
					'<label class="col-form-label" for="val-skill">Từ ngày</label>'+
					'<div class="col-lg-4">'+
					'<input type="date" class="form-control" placeholder="dd/mm/yyyy">'+
					'</div>'+
					'<label class="col-form-label" for="val-skill">Đến ngày</label>'+
					'<div class="col-lg-4">'+
					'<input type="date" class="form-control" placeholder="dd/mm/yyyy">'+
					'</div>'
				);
			}else{
				$('#val-date-choose').empty();
			}
		});
	</script>
	<script type="text/javascript">
		$(document).on('change', '#val-skill', function(event) {
			var ck = $(this).val();
			if(ck == 'nv'){
				$('#').empty();
			}else if(ck == 'dh'){
				$('#val-date-choose').empty();
				$('#val-date-choose').append(
					'<label class="col-form-label" for="val-skill">Từ ngày</label>'+
					'<div class="col-lg-4">'+
					'<input type="date" class="form-control" placeholder="dd/mm/yyyy">'+
					'</div>'+
					'<label class="col-form-label" for="val-skill">Đến ngày</label>'+
					'<div class="col-lg-4">'+
					'<input type="date" class="form-control" placeholder="dd/mm/yyyy">'+
					'</div>'
				);
				$.ajax({
			        url: '/assignment/api/dsDonHang',
			        type: 'GET',
			      })
			      .done(function(data) {
			        console.log(data);
			        
			      })
			      .fail(function() {
			        console.log("error");
			      })
			      .always(function() {
			        console.log("complete");
			      });
			}else if(ck == 'dt'){
				$('#val-date-choose').empty();
				$('#val-date-choose').append(
					'<label class="col-form-label" for="val-skill">Từ ngày</label>'+
					'<div class="col-lg-4">'+
					'<input type="date" class="form-control" placeholder="dd/mm/yyyy">'+
					'</div>'+
					'<label class="col-form-label" for="val-skill">Đến ngày</label>'+
					'<div class="col-lg-4">'+
					'<input type="date" class="form-control" placeholder="dd/mm/yyyy">'+
					'</div>'
				);
			}else{
				$('#val-date-choose').empty();
			}
		});
	</script>
</body>
</html>
