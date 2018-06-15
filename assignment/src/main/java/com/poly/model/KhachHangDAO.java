package com.poly.model;

import javax.print.PrintException;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.poly.entity.KhachHang;
import com.poly.impl.KhachHangImpl;

@Repository
public class KhachHangDAO implements KhachHangImpl {

	@Autowired
	SessionFactory sessionFactory;

	@Override
	public KhachHang dangNhapKhachHang(String userName, String passWord) {
		Session session = sessionFactory.getCurrentSession();
		String sql = "from khachhang where soDienThoai = '"+userName+"' AND matKhau = '"+passWord+"' OR email = '" + userName + "'and matKhau = '" + passWord + "'";
		try {
			KhachHang khachHang = (KhachHang) session.createQuery(sql).getSingleResult();
			return khachHang;
		} catch (Exception e) {
			return null;
		}
	}

	@Override
	public boolean dangKyKhachHang(KhachHang khachHang) {
		Session session = sessionFactory.getCurrentSession();
//		String sql = "INSERT INTO `khachhang` (`maKhachHang`, `tenKhachHang`, `diaChi`, `anhDaiDien`, `soDienThoai`, `email`, `matKhau`) VALUES (NULL, '"+khachHang.getTenKhachHang()+"', '"+khachHang.getDiaChi()+"', NULL, '"+khachHang.getSoDienThoai()+"', '"+khachHang.getEmail()+"', '"+khachHang.getMatKhau()+"')";
		try {
			session.save(khachHang);
			return true;
		} catch (Exception ex) {
			ex.printStackTrace();
			return false;
		}
	}

	@Override
	public boolean quenMatKhauKhachHang(String email) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean doiMatKhauKhachHang(int id, String passWord) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public KhachHang layKhachHang(int id) {
		Session session = sessionFactory.getCurrentSession();
		try {
			KhachHang kh = (KhachHang) session.get(KhachHang.class, id);
			return kh;
		} catch (Exception e) {
			return null;
		}
	}
}
