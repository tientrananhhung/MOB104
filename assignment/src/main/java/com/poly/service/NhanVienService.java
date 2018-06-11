package com.poly.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.poly.entity.ChucVu;
import com.poly.entity.NhanVien;
import com.poly.impl.NhanVienImpl;
import com.poly.model.NhanVienDAO;

@Service
public class NhanVienService implements NhanVienImpl {
	
	@Autowired
	NhanVienDAO nhanVienDAO;

	@Override
	public boolean themNhanVien(NhanVien nhanVien) {
		boolean check = nhanVienDAO.themNhanVien(nhanVien);
		return check;
	}

	@Override
	public boolean suaNhanVien(NhanVien nhanVien) {
		boolean check = nhanVienDAO.suaNhanVien(nhanVien);
		return check;
	}

	@Override
	public boolean xoaNhanVien(NhanVien nhanVien) {
		boolean check = nhanVienDAO.xoaNhanVien(nhanVien);
		return check;
	}

	@Override
	public List<NhanVien> danhSachNhanVien() {
		List<NhanVien> list = nhanVienDAO.danhSachNhanVien();
		return list;
	}

	@Override
	public List<ChucVu> danhSachChucVu() {
		List<ChucVu> list = nhanVienDAO.danhSachChucVu();
		return list;
	}
}
