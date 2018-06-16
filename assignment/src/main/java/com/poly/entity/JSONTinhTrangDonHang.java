package com.poly.entity;

import java.util.Date;

public class JSONTinhTrangDonHang {
	private int id;
	private Date thoiGian;
	private JSONTrangThai jsonTrangThai;
	private JSONNhanVien jsonNhanVien;
	private JSONDonHang jsonDonHang;

	public JSONTinhTrangDonHang() {
		super();
	}

	public JSONTinhTrangDonHang(int id, Date thoiGian) {
		super();
		this.id = id;
		this.thoiGian = thoiGian;
	}

	public JSONTinhTrangDonHang(int id, Date thoiGian, JSONTrangThai jsonTrangThai, JSONNhanVien jsonNhanVien,
			JSONDonHang jsonDonHang) {
		super();
		this.id = id;
		this.thoiGian = thoiGian;
		this.jsonTrangThai = jsonTrangThai;
		this.jsonNhanVien = jsonNhanVien;
		this.jsonDonHang = jsonDonHang;
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

	public JSONTrangThai getJsonTrangThai() {
		return jsonTrangThai;
	}

	public void setJsonTrangThai(JSONTrangThai jsonTrangThai) {
		this.jsonTrangThai = jsonTrangThai;
	}

	public JSONNhanVien getJsonNhanVien() {
		return jsonNhanVien;
	}

	public void setJsonNhanVien(JSONNhanVien jsonNhanVien) {
		this.jsonNhanVien = jsonNhanVien;
	}

	public JSONDonHang getJsonDonHang() {
		return jsonDonHang;
	}

	public void setJsonDonHang(JSONDonHang jsonDonHang) {
		this.jsonDonHang = jsonDonHang;
	}
}
