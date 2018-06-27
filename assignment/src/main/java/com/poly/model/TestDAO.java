package com.poly.model;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.poly.impl.TestImpl;

@Repository
public class TestDAO implements TestImpl {

	@Autowired
	SessionFactory sessionFactory;

	@Override
	public List<String> search(int maKH) {
		Session session = sessionFactory.getCurrentSession();
		List<String> list = null;
		String hql = "SELECT diaChiGui FROM diachikhachhang WHERE maKhachHang = '" + maKH + "'";
		try {
			Query query = session.createQuery(hql);
			list = query.getResultList();
			return list;
		} catch (Exception e) {
			return null;
		}
	}

}
