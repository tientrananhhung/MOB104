package com.poly.entity;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;

@Entity(name = "tinhtrangdonhang")
public class TinhTrangDonHang {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	private Date thoiGian;

	@OneToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "maTrangThai")
	private TrangThai trangThai;

	@OneToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "maNhanVien")
	private NhanVien nhanVien;

	@OneToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "maDonHang")
	private DonHang donHang;

	public TinhTrangDonHang() {
		super();
	}

	public TinhTrangDonHang(Date thoiGian, TrangThai trangThai, NhanVien nhanVien, DonHang donHang) {
		super();
		this.thoiGian = thoiGian;
		this.trangThai = trangThai;
		this.nhanVien = nhanVien;
		this.donHang = donHang;
	}

	public TinhTrangDonHang(int id, Date thoiGian, TrangThai trangThai, NhanVien nhanVien, DonHang donHang) {
		super();
		this.id = id;
		this.thoiGian = thoiGian;
		this.trangThai = trangThai;
		this.nhanVien = nhanVien;
		this.donHang = donHang;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public Date getThoiGian() {
		return thoiGian;
	}

	public void setThoiGian(Date thoiGian) {
		this.thoiGian = thoiGian;
	}

	public TrangThai getTrangThai() {
		return trangThai;
	}

	public void setTrangThai(TrangThai trangThai) {
		this.trangThai = trangThai;
	}

	public NhanVien getNhanVien() {
		return nhanVien;
	}

	public void setNhanVien(NhanVien nhanVien) {
		this.nhanVien = nhanVien;
	}

	public DonHang getDonHang() {
		return donHang;
	}

	public void setDonHang(DonHang donHang) {
		this.donHang = donHang;
	}

}
