package com.poly.entity;

import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;

@Entity(name = "nhanvien")
public class NhanVien {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int maNhanVien;
	private String tenNhanVien;
	private String email;
	private String anhDaiDien;
	private String soDienThoai;
	private String diaChi;
	private String cmnd;
	private double luongCoBan;
	private String matKhau;

	@OneToOne(cascade = CascadeType.ALL)
	@JoinColumn(name = "maChucVu")
	private ChucVu chucVu;

	@OneToMany(cascade = CascadeType.ALL)
	@JoinColumn(name = "maNhanVien")
	private Set<TinhTrangDonHang> tinhTrangDonHang;

	public NhanVien() {
		super();
	}

	public NhanVien(String tenNhanVien, String email, String anhDaiDien, String soDienThoai, String diaChi, String cmnd,
			double luongCoBan, String matKhau) {
		super();
		this.tenNhanVien = tenNhanVien;
		this.email = email;
		this.anhDaiDien = anhDaiDien;
		this.soDienThoai = soDienThoai;
		this.diaChi = diaChi;
		this.cmnd = cmnd;
		this.luongCoBan = luongCoBan;
		this.matKhau = matKhau;
	}

	public NhanVien(String tenNhanVien, String email, String anhDaiDien, String soDienThoai, String diaChi, String cmnd,
			double luongCoBan, String matKhau, ChucVu chucVu) {
		super();
		this.tenNhanVien = tenNhanVien;
		this.email = email;
		this.anhDaiDien = anhDaiDien;
		this.soDienThoai = soDienThoai;
		this.diaChi = diaChi;
		this.cmnd = cmnd;
		this.luongCoBan = luongCoBan;
		this.matKhau = matKhau;
		this.chucVu = chucVu;
	}

	public NhanVien(String tenNhanVien, String email, String anhDaiDien, String soDienThoai, String diaChi, String cmnd,
			double luongCoBan, String matKhau, ChucVu chucVu, Set<TinhTrangDonHang> tinhTrangDonHang) {
		super();
		this.tenNhanVien = tenNhanVien;
		this.email = email;
		this.anhDaiDien = anhDaiDien;
		this.soDienThoai = soDienThoai;
		this.diaChi = diaChi;
		this.cmnd = cmnd;
		this.luongCoBan = luongCoBan;
		this.matKhau = matKhau;
		this.chucVu = chucVu;
		this.tinhTrangDonHang = tinhTrangDonHang;
	}

	public int getMaNhanVien() {
		return maNhanVien;
	}

	public void setMaNhanVien(int maNhanVien) {
		this.maNhanVien = maNhanVien;
	}

	public String getTenNhanVien() {
		return tenNhanVien;
	}

	public void setTenNhanVien(String tenNhanVien) {
		this.tenNhanVien = tenNhanVien;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
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

	public String getDiaChi() {
		return diaChi;
	}

	public void setDiaChi(String diaChi) {
		this.diaChi = diaChi;
	}

	public String getCmnd() {
		return cmnd;
	}

	public void setCmnd(String cmnd) {
		this.cmnd = cmnd;
	}

	public double getLuongCoBan() {
		return luongCoBan;
	}

	public void setLuongCoBan(double luongCoBan) {
		this.luongCoBan = luongCoBan;
	}

	public String getMatKhau() {
		return matKhau;
	}

	public void setMatKhau(String matKhau) {
		this.matKhau = matKhau;
	}

	public ChucVu getChucVu() {
		return chucVu;
	}

	public void setChucVu(ChucVu chucVu) {
		this.chucVu = chucVu;
	}

	public Set<TinhTrangDonHang> getTinhTrangDonHang() {
		return tinhTrangDonHang;
	}

	public void setTinhTrangDonHang(Set<TinhTrangDonHang> tinhTrangDonHang) {
		this.tinhTrangDonHang = tinhTrangDonHang;
	}
}
