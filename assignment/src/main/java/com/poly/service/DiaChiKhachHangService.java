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
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean suaDiaChi(DiaChiKhachHang diaChi) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean xoaDiaChi(DiaChiKhachHang diaChi) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public DiaChiKhachHang timDiaChi(String id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<DiaChiKhachHang> layDSDiaChiTheoMaKH(int maKhachHang) {
		List<DiaChiKhachHang> list = diaChiDAO.layDSDiaChiTheoMaKH(maKhachHang);
		return list;
	}

}
