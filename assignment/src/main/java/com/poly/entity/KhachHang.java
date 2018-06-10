package com.poly.entity;

import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;

@Entity(name = "khachhang")
public class KhachHang {
	
	@Id
	private String maKhachHang;
	private String tenKhachHang;
	private String diaChi;
	private String anhDaiDien;
	private String soDienThoai;
	private String email;
	private String matKhau;

	@OneToMany(cascade = CascadeType.ALL)
	@JoinColumn(name = "maKhachHang")
	private Set<DonHang> donHang;

	public KhachHang() {
		super();
	}

	public KhachHang(String maKhachHang, String tenKhachHang, String diaChi, String anhDaiDien, String soDienThoai,
			String email, String matKhau) {
		super();
		this.maKhachHang = maKhachHang;
		this.tenKhachHang = tenKhachHang;
		this.diaChi = diaChi;
		this.anhDaiDien = anhDaiDien;
		this.soDienThoai = soDienThoai;
		this.email = email;
		this.matKhau = matKhau;
	}

	public KhachHang(String maKhachHang, String tenKhachHang, String diaChi, String anhDaiDien, String soDienThoai,
			String email, String matKhau, Set<DonHang> donHang) {
		super();
		this.maKhachHang = maKhachHang;
		this.tenKhachHang = tenKhachHang;
		this.diaChi = diaChi;
		this.anhDaiDien = anhDaiDien;
		this.soDienThoai = soDienThoai;
		this.email = email;
		this.matKhau = matKhau;
		this.donHang = donHang;
	}

	public String getMaKhachHang() {
		return maKhachHang;
	}

	public void setMaKhachHang(String maKhachHang) {
		this.maKhachHang = maKhachHang;
	}

	public String getTenKhachHang() {
		return tenKhachHang;
	}

	public void setTenKhachHang(String tenKhachHang) {
		this.tenKhachHang = tenKhachHang;
	}

	public String getDiaChi() {
		return diaChi;
	}

	public void setDiaChi(String diaChi) {
		this.diaChi = diaChi;
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

	public Set<DonHang> getDonHang() {
		return donHang;
	}

	public void setDonHang(Set<DonHang> donHang) {
		this.donHang = donHang;
	}
	
}
