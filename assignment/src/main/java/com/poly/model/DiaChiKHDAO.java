package com.poly.model;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.poly.entity.DiaChiKhachHang;
import com.poly.entity.DonHang;
import com.poly.impl.DiaChiKHImpl;

@Repository
public class DiaChiKHDAO implements DiaChiKHImpl {
	
	@Autowired
	SessionFactory sessionFactory;

	@Override
	public List<DiaChiKhachHang> danhsachDCKhachHang() {
		Session ss = sessionFactory.getCurrentSession();
		String sql = "from diachikhachhang";
		try {
			List<DiaChiKhachHang> lst = ss.createQuery(sql).getResultList();
			return lst;
		} catch (Exception ex) {
			return null;
		}
	}

}
