package com.poly.entity;

import java.util.HashSet;
import java.util.Set;

public class JSONDonHang {
	private int maDonHang;
	private String tenMatHang;
	private String tenNguoiNhan;
	private String diaChiNguoiNhan;
	private String sdtNguoiNhan;
	private double trongLuong;
	private double phiVanChuyen;
	private boolean cachThucTraPhi;
	private float tienThuHo;
	private String ghiChu;
	private DiaChiKhachHang diaChiKhachHang;
	private Set<JSONTinhTrangDonHang> jsonTinhTrangDonHang = new HashSet<JSONTinhTrangDonHang>(0);
	
	public int getMaDonHang() {
		return maDonHang;
	}

	public void setMaDonHang(int maDonHang) {
		this.maDonHang = maDonHang;
	}

	public String getTenMatHang() {
		return tenMatHang;
	}

	public void setTenMatHang(String tenMatHang) {
		this.tenMatHang = tenMatHang;
	}

	public String getTenNguoiNhan() {
		return tenNguoiNhan;
	}

	public void setTenNguoiNhan(String tenNguoiNhan) {
		this.tenNguoiNhan = tenNguoiNhan;
	}

	public String getDiaChiNguoiNhan() {
		return diaChiNguoiNhan;
	}

	public void setDiaChiNguoiNhan(String diaChiNguoiNhan) {
		this.diaChiNguoiNhan = diaChiNguoiNhan;
	}

	public String getSdtNguoiNhan() {
		return sdtNguoiNhan;
	}

	public void setSdtNguoiNhan(String sdtNguoiNhan) {
		this.sdtNguoiNhan = sdtNguoiNhan;
	}

	public double getTrongLuong() {
		return trongLuong;
	}

	public void setTrongLuong(double trongLuong) {
		this.trongLuong = trongLuong;
	}

	public double getPhiVanChuyen() {
		return phiVanChuyen;
	}

	public void setPhiVanChuyen(double phiVanChuyen) {
		this.phiVanChuyen = phiVanChuyen;
	}

	public boolean isCachThucTraPhi() {
		return cachThucTraPhi;
	}

	public void setCachThucTraPhi(boolean cachThucTraPhi) {
		this.cachThucTraPhi = cachThucTraPhi;
	}

	public float getTienThuHo() {
		return tienThuHo;
	}

	public void setTienThuHo(float tienThuHo) {
		this.tienThuHo = tienThuHo;
	}

	public String getGhiChu() {
		return ghiChu;
	}

	public void setGhiChu(String ghiChu) {
		this.ghiChu = ghiChu;
	}

	public DiaChiKhachHang getDiaChiKhachHang() {
		return diaChiKhachHang;
	}

	public void setDiaChiKhachHang(DiaChiKhachHang diaChiKhachHang) {
		this.diaChiKhachHang = diaChiKhachHang;
	}

	public Set<JSONTinhTrangDonHang> getJsonTinhTrangDonHang() {
		return jsonTinhTrangDonHang;
	}

	public void setJsonTinhTrangDonHang(Set<JSONTinhTrangDonHang> jsonTinhTrangDonHang) {
		this.jsonTinhTrangDonHang = jsonTinhTrangDonHang;
	}

}
