package com.poly.entity;

import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;

import com.fasterxml.jackson.annotation.JsonIgnore;

@Entity(name = "khachhang")
public class KhachHang {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int maKhachHang;
	private String tenKhachHang;
	private String anhDaiDien;
	private String soDienThoai;
	private String email;
	private String matKhau;

	@OneToMany(cascade = CascadeType.REMOVE, fetch = FetchType.EAGER)
	@JoinColumn(name = "maKhachHang")
	@JsonIgnore
	private Set<DiaChiKhachHang> diaChiKhachHang;

	public KhachHang() {
		super();
	}

	public KhachHang(int maKhachHang, String tenKhachHang, String anhDaiDien, String soDienThoai, String email,
			String matKhau) {
		super();
		this.maKhachHang = maKhachHang;
		this.tenKhachHang = tenKhachHang;
		this.anhDaiDien = anhDaiDien;
		this.soDienThoai = soDienThoai;
		this.email = email;
		this.matKhau = matKhau;
	}

	public KhachHang(String tenKhachHang, String anhDaiDien, String soDienThoai, String email, String matKhau) {
		super();
		this.tenKhachHang = tenKhachHang;
		this.anhDaiDien = anhDaiDien;
		this.soDienThoai = soDienThoai;
		this.email = email;
		this.matKhau = matKhau;
	}

	public KhachHang(int maKhachHang, String tenKhachHang, String anhDaiDien, String soDienThoai, String email,
			String matKhau, Set<DiaChiKhachHang> diaChiKhachHang) {
		super();
		this.maKhachHang = maKhachHang;
		this.tenKhachHang = tenKhachHang;
		this.anhDaiDien = anhDaiDien;
		this.soDienThoai = soDienThoai;
		this.email = email;
		this.matKhau = matKhau;
		this.diaChiKhachHang = diaChiKhachHang;
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

	public Set<DiaChiKhachHang> getDiaChiKhachHang() {
		return diaChiKhachHang;
	}

	public void setDiaChiKhachHang(Set<DiaChiKhachHang> diaChiKhachHang) {
		this.diaChiKhachHang = diaChiKhachHang;
	}

}
