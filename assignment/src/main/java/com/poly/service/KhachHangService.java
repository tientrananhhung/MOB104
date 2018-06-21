package com.poly.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.poly.entity.KhachHang;
import com.poly.impl.KhachHangImpl;
import com.poly.model.KhachHangDAO;

@Service
public class KhachHangService implements KhachHangImpl {

	@Autowired
	KhachHangDAO khDao;
	
	@Override
	public KhachHang dangNhapKhachHang(String userName, String passWord) {
		KhachHang kh = khDao.dangNhapKhachHang(userName, passWord);
		return kh;
	}

	@Override
	public boolean dangKyKhachHang(KhachHang khachHang) {
		boolean check = khDao.dangKyKhachHang(khachHang);
		return check;
	}

	@Override
	public boolean quenMatKhauKhachHang(String email) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean doiMatKhauKhachHang(int id, String passWord) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public KhachHang layKhachHang(int id) {
		KhachHang kh = khDao.layKhachHang(id);
		return kh;
	}

	@Override
	public List<KhachHang> layDSKhachHang() {
		List<KhachHang> lst = khDao.layDSKhachHang();
		return lst;
	}

}
