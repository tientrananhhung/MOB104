<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Thông tin khách hàng</title>
<base href="${pageContext.servletContext.contextPath}/" />
<link rel="stylesheet" type="text/css"
	href="<c:url value="/resources/css/lib/bootstrap/bootstrap.min.css" />">
<link rel="stylesheet" type="text/css"
	href="<c:url value="/resources/css/lib/font-awesome/fontawesome-all.css" />">
<link rel="stylesheet" type="text/css"
	href="<c:url value="/resources/css/styleindex.css" />">
</head>
<body>
	<jsp:include page="include/headerkh.jsp"/>
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
										<img src="images/user.png" alt="avatar customer">
									</div>
								</header>
								<h3>NAME</h3>
								<div class="contacts">
									<button type="button" class="btn btn-success" style="border-color: #28a745; padding: .375rem .75rem;border-radius: .25rem;"><i class="fas fa-plus-circle"></i></button>
									<button type="button" class="btn btn-warning" style="border-color: #ffc107; padding: .375rem .75rem;border-radius: .25rem; color: white;"><i class="fas fa-user-edit"></i></button>
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
										<th scope="col">Địa chỉ</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td rowspan="2" class="col-sdt-kh">0966575492</td>
										<td rowspan="2" class="col-email-kh">tientahpd01815@fpt.edu.vn</td>
										<td>36 Nguyễn Phước Thái</td>
									</tr>
									<tr>
										<td>36 Nguyễn Phước Thái</td>
									</tr>
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
	<!-- End Script -->
	<!-- Custom Script -->
	<script></script>
	<!-- End Custom Script -->
</body>
</html>