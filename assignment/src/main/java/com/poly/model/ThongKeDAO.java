package com.poly.model;

import java.sql.Date;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.poly.entity.NhanVien;
import com.poly.entity.TinhTrangDonHang;
import com.poly.impl.ThongKeImpl;

@Repository
public class ThongKeDAO implements ThongKeImpl{
	@Autowired
	SessionFactory sessionFactory;
	
	@Override
	public List<NhanVien> topNhanVien() {
		Session session = sessionFactory.getCurrentSession();
		String sql = "from nhanvien";
		try {
			List<NhanVien> list = session.createQuery(sql).getResultList();
			return list;
		} catch (Exception ex) {
			return null;
		}
	}
}
