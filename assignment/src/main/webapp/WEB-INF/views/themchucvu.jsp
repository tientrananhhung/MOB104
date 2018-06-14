<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="f" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- Favicon icon -->
<link rel="icon" type="image/png" sizes="16x16"
	href="<c:url value="resources/images/favicon.png" />">
<title>Thêm Chức Vụ - Giao Hàng Chậm</title>
<base href="${pageContext.servletContext.contextPath}/" />

<!-- Bootstrap Core CSS -->
<link
	href="<c:url value="resources/css/lib/bootstrap/bootstrap.min.css" />"
	rel="stylesheet">
<!-- Custom CSS -->
<link href="<c:url value="resources/css/helper.css" />" rel="stylesheet">
<link href="<c:url value="resources/css/style.css" />" rel="stylesheet">
</head>
<body>
	<div id="main-wrapper">
		<!-- End Header  -->
		<jsp:include page="include/header.jsp"></jsp:include>
		<!-- End Header  -->
		<!-- Left Sidebar  -->
		<jsp:include page="include/left-sidebar.jsp"></jsp:include>
		<!-- End Left Sidebar  -->
		<!-- Page wrapper  -->
		<div class="page-wrapper">
			<!-- Bread crumb -->
			<div class="row page-titles">
				<div class="col-md-5 align-self-center">
					<h3 class="text-primary">THÊM CHỨC VỤ</h3>
				</div>
				<div class="col-md-7 align-self-center">
					<ol class="breadcrumb">
						<li class="breadcrumb-item"><a href="javascript:void(0)">Trang
								chủ</a></li>
						<li class="breadcrumb-item"><a href="javascript:void(0)">Chức
								Vụ</a></li>
						<li class="breadcrumb-item active">Thêm Chức Vụ</li>
					</ol>
				</div>
			</div>
			<div class="container-fluid">
				<div class="row">
					<div class="col-md-12">
						<div class="card">
							<div class="card-header">
								<strong class="card-title">Thêm chức vụ</strong>
							</div>
							<br />
							<hr />
							<div class="card-body">
								<div class="typo-headers">
									<f:form action="chucvu/${action}" modelAttribute="chucVu"
										method="POST">
										<div class="form-group">
											<f:label cssClass="control-label mb-1" path="maChucVu">Mã chức vụ</f:label>
											<f:input path="maChucVu" cssClass="form-control"
												placeholder="Xin mời nhập mã chức vụ" />
										</div>
										<div class="form-group">
											<f:label cssClass="control-label mb-1" path="tenChucVu">Tên chức vụ</f:label>
											<f:input path="tenChucVu" cssClass="form-control"
												placeholder="Xin mời nhập tên chức vụ" />
										</div>
										<div>
											<button class="btn btn-success m-b-10 m-l-5">
												<i class="fa fa-plus fa-lg"></i>&nbsp; <span>${tenbutton}</span>
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
</body>
</html>