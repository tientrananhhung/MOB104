package com.poly.model;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.fasterxml.jackson.annotation.JsonTypeInfo.Id;
import com.poly.entity.KhachHang;
import com.poly.entity.NhanVien;
import com.poly.impl.NhanVienImpl;
import com.poly.service.NhanVienService;

@Repository
public class NhanVienDAO implements NhanVienImpl {

	@Autowired
	SessionFactory sessionFactory;

	@Override
	public boolean themNhanVien(NhanVien nhanVien) {
		Session session = sessionFactory.getCurrentSession();
		try {
			session.save(nhanVien);
			return true;
		} catch (Exception e) {
			return false;
		}
	}

	@Override
	public boolean suaNhanVien(NhanVien nhanVien) {
		Session session = sessionFactory.getCurrentSession();
		try {
			session.update(nhanVien);
			return true;
		} catch (Exception e) {
			return false;
		}
	}

	@Override
	public boolean xoaNhanVien(NhanVien nhanVien) {
		Session session = sessionFactory.getCurrentSession();
		try {
			session.remove(nhanVien);
			return true;
		} catch (Exception e) {
			return false;
		}
	}

	@Override
	public List<NhanVien> danhSachNhanVien() {
		Session session = sessionFactory.getCurrentSession();
		String sql = "from nhanvien";
		try {
			List<NhanVien> list = session.createQuery(sql).getResultList();
			return list;
		} catch (Exception e) {
			return null;
		}
	}

	@Override
	public NhanVien layNhanVien(int id) {
		Session session = sessionFactory.getCurrentSession();
		try {
			NhanVien nv = (NhanVien) session.get(NhanVien.class, id);
			return nv;
		} catch (Exception e) {
			return null;
		}
	}

	@Override
	public NhanVien dangNhapNV(String userName, String passWord) {
		Session session = sessionFactory.getCurrentSession();
		String sql = "from nhanvien where soDienThoai = '"+userName+"' AND matKhau = '"+passWord+"' OR email = '" + userName + "'and matKhau = '" + passWord + "'";
		try {
			NhanVien nhanvien = (NhanVien) session.createQuery(sql).getSingleResult();
			return nhanvien;
		} catch (Exception e) {
			return null;
		}
	}
	
}
