package com.poly.impl;

import java.util.List;

import com.poly.entity.TinhTrangDonHang;

public interface TrangThaiDonHangImpl {
	
	public boolean taoTinhTrangDon(TinhTrangDonHang tinhtrang);
	
	public boolean suaTinhTrang(TinhTrangDonHang tinhtrang);
	
	public List<TinhTrangDonHang> danhsachTinhTrang();
	
	public TinhTrangDonHang getTinhTrang(int id);

}
