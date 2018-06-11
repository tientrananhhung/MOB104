<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="f" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Thêm nhân viên</title>
</head>
<body>
	<div class="row">
		<div class="col-md-12">
			<div class="card">
				<div class="card-header">
					<strong class="card-title">Thêm nhân viên</strong>
				</div>
				<div class="card-body">
					<div class="typo-headers">
						<f:form action="themnhanvien"
							modelAttribute="nhanvien" method="POST">
							<div class="form-group">
								<f:label cssClass="control-label mb-1" path="tenNhanVien">Tên nhân viên</f:label>
								<f:input path="tenNhanVien" cssClass="form-control"
									placeholder="Xin mời nhập tên nhân viên" />
							</div>
							<div class="form-group">
								<f:label cssClass="control-label mb-1" path="email">Email</f:label>
								<f:input type="email" path="email" cssClass="form-control"
									placeholder="Xin mời nhập email nhân viên" />
							</div>
							<div class="form-group">
								<f:label cssClass="control-label mb-1" path="soDienThoai">Số điện thoại</f:label>
								<f:input path="soDienThoai" cssClass="form-control"
									placeholder="Xin mời nhập số điện thoại nhân viên" />
							</div>
							<div class="form-group">
								<f:label cssClass="control-label mb-1" path="diaChi">Địa chỉ</f:label>
								<f:input path="diaChi" cssClass="form-control"
									placeholder="Xin mời nhập địa chỉ nhân viên" />
							</div>
							<div class="form-group">
								<f:label cssClass="control-label mb-1" path="cmnd">Chứng minh nhân dân</f:label>
								<f:input path="cmnd" cssClass="form-control"
									placeholder="Xin mời nhập chứng minh nhân dân" />
							</div>
							<div class="form-group">
								<f:label cssClass="control-label mb-1" path="chucVu.maChucVu">Chức vụ</f:label>
								<f:select path="chucVu.maChucVu">
									<f:options items="${dsChucVu}" />
								</f:select>
							</div>
							<div class="form-group">
								<f:label cssClass="control-label mb-1" path="luongCoBan">Lương cơ bản</f:label>
								<f:input type="number" path="luongCoBan" cssClass="form-control"
									placeholder="Xin mời nhập lương cơ bản của nhân viên" />
							</div>
							<div class="form-group">
								<f:label cssClass="control-label mb-1" path="matKhau">Mật khẩu</f:label>
								<f:input path="matKhau" cssClass="form-control"
									placeholder="Xin mời nhập mật khẩu" />
							</div>
							<div>
								<button class="btn btn-lg btn-info">
									<i class="fa fa-plus fa-lg"></i>&nbsp; <span>Thêm nhân
										viên</span>
								</button>
							</div>
						</f:form>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>