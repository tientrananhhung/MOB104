package com.poly.entity;

public class JSONTrangThai {
	private String maTrangThai;
	private String trangThai;

	public JSONTrangThai() {
		super();
	}

	public JSONTrangThai(String maTrangThai, String trangThai) {
		super();
		this.maTrangThai = maTrangThai;
		this.trangThai = trangThai;
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

}
