package com.poly.impl;

import java.util.List;

import com.poly.entity.DonHang;

public interface DonHangImpl {
	
	public int taoDonHang(DonHang donhang);
	
	public boolean suaDonHang(DonHang donhang);
	
	public List<DonHang> danhsachDonHang();
	
	public DonHang getDonHang(int id);
	
	public List<DonHang> danhsachDonHangTheoMaKhachHang(int maKH);
}