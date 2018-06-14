package com.poly.impl;

import java.util.List;

import com.poly.entity.DiaChiKhachHang;


public interface DiaChiKhachHangImpl {
	public List<DiaChiKhachHang> layDSDiaChi();
	
	public List<DiaChiKhachHang> layDSDiaChiTheoMaKH(int maKhachHang);
	
	public boolean themDiaChi(DiaChiKhachHang diaChi);

	public boolean suaDiaChi(DiaChiKhachHang diaChi);

	public boolean xoaDiaChi(DiaChiKhachHang diaChi);

	public DiaChiKhachHang timDiaChi(String id);
}