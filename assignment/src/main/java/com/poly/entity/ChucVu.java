package com.poly.entity;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;

import com.fasterxml.jackson.annotation.JsonIgnore;

@Entity(name = "chucvu")
public class ChucVu {

	@Id
	private String maChucVu;
	private String tenChucVu;

	@OneToMany(cascade = CascadeType.ALL, fetch = FetchType.LAZY)
	@JoinColumn(name = "maChucVu")
	@JsonIgnore
	private Set<NhanVien> nhanvien = new HashSet<NhanVien>(0);

	public ChucVu() {
		super();
	}

	public ChucVu(String maChucVu, String tenChucVu) {
		super();
		this.maChucVu = maChucVu;
		this.tenChucVu = tenChucVu;
	}

	public ChucVu(String maChucVu, String tenChucVu, Set<NhanVien> nhanvien) {
		super();
		this.maChucVu = maChucVu;
		this.tenChucVu = tenChucVu;
		this.nhanvien = nhanvien;
	}

	public String getMaChucVu() {
		return maChucVu;
	}

	public void setMaChucVu(String maChucVu) {
		this.maChucVu = maChucVu;
	}

	public String getTenChucVu() {
		return tenChucVu;
	}

	public void setTenChucVu(String tenChucVu) {
		this.tenChucVu = tenChucVu;
	}

	public Set<NhanVien> getNhanvien() {
		return nhanvien;
	}

	public void setNhanvien(Set<NhanVien> nhanvien) {
		this.nhanvien = nhanvien;
	}

}
