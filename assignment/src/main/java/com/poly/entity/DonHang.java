package com.poly.entity;

import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;

@Entity(name = "donhang")
public class DonHang {
	
	@Id
	private String maDonHang;
	private String tenMatHang;
	private String tenNguoiNhan;
	private String diaChiNguoiNhan;
	private String sdtNguoiNhan;
	private float trongLuong;
	private float phiVanChuyen;
	private boolean cachThucTraPhi;
	private float tienThuHo;

	@OneToOne(cascade = CascadeType.ALL)
	@JoinColumn(name = "maKhachHang")
	private KhachHang khachHang;

	@OneToMany(cascade = CascadeType.ALL)
	@JoinColumn(name = "maDonHang")
	private Set<TinhTrangDonHang> tinhTrangDonHang;

	public DonHang() {
		super();
	}

	public DonHang(String maDonHang, String tenMatHang, String tenNguoiNhan, String diaChiNguoiNhan,
			String sdtNguoiNhan, float trongLuong, float phiVanChuyen, boolean cachThucTraPhi, float tienThuHo,
			KhachHang khachHang) {
		super();
		this.maDonHang = maDonHang;
		this.tenMatHang = tenMatHang;
		this.tenNguoiNhan = tenNguoiNhan;
		this.diaChiNguoiNhan = diaChiNguoiNhan;
		this.sdtNguoiNhan = sdtNguoiNhan;
		this.trongLuong = trongLuong;
		this.phiVanChuyen = phiVanChuyen;
		this.cachThucTraPhi = cachThucTraPhi;
		this.tienThuHo = tienThuHo;
		this.khachHang = khachHang;
	}

	public String getMaDonHang() {
		return maDonHang;
	}

	public void setMaDonHang(String maDonHang) {
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

	public float getTrongLuong() {
		return trongLuong;
	}

	public void setTrongLuong(float trongLuong) {
		this.trongLuong = trongLuong;
	}

	public float getPhiVanChuyen() {
		return phiVanChuyen;
	}

	public void setPhiVanChuyen(float phiVanChuyen) {
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

	public KhachHang getKhachHang() {
		return khachHang;
	}

	public void setKhachHang(KhachHang khachHang) {
		this.khachHang = khachHang;
	}

	public Set<TinhTrangDonHang> getTinhTrangDonHang() {
		return tinhTrangDonHang;
	}

	public void setTinhTrangDonHang(Set<TinhTrangDonHang> tinhTrangDonHang) {
		this.tinhTrangDonHang = tinhTrangDonHang;
	}

}
