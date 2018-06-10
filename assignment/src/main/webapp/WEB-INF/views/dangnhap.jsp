<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Đăng nhập</title>
<link rel="icon" type="image/png"
	href="<c:url value="resources/images/icons/favicon.ico" />" />
<link rel="stylesheet" type="text/css"
	href="<c:url value="resources/vendor/bootstrap/css/bootstrap.min.css" />">
<link rel="stylesheet" type="text/css"
	href="<c:url value="resources/fonts/font-awesome-4.7.0/css/font-awesome.min.css" />">
<link rel="stylesheet" type="text/css"
	href="<c:url value="resources/vendor/animate/animate.css" />">
<link rel="stylesheet" type="text/css"
	href="<c:url value="resources/vendor/css-hamburgers/hamburgers.min.css" />">
<link rel="stylesheet" type="text/css"
	href="<c:url value="resources/vendor/select2/select2.min.css" />">
<link rel="stylesheet" type="text/css"
	href="<c:url value="resources/css/util.css" />">
<link rel="stylesheet" type="text/css"
	href="<c:url value="resources/css/main.css" />">
</head>
<body>

	<div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100">
				<div class="login100-pic js-tilt" data-tilt>
					<img src="<c:url value="resources/images/img-01.png" />" alt="IMG">
				</div>

				<form class="login100-form validate-form">
					<span class="login100-form-title"> TRANG ĐĂNG NHẬP </span>

					<div class="wrap-input100 validate-input"
						data-validate="Valid email is required: ex@abc.xyz">
						<input class="input100" type="text" name="email"
							placeholder="Tên đăng nhập"> <span class="focus-input100"></span>
						<span class="symbol-input100"> <i class="fa fa-envelope"
							aria-hidden="true"></i>
						</span>
					</div>

					<div class="wrap-input100 validate-input"
						data-validate="Password is required">
						<input class="input100" type="password" name="pass"
							placeholder="Mật khẩu"> <span class="focus-input100"></span>
						<span class="symbol-input100"> <i class="fa fa-lock"
							aria-hidden="true"></i>
						</span>
					</div>

					<div class="container-login100-form-btn">
						<button class="login100-form-btn">Đăng nhập</button>
					</div>

					<div class="text-center p-t-12">
						<span class="txt1"> Quên </span> <a class="txt2" href="#"> Mật
							khẩu? </a>
					</div>

					<div class="text-center p-t-136">
						<a class="txt2" href="#"> Trang đăng này dành cho nhân viên <i
							class="fa fa-long-arrow-right m-l-5" aria-hidden="true"></i>
						</a>
					</div>
				</form>
			</div>
		</div>
	</div>

	<c:url value="resources/js/main.js" />
	<script
		src="<c:url value="resources/vendor/jquery/jquery-3.2.1.min.js" />"></script>
	<script src="<c:url value="resources/vendor/bootstrap/js/popper.js" />"></script>
	<script
		src="<c:url value="resources/vendor/bootstrap/js/bootstrap.min.js" />"></script>
	<script src="<c:url value="resources/vendor/select2/select2.min.js" />"></script>
	<script
		src="<c:url value="resources/vendor/tilt/tilt.jquery.min.js" />"></script>
	<script>
		$('.js-tilt').tilt({
			scale : 1.1
		})
	</script>
	<script src="<c:url value="resources/js/main.js" />"></script>

</body>
</html>