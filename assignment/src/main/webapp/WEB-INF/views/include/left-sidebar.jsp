<%-- 
    Document   : left-sidebar
    Created on : 28-Mar-2018, 01:48:07
    Author     : tgdd
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>JSP Page</title>
<link rel="icon" type="image/png" sizes="16x16"
	href="<c:url value="/resources/images/favicon.png" />">
<title></title>
<!-- Bootstrap Core CSS -->
<link
	href="<c:url value="/resources/css/lib/bootstrap/bootstrap.min.css" />"
	rel="stylesheet">
<!-- Custom CSS -->
<link href="<c:url value="/resources/css/helper.css" />"
	rel="stylesheet">
<link href="<c:url value="/resources/css/style.css" />" rel="stylesheet">
</head>
<body>
	<div class="left-sidebar">
		<!-- Sidebar scroll-->
		<div class="scroll-sidebar">
			<!-- Sidebar navigation-->
			<nav class="sidebar-nav">
				<ul id="sidebarnav">
					<li class="nav-devider"></li>
					<li><a class="has-arrow  " href="index.htm"><i
							class="fa fa-home"></i><span class="hide-menu">Trang chủ</span></a></li>
					<li class="nav-label">Chức năng</li>
					<li><a class="has-arrow  " href="quanlynhanvien"
						aria-expanded="false"><i class="fa fa-address-card"></i><span
							class="hide-menu">Quản lý nhân viên</span></a></li>
					<li><a class="has-arrow  " href="quanlydonhang"
						aria-expanded="false"><i class="fa fa-building"></i></i><span
							class="hide-menu">Quản lý hóa đơn</span></a></li>
					<li><a class="has-arrow " href="chucvu/"
						aria-expanded="false"><i class="fa fa-graduation-cap"></i><span
							class="hide-menu">Quản lý chức vụ</span></a></li>
					<li><a class="has-arrow  " href="quanlythongke"
						aria-expanded="false"><i class="fa fa-bar-chart"></i><span
							class="hide-menu">Thống kê</span></a></li>
					<!--                            <li class="nav-label">Features</li>
                                                    <li> <a class="has-arrow  " href="#" aria-expanded="false"><i class="fa fa-suitcase"></i><span class="hide-menu">Bootstrap UI <span class="label label-rouded label-warning pull-right">6</span></span></a>
                                                        <ul aria-expanded="false" class="collapse">
                                                            <li><a href="ui-alert.html">Alert</a></li>
                                                            <li><a href="ui-button.html">Button</a></li>
                                                            <li><a href="ui-dropdown.html">Dropdown</a></li>
                                                            <li><a href="ui-progressbar.html">Progressbar</a></li>
                                                            <li><a href="ui-tab.html">Tab</a></li>
                                                            <li><a href="ui-typography.html">Typography</a></li>
                                                        </ul>
                                                    </li>
                                                    <li> <a class="has-arrow  " href="#" aria-expanded="false"><i class="fa fa-suitcase"></i><span class="hide-menu">Components <span class="label label-rouded label-danger pull-right">6</span></span></a>
                                                        <ul aria-expanded="false" class="collapse">
                                                            <li><a href="uc-calender.html">Calender</a></li>
                                                            <li><a href="uc-datamap.html">Datamap</a></li>
                                                            <li><a href="uc-nestedable.html">Nestedable</a></li>
                                                            <li><a href="uc-sweetalert.html">Sweetalert</a></li>
                                                            <li><a href="uc-toastr.html">Toastr</a></li>
                                                            <li><a href="uc-weather.html">Weather</a></li>
                                                        </ul>
                                                    </li>
                                                    <li> <a class="has-arrow  " href="#" aria-expanded="false"><i class="fa fa-wpforms"></i><span class="hide-menu">Forms</span></a>
                                                        <ul aria-expanded="false" class="collapse">
                                                            <li><a href="form-basic.html">Basic Forms</a></li>
                                                            <li><a href="form-layout.html">Form Layout</a></li>
                                                            <li><a href="form-validation.html">Form Validation</a></li>
                                                            <li><a href="form-editor.html">Editor</a></li>
                                                            <li><a href="form-dropzone.html">Dropzone</a></li>
                                                        </ul>
                                                    </li>
                                                    <li> <a class="has-arrow  " href="#" aria-expanded="false"><i class="fa fa-table"></i><span class="hide-menu">Tables</span></a>
                                                        <ul aria-expanded="false" class="collapse">
                                                            <li><a href="table-bootstrap.html">Basic Tables</a></li>
                                                            <li><a href="table-datatable.html">Data Tables</a></li>
                                                        </ul>
                                                    </li>
                                                    <li class="nav-label">Layout</li>
                                                    <li> <a class="has-arrow  " href="#" aria-expanded="false"><i class="fa fa-columns"></i><span class="hide-menu">Layout</span></a>
                                                        <ul aria-expanded="false" class="collapse">
                                                            <li><a href="layout-blank.html">Blank</a></li>
                                                            <li><a href="layout-boxed.html">Boxed</a></li>
                                                            <li><a href="layout-fix-header.html">Fix Header</a></li>
                                                            <li><a href="layout-fix-sidebar.html">Fix Sidebar</a></li>
                                                        </ul>
                                                    </li>
                                                    <li class="nav-label">EXTRA</li>
                                                    <li> <a class="has-arrow  " href="#" aria-expanded="false"><i class="fa fa-book"></i><span class="hide-menu">Pages <span class="label label-rouded label-success pull-right">8</span></span></a>
                                                        <ul aria-expanded="false" class="collapse">
                        
                                                            <li><a href="#" class="has-arrow">Authentication <span class="label label-rounded label-success">6</span></a>
                                                                <ul aria-expanded="false" class="collapse">
                                                                    <li><a href="page-login.html">Login</a></li>
                                                                    <li><a href="page-register.html">Register</a></li>
                                                                    <li><a href="page-invoice.html">Invoice</a></li>
                                                                </ul>
                                                            </li>
                                                            <li><a href="#" class="has-arrow">Error Pages</a>
                                                                <ul aria-expanded="false" class="collapse">
                                                                    <li><a href="page-error-400.html">400</a></li>
                                                                    <li><a href="page-error-403.html">403</a></li>
                                                                    <li><a href="page-error-404.html">404</a></li>
                                                                    <li><a href="page-error-500.html">500</a></li>
                                                                    <li><a href="page-error-503.html">503</a></li>
                                                                </ul>
                                                            </li>
                                                        </ul>
                                                    </li>
                                                    <li> <a class="has-arrow  " href="#" aria-expanded="false"><i class="fa fa-map-marker"></i><span class="hide-menu">Maps</span></a>
                                                        <ul aria-expanded="false" class="collapse">
                                                            <li><a href="map-google.html">Google</a></li>
                                                            <li><a href="map-vector.html">Vector</a></li>
                                                        </ul>
                                                    </li>
                                                    <li> <a class="has-arrow  " href="#" aria-expanded="false"><i class="fa fa-level-down"></i><span class="hide-menu">Multi level dd</span></a>
                                                        <ul aria-expanded="false" class="collapse">
                                                            <li><a href="#">item 1.1</a></li>
                                                            <li><a href="#">item 1.2</a></li>
                                                            <li> <a class="has-arrow" href="#" aria-expanded="false">Menu 1.3</a>
                                                                <ul aria-expanded="false" class="collapse">
                                                                    <li><a href="#">item 1.3.1</a></li>
                                                                    <li><a href="#">item 1.3.2</a></li>
                                                                    <li><a href="#">item 1.3.3</a></li>
                                                                    <li><a href="#">item 1.3.4</a></li>
                                                                </ul>
                                                            </li>
                                                            <li><a href="#">item 1.4</a></li>
                                                        </ul>
                                                    </li>-->
				</ul>
			</nav>
			<!-- End Sidebar navigation -->
		</div>
		<!-- End Sidebar scroll-->
	</div>
</body>
</html>
