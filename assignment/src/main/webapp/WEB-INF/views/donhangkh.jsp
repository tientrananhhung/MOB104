<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="f"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Giao Hang Chậm - Chậm Mà Chắc</title>
<base href="${pageContext.servletContext.contextPath}/" />
<link rel="stylesheet" type="text/css"
	href="<c:url value="resources/css/lib/bootstrap/bootstrap.min.css" />">
<link rel="stylesheet" type="text/css"
	href="<c:url value="resources/css/lib/font-awesome/fontawesome-all.css" />">
<link rel="stylesheet" type="text/css"
	href="<c:url value="resources/css/styleIndex.css" />">
<base href="${pageContext.servletContext.contextPath}/" />
</head>
<body>
	<jsp:include page="include/headerkh.jsp" />

	<!-- Main -->
	<main id="main" class="site-main" style="min-height: 500px;"> <section
		class="title-page-st title-page">
	<div class="container">
		<h1 class="mashead-title text-center">Quản lý đơn hàng</h1>
		<h3>Xin chào! Tên khách hàng</h3>
		<div class="dropdown">
			<button class="btn btn-secondary dropdown-toggle btn-dropdown-kh"
				type="button" id="dropdownMenuButton" data-toggle="dropdown"
				aria-haspopup="true" aria-expanded="false">Sửa thông tin
				khách hàng</button>
			<div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
				<a class="dropdown-item" href="#">Đổi thông tin khách hàng</a> <a
					class="dropdown-item" href="#">Thoát</a>
			</div>
		</div>
	</div>
	</section>
	<table class="table table-bordered" style="margin-top: 50px;">
		<thead>
			<tr>
				<th scope="col">Thông tin đơn hàng</th>
				<th scope="col">Khách hàng</th>
				<th scope="col">Hàng hóa</th>
				<th scope="col">Ghi chú</th>
				<th scope="col">Thao tác</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td>1</td>
				<td>Minh</td>
				<td>Durex</td>
				<td>Hàng dễ lủng</td>
				<td>
					<button type="button" class="btn btn-info"
						style="border-color: #17a2b8; border-radius: .25rem; transition: color .15s ease-in-out, background-color .15s ease-in-out, border-color .15s ease-in-out, box-shadow .15s ease-in-out; padding: .375rem .75rem;">
						<i class="fas fa-pencil-alt"></i>
					</button>
					<button type="button" class="btn btn-danger"
						style="border-color: #b21f2d; border-radius: .25rem; transition: color .15s ease-in-out, background-color .15s ease-in-out, border-color .15s ease-in-out, box-shadow .15s ease-in-out; padding: .375rem .75rem;">
						<i class="fas fa-trash-alt"></i>
					</button>
				</td>
			</tr>
		</tbody>
	</table>
	</main>
	<!-- End Main -->
	<jsp:include page="include/footerkh.jsp" />
	<!-- Script -->
	<script>
		// When the user scrolls down 20px from the top of the document, show the button
		window.onscroll = function() {
			scrollFunction()
		};

		function scrollFunction() {
			if (document.body.scrollTop > 20
					|| document.documentElement.scrollTop > 20) {
				document.getElementById("myBtn").style.display = "block";
			} else {
				document.getElementById("myBtn").style.display = "none";
			}
		}

		// When the user clicks on the button, scroll to the top of the document
		function topFunction() {
			document.body.scrollTop = 0;
			document.documentElement.scrollTop = 0;
		}
	</script>
	<script src="<c:url value="resources/js/lib/jquery/jquery.min.js" />"></script>
	<script
		src="<c:url value="resources/js/lib/datatables/datatables.min.js" />"></script>
	<script type="text/javascript"
		src="<c:url value="resources/js/lib/bootstrap/js/popper.min.js" />"></script>
	<script type="text/javascript"
		src="<c:url value="resources/js/lib/bootstrap/js/bootstrap.min.js" />"></script>
	<!-- End Script -->
</body>
</html>