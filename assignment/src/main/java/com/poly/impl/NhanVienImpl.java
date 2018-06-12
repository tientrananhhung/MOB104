package com.poly.impl;

import java.util.List;

import com.poly.entity.ChucVu;
import com.poly.entity.NhanVien;

public interface NhanVienImpl {
	public boolean themNhanVien(NhanVien nhanVien);

	public boolean suaNhanVien(NhanVien nhanVien);

	public boolean xoaNhanVien(NhanVien nhanVien);

	public List<NhanVien> danhSachNhanVien();
}
