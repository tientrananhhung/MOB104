package com.poly.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.poly.entity.ChucVu;
import com.poly.impl.ChucVuImpl;
import com.poly.model.ChucVuDAO;

@Service
public class ChucVuService implements ChucVuImpl {

	@Autowired
	ChucVuDAO chucVuDAO;

	@Override
	public List<ChucVu> layDSChucVu() {
		List<ChucVu> list = chucVuDAO.layDSChucVu();
		return list;
	}

	@Override
	public boolean themChucVu(ChucVu chucVu) {
		boolean check = chucVuDAO.themChucVu(chucVu);
		return check;
	}

	@Override
	public boolean suaChucVu(ChucVu chucVu) {
		boolean check = chucVuDAO.suaChucVu(chucVu);
		return check;
	}

	@Override
	public boolean xoaChucVu(ChucVu chucVu) {
		boolean check = chucVuDAO.xoaChucVu(chucVu);
		return check;
	}

	@Override
	public ChucVu timChucVu(String id) {
		ChucVu chucVu = chucVuDAO.timChucVu(id);
		return chucVu;
	}

}
