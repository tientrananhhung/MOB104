package com.poly.impl;

import java.util.List;

import com.poly.entity.KhachHang;
import com.poly.entity.NhanVien;

public interface NhanVienImpl {
	public NhanVien dangNhapNV(String userName, String passWord);
	
	public boolean themNhanVien(NhanVien nhanVien);

	public boolean suaNhanVien(NhanVien nhanVien);

	public boolean xoaNhanVien(NhanVien nhanVien);

	public List<NhanVien> danhSachNhanVien();
	
	public NhanVien layNhanVien(int id);
}
