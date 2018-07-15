<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!-- Header -->
<header>
	<nav class="navbar navbar-expand-lg navbar-light bg-light" style="background-color: white !important">
		<div class="container">
			<a class="navbar-brand" href="#">
				<img src="<c:url value="resources/images/logo1995.png" />" height="80" class="d-inline-block align-top" alt="">
			</a>
			<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
		    	<span class="navbar-toggler-icon"></span>
		  	</button>
			
			<div class="collapse navbar-collapse" id="navbarSupportedContent" style="flex-grow: 0;">
				<ul class="navbar-nav mr-auto form-inline">
					<li class="nav-item current-item">
						<a class="nav-link" href="">Trang Chủ</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="#">Về Chúng Tôi</a>
					</li>
					<li class="nav-item">
						<a id="traCuuDH" class="nav-link" href="#" data-toggle="modal" data-target="#exampleModal">Tra Cứu ĐH</a>
					</li>
					<%if (session.getAttribute("loginkh") == "true") {
					out.print(
							"<li class='nav-item'><a class='nav-link' href='thongtin'>Thông Tin Cá Nhân</a></li><li class='nav-item'><a class='nav-link' href='donhangkh'>Đơn Hàng</a></li><li class='nav-item'><a class='nav-link' href='logoutkh'>Đăng Xuất</a></li>");
					} ;%>
				</ul>
			</div>
		</div>
	</nav>
</header>
<!-- End Header -->