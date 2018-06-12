package com.poly.impl;

import java.util.List;

import com.poly.entity.DiaChiKhachHang;
import com.poly.entity.DonHang;

public interface DonHangImpl {
	
	public boolean taoDonHang(DonHang donhang);
	
	public boolean suaDonHang(DonHang donhang);
	
	public List<DonHang> danhsachDonHang();
	
	public List<DiaChiKhachHang> danhsachDCKhachHang();

}