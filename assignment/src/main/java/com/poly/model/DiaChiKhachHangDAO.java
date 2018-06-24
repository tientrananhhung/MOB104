package com.poly.model;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
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
		Session session = sessionFactory.getCurrentSession();
		try {
			DiaChiKhachHang diaChiKhachHang = (DiaChiKhachHang) session.save(diaChi);
			return true;
		} catch (Exception e) {
			return false;
		}
	}

	@Override
	public boolean suaDiaChi(DiaChiKhachHang diaChi) {
		Session session = sessionFactory.getCurrentSession();
		String sql = "Update diachikhachhang set diaChiGui = '"+diaChi.getDiaChiGui()+"' where maDiaChi =  '"+diaChi.getMaDiaChi()+"'";
		try {
			Query qr = session.createQuery(sql);
			qr.executeUpdate();
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}

	@Override
	public boolean xoaDiaChi(DiaChiKhachHang diaChi) {
		Session session = sessionFactory.getCurrentSession();
		try {
			session.remove(diaChi);
			return true;
		} catch (Exception e) {
			return false;
		}
	}

	@Override
	public DiaChiKhachHang timDiaChi(int id) {
		Session session = sessionFactory.getCurrentSession();
		try {
			DiaChiKhachHang diaChiKhachHang = session.get(DiaChiKhachHang.class, id);
			return diaChiKhachHang;
		} catch (Exception e) {
			return null;
		}
	}

	@Override
	public List<DiaChiKhachHang> layDSDiaChiTheoMaKH(int maKhachHang) {
		Session session = sessionFactory.getCurrentSession();
		String sql = "FROM diachikhachhang where maKhachHang = '" + maKhachHang + "'";
		try {
			List<DiaChiKhachHang> list = session.createQuery(sql).getResultList();
			return list;
		} catch (Exception ex) {
			return null;
		}
	}

}
