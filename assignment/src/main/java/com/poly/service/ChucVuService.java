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

}
