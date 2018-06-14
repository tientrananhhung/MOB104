package com.poly.entity;

import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;

@Entity(name = "trangthai")
public class TrangThai {

	@Id
	private String maTrangThai;
	private String trangThai;

	@OneToMany(cascade = CascadeType.REMOVE)
	@JoinColumn(name = "maTrangThai")
	private Set<TinhTrangDonHang> tinhTrangDonHang;

	public TrangThai() {
		super();
	}

	public TrangThai(String maTrangThai, String trangThai) {
		super();
		this.maTrangThai = maTrangThai;
		this.trangThai = trangThai;
	}

	public TrangThai(String maTrangThai, String trangThai, Set<TinhTrangDonHang> tinhTrangDonHang) {
		super();
		this.maTrangThai = maTrangThai;
		this.trangThai = trangThai;
		this.tinhTrangDonHang = tinhTrangDonHang;
	}

	public String getMaTrangThai() {
		return maTrangThai;
	}

	public void setMaTrangThai(String maTrangThai) {
		this.maTrangThai = maTrangThai;
	}

	public String getTrangThai() {
		return trangThai;
	}

	public void setTrangThai(String trangThai) {
		this.trangThai = trangThai;
	}

	public Set<TinhTrangDonHang> getTinhTrangDonHang() {
		return tinhTrangDonHang;
	}

	public void setTinhTrangDonHang(Set<TinhTrangDonHang> tinhTrangDonHang) {
		this.tinhTrangDonHang = tinhTrangDonHang;
	}

}
