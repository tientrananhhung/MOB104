package com.poly.service;

import java.sql.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.poly.entity.NhanVien;
import com.poly.entity.TinhTrangDonHang;
import com.poly.impl.ThongKeImpl;
import com.poly.model.ThongKeDAO;

@Service
public class ThongKeService implements ThongKeImpl {
	@Autowired
	ThongKeDAO thongKeDAO;
	@Override
	public List<NhanVien> topNhanVien() {
		List<NhanVien> list = thongKeDAO.topNhanVien();
		return list;
	}
}
