package com.poly.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.poly.entity.DiaChiKhachHang;
import com.poly.impl.DiaChiKHImpl;
import com.poly.model.DiaChiKHDAO;
import com.poly.model.DonHangDAO;

@Service
public class DiaChiKHService implements DiaChiKHImpl {

	@Autowired
	DiaChiKHDAO diachikhDAO;
	
	@Override
	public List<DiaChiKhachHang> danhsachDCKhachHang() {
		List<DiaChiKhachHang> lst = diachikhDAO.danhsachDCKhachHang();
		return lst;
	}

}
