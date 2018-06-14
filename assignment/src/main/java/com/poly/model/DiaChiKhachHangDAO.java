package com.poly.model;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


import com.poly.entity.DiaChiKhachHang;
import com.poly.impl.DiaChiKhachHangImpl;



@Repository
public class DiaChiKhachHangDAO implements DiaChiKhachHangImpl {

	@Autowired
	SessionFactory sessionFactory;

	@Override
	public List<DiaChiKhachHang> layDSDiaChi() {
		Session session = sessionFactory.getCurrentSession();
		String sql = "FROM diachikhachhang";
		try {
			List<DiaChiKhachHang> list = session.createQuery(sql).getResultList();
			return list;
		} catch (Exception ex) {
			return null;
		}
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
		Session session = sessionFactory.getCurrentSession();
		String sql = "FROM diachikhachhang where maKhachHang = '"+maKhachHang+"'";
		try {
			List<DiaChiKhachHang> list = session.createQuery(sql).getResultList();
			return list;
		} catch (Exception ex) {
			return null;
		}
	}

	
}
