package com.poly.entity;

public class JSONKhachHang {
	private int maKhachHang;
	private String tenKhachHang;
	private String anhDaiDien;
	private String soDienThoai;
	private String email;
	private String matKhau;

	public JSONKhachHang() {
		super();
	}

	public JSONKhachHang(int maKhachHang, String tenKhachHang, String anhDaiDien, String soDienThoai, String email,
			String matKhau) {
		super();
		this.maKhachHang = maKhachHang;
		this.tenKhachHang = tenKhachHang;
		this.anhDaiDien = anhDaiDien;
		this.soDienThoai = soDienThoai;
		this.email = email;
		this.matKhau = matKhau;
	}

	public int getMaKhachHang() {
		return maKhachHang;
	}

	public void setMaKhachHang(int maKhachHang) {
		this.maKhachHang = maKhachHang;
	}

	public String getTenKhachHang() {
		return tenKhachHang;
	}

	public void setTenKhachHang(String tenKhachHang) {
		this.tenKhachHang = tenKhachHang;
	}

	public String getAnhDaiDien() {
		return anhDaiDien;
	}

	public void setAnhDaiDien(String anhDaiDien) {
		this.anhDaiDien = anhDaiDien;
	}

	public String getSoDienThoai() {
		return soDienThoai;
	}

	public void setSoDienThoai(String soDienThoai) {
		this.soDienThoai = soDienThoai;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getMatKhau() {
		return matKhau;
	}

	public void setMatKhau(String matKhau) {
		this.matKhau = matKhau;
	}

}
