package com.poly.model;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.poly.entity.DonHang;
import com.poly.entity.TrangThai;
import com.poly.impl.TrangThaiImpl;

@Repository
public class TrangThaiDAO implements TrangThaiImpl {
	
	@Autowired
	SessionFactory sessionFactory;

	@Override
	public List<TrangThai> danhsachTrangThai() {
		Session ss = sessionFactory.getCurrentSession();
		String sql = "from trangthai";
		try {
			List<TrangThai> lst = ss.createQuery(sql).getResultList();
			return lst;
		}catch(Exception ex) {
			return null;
		}
	}

}
