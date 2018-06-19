package com.poly.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.poly.entity.TinhTrangDonHang;
import com.poly.impl.TrangThaiDonHangImpl;
import com.poly.model.TinhTrangDonHangDAO;

@Service
public class TinhTrangDonHangService implements TrangThaiDonHangImpl {

	@Autowired
	TinhTrangDonHangDAO tinhTrangDonHangDAO;
	
	@Override
	public boolean taoTinhTrangDon(TinhTrangDonHang tinhtrang) {
		boolean ck = tinhTrangDonHangDAO.taoTinhTrangDon(tinhtrang);
		return ck;
	}

	@Override
	public boolean suaTinhTrang(TinhTrangDonHang tinhtrang) {
		boolean ck = tinhTrangDonHangDAO.suaTinhTrang(tinhtrang);
		return ck;
	}

	@Override
	public List<TinhTrangDonHang> danhsachTinhTrang() {
		List<TinhTrangDonHang> lst = tinhTrangDonHangDAO.danhsachTinhTrang();
		return lst;
	}

	@Override
	public TinhTrangDonHang getTinhTrang(int id) {
		TinhTrangDonHang tinhtrang = tinhTrangDonHangDAO.getTinhTrang(id);
		return tinhtrang;
	}

	@Override
	public List<TinhTrangDonHang> danhsachTinhTrangTheoDonHang(int maDonHang) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<TinhTrangDonHang> danhsachTinhTrangTheoTrangThaiMoiNhat() {
		List<TinhTrangDonHang> lst = tinhTrangDonHangDAO.danhsachTinhTrangTheoTrangThaiMoiNhat();
		return lst;
	}

	@Override
	public List<TinhTrangDonHang> danhSachTinhTrangTheoMaDonHang(int maDonHang) {
		List<TinhTrangDonHang> list = tinhTrangDonHangDAO.danhSachTinhTrangTheoMaDonHang(maDonHang);
		return list;
	}

}
