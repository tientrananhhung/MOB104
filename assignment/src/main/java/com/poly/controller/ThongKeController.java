package com.poly.controller;

import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@Transactional
@RequestMapping("/quanlythongke")
public class ThongKeController {
	@GetMapping
	public String quanLyNhanVien(ModelMap model) {
		return "thongKe";
	}
}
