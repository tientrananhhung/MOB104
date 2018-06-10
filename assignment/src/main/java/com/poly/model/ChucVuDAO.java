package com.poly.model;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.poly.entity.ChucVu;
import com.poly.impl.ChucVuImpl;

@Repository
public class ChucVuDAO implements ChucVuImpl {

	@Autowired
	SessionFactory sessionFactory;

	@Override
	public List<ChucVu> layDSChucVu() {
		Session session = sessionFactory.getCurrentSession();
		String sql = "from chucvu";
		List<ChucVu> list = session.createQuery(sql).getResultList();
		return list;
	}

}
