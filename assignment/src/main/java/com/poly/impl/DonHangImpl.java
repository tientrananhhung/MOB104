package com.poly.impl;

import java.util.List;

import com.poly.entity.DonHang;

public interface DonHangImpl {
	
	public boolean taoDonHang(DonHang donhang);
	
	public boolean suaDonHang(DonHang donhang);
	
	public List<DonHang> danhsachDonHang();
	
	public DonHang getDonHang(int id);

}