package com.poly.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.poly.entity.DiaChiKhachHang;
import com.poly.impl.DiaChiKhachHangImpl;
import com.poly.model.DiaChiKhachHangDAO;

@Service
public class DiaChiKhachHangService implements DiaChiKhachHangImpl {
	@Autowired
	DiaChiKhachHangDAO diaChiDAO;

	@Override
	public List<DiaChiKhachHang> layDSDiaChi() {
		List<DiaChiKhachHang> list = diaChiDAO.layDSDiaChi();
		return list;
	}

	@Override
	public boolean themDiaChi(DiaChiKhachHang diaChi) {
		boolean check = diaChiDAO.themDiaChi(diaChi);
		return check;
	}

	@Override
	public boolean suaDiaChi(DiaChiKhachHang diaChi) {
		boolean check = diaChiDAO.suaDiaChi(diaChi);
		return check;
	}

	@Override
	public boolean xoaDiaChi(DiaChiKhachHang diaChi) {
		boolean check = diaChiDAO.xoaDiaChi(diaChi);
		return check;
	}

	@Override
	public DiaChiKhachHang timDiaChi(int id) {
		DiaChiKhachHang diaChiKhachHang = diaChiDAO.timDiaChi(id);
		return diaChiKhachHang;
	}

	@Override
	public List<DiaChiKhachHang> layDSDiaChiTheoMaKH(int maKhachHang) {
		List<DiaChiKhachHang> list = diaChiDAO.layDSDiaChiTheoMaKH(maKhachHang);
		return list;
	}

}
