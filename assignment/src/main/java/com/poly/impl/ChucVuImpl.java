package com.poly.impl;

import java.util.List;

import com.poly.entity.ChucVu;

public interface ChucVuImpl {
	public List<ChucVu> layDSChucVu();

	public boolean themChucVu(ChucVu chucVu);

	public boolean suaChucVu(ChucVu chucVu);

	public boolean xoaChucVu(ChucVu chucVu);

	public ChucVu timChucVu(String id);
}