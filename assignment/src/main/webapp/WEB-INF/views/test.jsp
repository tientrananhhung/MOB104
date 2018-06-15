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
		        }
		        
		      })
		      .fail(function() {
		        console.log("error");
		      })
		      .always(function() {
		        console.log("complete");
		      });
		});
	</script>
</body>
</html>