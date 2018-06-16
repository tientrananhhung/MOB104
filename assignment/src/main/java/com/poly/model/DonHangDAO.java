package com.poly.model;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.poly.entity.DonHang;
import com.poly.impl.DonHangImpl;

@Repository
public class DonHangDAO implements DonHangImpl {

	@Autowired
	SessionFactory sessionFactory;

	@Override
	public int taoDonHang(DonHang donhang) {
		Session ss = sessionFactory.getCurrentSession();
		try {
			int id =  (int) ss.save(donhang);
			return id;
		} catch (Exception ex) {
			return 0;
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
	public DonHang getDonHang(int id) {
		Session ss = sessionFactory.getCurrentSession();
		try {
			DonHang donhang = (DonHang) ss.get(DonHang.class, id);
			return donhang;
		} catch (Exception e) {
			return null;
		}
	}

	@Override
	public List<DonHang> layDonHangId(int id) {
		Session ss = sessionFactory.getCurrentSession();
		List<DonHang> list = null;
		String sql = "from tinhtrangdonhang where maDonHang = '" + id + "'";
		try {
			list = ss.createQuery(sql).getResultList();
		} catch (Exception e) {
			list = null;
		}
		return list;
	}

}
