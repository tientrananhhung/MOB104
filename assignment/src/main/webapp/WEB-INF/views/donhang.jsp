<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div id="main-wrapper">
            <jsp:include page="include/header.jsp"></jsp:include><br/><br/>
            <jsp:include page="include/left-sidebar.jsp"></jsp:include>
                <div class="page-wrapper">
                    <div class="container-fluid">
                        <div class="card">
                            <div class="card-body">
                                <h4 class="card-title">Danh sách hóa đơn</h4>
                                <a href="quanlydonhang/taodonhang"><button type="button" class="btn btn-success m-b-10 m-l-5" data-toggle="tooltip" data-placement="top" title="Create order">Tiếp nhận hóa đơn</button></a>
                                <div class="table-responsive m-t-40">
                                    <table id="example23" class="display nowrap table table-hover table-striped table-bordered" cellspacing="0" width="100%">
                                        <thead>
                                            <tr>
                                                <th>Mã đơn hàng</th>
                                                <th>Tên mặt hàng</th>
                                                <th>Tên người nhận</th>
                                                <th>Số điện thoại người nhận</th>
                                                <th>Địa chỉ người nhận</th>
                                                <th>Địa chỉ gửi</th>
                                                <th>Action</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                        <c:forEach var="a" items="${dsDonHang}">
                                            <tr>
                                                <td><c:out value="${a.maDonHang}"/></td>
                                                <td><c:out value="${a.tenMatHang}"/></td>
                                                <td><c:out value="${a.tenNguoiNhan}"/></td>
                                                <td><c:out value="${a.sdtNguoiNhan}"/></td>
                                                <td><c:out value="${a.diaChiNguoiNhan}"/></td>
                                                <td><c:out value="${a.diaChiKhachHang.diaChiGui}"/></td>
                                                <th><a href="quanlydonhang/editdonhang/${a.maDonHang}"><i
													class="fa fa-pencil">Edit</i></a></th>
                                            </tr>
                                        </c:forEach>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                    <!--
                    
                                            <div class="card-body">
                                                <h1 class="card-title">ABC Group</h1>
                                                <h3 class="card-subtitle">Danh sách đơn hàng</h3>
                                                <hr style="background-color: #00827c"/>
                                                <div class="table-responsive m-t-40">
                                                    <div class="text-left">
                                                        <a href="ThemNV.htm"><button type="button" class="btn btn-success m-b-10 m-l-5">Tiếp nhận hóa đơn</button></a>
                                                    </div>
                                                    <table id="myTable" class="table table-bordered table-striped">
                                                        <thead>
                                                            <tr>
                                                                <th>Mã đơn hàng</th>
                                                                <th>Tên mặt hàng</th>
                                                                <th>Tên người nhận</th>
                                                                <th>Số điện thoại người nhận</th>
                                                                <th>Địa chỉ người nhận</th>
                                                                <th>Action</th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                    <%--<c:forEach var="a" items="${list}">--%>
                        <tr>
                            <td><c:out value="${a.id}"/></td>
                            <td><c:out value="${a.name}"/></td>
                            <th><a href="Adddepart.htm" style="color: #004085">Edit</a> / <a href="" style="color: #004085">Del</a></th>
                        </tr>
                    <%--</c:forEach>--%>
                </tbody>
            </table>
        </div>
    </div>-->
                </div>
            </div>
        </div>
    </div>
    <footer class="footer"> © 2018 All rights reserved. Template designed by <a href="https://www.facebook.com/profile.php?id=100010754627040">Chu Thái</a></footer>
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
    </body>
</html>
