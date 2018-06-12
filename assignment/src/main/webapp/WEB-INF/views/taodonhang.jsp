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
						<f:form action="taodonhang"
							modelAttribute="donhang" method="POST">
							<div class="form-group">
								<f:label cssClass="control-label mb-1" path="tenMatHang">Tên Mặt Hàng</f:label>
								<f:input path="tenMatHang" type="text" cssClass="form-control"
									placeholder="Xin mời nhập tên nhân viên" />
							</div>
							<div class="form-group">
								<f:label cssClass="control-label mb-1" path="tenNguoiNhan">Tên Người Nhận</f:label>
								<f:input type="text" path="tenNguoiNhan" cssClass="form-control"
									placeholder="Xin mời nhập email nhân viên" />
							</div>
							<div class="form-group">
								<f:label cssClass="control-label mb-1" path="diaChiNguoiNhan">Địa Chỉ Người Nhận:</f:label>
								<f:input path="diaChiNguoiNhan" cssClass="form-control"
									placeholder="Xin mời nhập số điện thoại nhân viên" />
							</div>
							<div class="form-group">
								<f:label cssClass="control-label mb-1" path="sdtNguoiNhan">SDT người nhận</f:label>
								<f:input path="sdtNguoiNhan" cssClass="form-control"
									placeholder="Xin mời nhập địa chỉ nhân viên" />
							</div>
							<div class="form-group">
								<f:label cssClass="control-label mb-1" path="trongLuong">Trọng Lượng</f:label>
								<f:input path="trongLuong" cssClass="form-control"
									placeholder="Xin mời nhập chứng minh nhân dân" />
							</div>
							
							<div class="form-group">
								<f:label cssClass="control-label mb-1" path="cachThucTraPhi">Cách thức</f:label>
								<f:input type="number" path="cachThucTraPhi" cssClass="form-control"
									placeholder="Xin mời nhập lương cơ bản của nhân viên" />
							</div>
							<div class="form-group">
								<f:label cssClass="control-label mb-1" path="tienThuHo">Thu Hộ</f:label>
								<f:input path="tienThuHo" cssClass="form-control"
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