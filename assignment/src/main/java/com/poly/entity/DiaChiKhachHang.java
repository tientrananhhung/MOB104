package com.poly.entity;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;

@Entity(name = "diachikhachhang")
public class DiaChiKhachHang {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int maDiaChi;
	private String diaChiGui;

	@OneToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "maKhachHang")
	private KhachHang khachHang;

	public DiaChiKhachHang() {
		super();
	}

	public DiaChiKhachHang(int maDiaChi, String diaChiGui, KhachHang khachHang) {
		super();
		this.maDiaChi = maDiaChi;
		this.diaChiGui = diaChiGui;
		this.khachHang = khachHang;
	}

	public int getMaDiaChi() {
		return maDiaChi;
	}

	public void setMaDiaChi(int maDiaChi) {
		this.maDiaChi = maDiaChi;
	}

	public String getDiaChiGui() {
		return diaChiGui;
	}

	public void setDiaChiGui(String diaChiGui) {
		this.diaChiGui = diaChiGui;
	}

	public KhachHang getKhachHang() {
		return khachHang;
	}

	public void setKhachHang(KhachHang khachHang) {
		this.khachHang = khachHang;
	}

}
