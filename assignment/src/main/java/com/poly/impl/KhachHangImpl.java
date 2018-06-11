package com.poly.impl;

import com.poly.entity.KhachHang;

public interface KhachHangImpl {
	public KhachHang dangNhapKhachHang(String userName, String passWord);

	public boolean dangKyKhachHang(KhachHang khachHang);

	public boolean quenMatKhauKhachHang(String email);

	public boolean doiMatKhauKhachHang(int id, String passWord);
}
