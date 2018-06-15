package com.poly.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.poly.entity.DonHang;
import com.poly.impl.DonHangImpl;
import com.poly.model.DonHangDAO;

@Service
public class DonHangService implements DonHangImpl {
	
	@Autowired
	DonHangDAO donhangDAO;


	
	@Override
	public boolean suaDonHang(DonHang donhang) {
		boolean ck = donhangDAO.suaDonHang(donhang);
		return ck;
	}

	@Override
	public List<DonHang> danhsachDonHang() {
		List<DonHang> lst = donhangDAO.danhsachDonHang();
		return lst;
	}

	@Override
	public DonHang getDonHang(int id) {
		DonHang donhang = donhangDAO.getDonHang(id);
		return donhang;
	}

	@Override
	public int taoDonHang(DonHang donhang) {
		int id = donhangDAO.taoDonHang(donhang);
		return id;
	}

}
