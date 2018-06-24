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
import javax.persistence.OneToOne;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

@Entity(name = "donhang")
public class DonHang {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
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

	@OneToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "maDiaChi")
	private DiaChiKhachHang diaChiKhachHang;

	@OneToMany(cascade = CascadeType.ALL, fetch = FetchType.EAGER)
	@JoinColumn(name = "maDonHang", updatable = false)
	@JsonIgnoreProperties({"nhanVien", "donHang"})
	private Set<TinhTrangDonHang> tinhTrangDonHang;

	public DonHang() {
		super();
	}

	
	
	public DonHang(int maDonHang) {
		super();
		this.maDonHang = maDonHang;
	}



	public DonHang(String tenMatHang, String tenNguoiNhan, String diaChiNguoiNhan, String sdtNguoiNhan,
			double trongLuong, double phiVanChuyen, boolean cachThucTraPhi, float tienThuHo, String ghiChu,
			DiaChiKhachHang diaChiKhachHang) {
		super();
		this.tenMatHang = tenMatHang;
		this.tenNguoiNhan = tenNguoiNhan;
		this.diaChiNguoiNhan = diaChiNguoiNhan;
		this.sdtNguoiNhan = sdtNguoiNhan;
		this.trongLuong = trongLuong;
		this.phiVanChuyen = phiVanChuyen;
		this.cachThucTraPhi = cachThucTraPhi;
		this.tienThuHo = tienThuHo;
		this.ghiChu = ghiChu;
		this.diaChiKhachHang = diaChiKhachHang;
	}

	public DonHang(int maDonHang, String tenMatHang, String tenNguoiNhan, String diaChiNguoiNhan, String sdtNguoiNhan,
			double trongLuong, double phiVanChuyen, boolean cachThucTraPhi, float tienThuHo, String ghiChu,
			DiaChiKhachHang diaChiKhachHang) {
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
		this.ghiChu = ghiChu;
		this.diaChiKhachHang = diaChiKhachHang;
	}

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

	public Set<TinhTrangDonHang> getTinhTrangDonHang() {
		return tinhTrangDonHang;
	}

	public void setTinhTrangDonHang(Set<TinhTrangDonHang> tinhTrangDonHang) {
		this.tinhTrangDonHang = tinhTrangDonHang;
	}

}
