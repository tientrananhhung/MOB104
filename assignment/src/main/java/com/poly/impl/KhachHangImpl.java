package com.poly.impl;

import java.util.List;

import com.poly.entity.KhachHang;

public interface KhachHangImpl {
	public KhachHang dangNhapKhachHang(String userName, String passWord);

	public boolean dangKyKhachHang(KhachHang khachHang);

	public boolean quenMatKhauKhachHang(String email);

	public boolean doiMatKhauKhachHang(int id, String passWord);
	
	public KhachHang layKhachHang(int id);
	
	public List<KhachHang> layDSKhachHang();
	
	public boolean suaThongTinKhachHang(KhachHang khachHang);
}
