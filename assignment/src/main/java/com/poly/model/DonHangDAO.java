package com.poly.model;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.poly.entity.DonHang;
import com.poly.entity.KhachHang;
import com.poly.impl.DonHangImpl;

@Repository
public class DonHangDAO implements DonHangImpl {

	@Autowired
	SessionFactory sessionFactory;

	@Override
	public boolean taoDonHang(DonHang donhang) {
		Session ss = sessionFactory.getCurrentSession();
		try {
			ss.save(donhang);
			return true;
		} catch (Exception ex) {
			return false;
		}
	}

	@Override
	public boolean suaDonHang(DonHang donhang) {
		Session ss = sessionFactory.getCurrentSession();
		try {
			ss.update(donhang);
			return true;
		} catch (Exception ex) {
			return false;
		}
	}

	@Override
	public List<DonHang> danhsachDonHang() {
		Session ss = sessionFactory.getCurrentSession();
		String sql = "from donhang";
		try {
			List<DonHang> lst = ss.createQuery(sql).getResultList();
			return lst;
		} catch (Exception ex) {
			return null;
		}
	}

	@Override
	public List<KhachHang> danhsachKhachHang() {
		Session ss = sessionFactory.getCurrentSession();
		String sql = "from khachhang";
		try {
			List<KhachHang> lst = ss.createQuery(sql).getResultList();
			return lst;
		} catch (Exception ex) {
			return null;
		}
	}

}
