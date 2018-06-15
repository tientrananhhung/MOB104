package com.poly.model;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.poly.entity.DonHang;
import com.poly.entity.TinhTrangDonHang;
import com.poly.impl.TrangThaiDonHangImpl;

@Repository
public class TinhTrangDonHangDAO implements TrangThaiDonHangImpl {

	@Autowired
	SessionFactory sessionFactory;
	
	@Override
	public boolean taoTinhTrangDon(TinhTrangDonHang tinhtrang) {
		Session ss = sessionFactory.getCurrentSession();
		try {
			ss.save(tinhtrang);
			return true;
		} catch (Exception ex) {
			return false;
		}
	}

	@Override
	public boolean suaTinhTrang(TinhTrangDonHang tinhtrang) {
		Session ss = sessionFactory.getCurrentSession();
		try {
			ss.update(tinhtrang);
			return true;
		} catch (Exception ex) {
			return false;
		}
	}

	@Override
	public List<TinhTrangDonHang> danhsachTinhTrang() {
		Session ss = sessionFactory.getCurrentSession();
		String sql = "from tinhtrangdonhang";
		try {
			List<TinhTrangDonHang> lst = ss.createQuery(sql).getResultList();
			return lst;
		} catch (Exception ex) {
			return null;
		}
	}

	@Override
	public TinhTrangDonHang getTinhTrang(int id) {
		Session ss = sessionFactory.getCurrentSession();
		try {
			TinhTrangDonHang tinhtrang = (TinhTrangDonHang) ss.get(TinhTrangDonHang.class, id);
			return tinhtrang;
		}catch (Exception e) {
			return null;
		}
	}

}
