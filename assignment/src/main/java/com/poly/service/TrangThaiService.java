package com.poly.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.poly.entity.DonHang;
import com.poly.entity.TrangThai;
import com.poly.impl.TrangThaiImpl;
import com.poly.model.TrangThaiDAO;

@Service
public class TrangThaiService implements TrangThaiImpl {

	@Autowired
	TrangThaiDAO trangThaiDAO;
	
	@Override
	public List<TrangThai> danhsachTrangThai() {
		List<TrangThai> lst = trangThaiDAO.danhsachTrangThai();
		return lst;
	}

}
