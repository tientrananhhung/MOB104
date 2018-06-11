<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Quản lý nhân viên</title>
</head>
<body>
	<div id="main-wrapper">
                <div class="page-wrapper">
                    <div class="container-fluid">
                        <div class="card">
                            <div class="card-body">
                                <h1 class="card-title">ABC Group</h1>
                                <h3 class="card-subtitle">Danh sách nhân viên</h3>
                                <hr style="background-color: #00827c"/>
                                <div class="table-responsive m-t-40">
                                    <div class="text-left">
                                        <a href="quanlynhanvien/themnhanvien"><button type="button" class="btn btn-success m-b-10 m-l-5">Thêm mới nhân viên</button></a>
                                    </div>
                                    <table id="myTable" class="table table-bordered table-striped">
                                        <thead>
                                            <tr>
                                                <th>Avatar</th>
                                                <th>Mã NV</th>
                                                <th>Tên NV</th>
                                                <th>Email</th>
                                                <th>Số điện thoại</th>
                                                <th>Địa chỉ</th>
                                                <th>CMDN</th>
                                                <th>Chức vụ</th>
                                                <th>Lương CB</th>
                                                <th>Action</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                        <c:forEach var="item" items="${dsNhanVien}" >
                                            <tr>
                                                <td><img style="width: 40px; height: 50px;" src="resources/${item.anhDaiDien}"/></td>
                                                <td><c:out value="${item.maNhanVien}" /></td>
                                                <td><c:out value="${item.tenNhanVien}" /></td>
                                                <td><c:out value="${item.email}" /></td>
                                                <td><c:out value="${item.soDienThoai}" /></td>
                                                <td><c:out value="${item.diaChi}" /></td>
                                                <td><c:out value="${item.cmnd}" /></td>
                                                <td><c:out value="${item.chucVu.tenChucVu}" /></td>
                                                <td><c:out value="${item.luongCoBan}" /></td>
                                                <td>
                                                    <a href="editNhanVien.htm?id=${item.maNhanVien}"><i class="fa fa-pencil"></i></a>
                                                    <a href="removeNhanVien.htm?id=${item.maNhanVien}"><i class="fa fa-bitbucket-square"></i></a>
                                                </td>
                                            </tr>
                                        </c:forEach>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
</body>
</html>