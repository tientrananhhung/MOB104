<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="f"%>

<!-- Modal Update Info Customer -->
	<div class="modal fade" id="Modal-suathongtin" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="Title-suathongtin">SỬA THÔNG TIN</h5>
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
						<form action="suathongtin" method="POST" id="form-suathongtin">
							<input id="maKhachHang" name="maKhachHang" hidden>
							<input id="matKhau" name="matKhau" hidden>
							<input id="anhDaiDien" name="anhDaiDien" value="user.png" hidden>
							<div class="form-group row">
					    		<label for="tenKhachHang" class="col-sm-3 col-form-label">Họ và Tên:</label>
					    		<div class="col-sm-9">
					      			<input type="text" id="tenKhachHang" name="tenKhachHang" Class="form-control" placeholder="Xin vui lòng nhập Họ và Tên">
					    		</div>
					  		</div>
					  		<div class="form-group row">
					    		<label for="soDienThoai" class="col-sm-3 col-form-label">SĐT:</label>
					    		<div class="col-sm-9">
					      			<input type="text" id="soDienThoai" name="soDienThoai" Class="form-control" placeholder="Xin vui lòng nhập số điện thoại">
					    		</div>
					  		</div>
					  		<div class="form-group row">
					    		<label for="email" class="col-sm-3 col-form-label">Email:</label>
					    		<div class="col-sm-9">
					      			<input type="email" id="email" name="email" Class="form-control" placeholder="Xin vui lòng nhập email">
					    		</div>
					  		</div>
						</form>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary btn-secondary-format" data-dismiss="modal">Hủy</button>
					<button type="button" class="btn btn-primary btn-primary-format" id="btn-suathongtin">Lưu</button>
				</div>
			</div>
		</div>
	</div>
<!-- End Modal Update Info Customer -->