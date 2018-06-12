package com.poly.impl;

import java.util.List;

import com.poly.entity.DonHang;
import com.poly.entity.KhachHang;

public interface DonHangImpl {
	
	public boolean taoDonHang(DonHang donhang);
	
	public boolean suaDonHang(DonHang donhang);
	
	public List<DonHang> danhsachDonHang();
	
	public List<KhachHang> danhsachKhachHang();

}