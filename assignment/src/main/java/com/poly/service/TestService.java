package com.poly.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.poly.impl.TestImpl;
import com.poly.model.TestDAO;

@Service
public class TestService implements TestImpl {
	@Autowired
	TestDAO testDAO;

	@Override
	public List<String> search(int maKH) {
		List<String> list = testDAO.search(maKH);
		return list;
	}
}
