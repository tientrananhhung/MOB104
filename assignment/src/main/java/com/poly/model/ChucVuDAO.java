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
		try {
			List<ChucVu> list = session.createQuery(sql).getResultList();
			return list;
		} catch (Exception ex) {
			return null;
		}
	}

	@Override
	public boolean themChucVu(ChucVu chucVu) {
		Session session = sessionFactory.getCurrentSession();
		try {
			session.save(chucVu);
			return true;
		} catch (Exception e) {
			return false;
		}
	}

	@Override
	public boolean suaChucVu(ChucVu chucVu) {
		Session session = sessionFactory.getCurrentSession();
		try {
			session.update(chucVu);
			return true;
		} catch (Exception e) {
			return false;
		}
	}

	@Override
	public boolean xoaChucVu(ChucVu chucVu) {
		Session session = sessionFactory.getCurrentSession();
		try {
			session.remove(chucVu);
			return true;
		} catch (Exception e) {
			return false;
		}
	}

	@Override
	public ChucVu timChucVu(String id) {
		Session session = sessionFactory.getCurrentSession();
		try {
			ChucVu chucVu = session.get(ChucVu.class, id);
			return chucVu;
		} catch (Exception e) {
			return null;
		}
	}

}
