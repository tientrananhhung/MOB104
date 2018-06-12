package com.poly.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.poly.entity.KhachHang;
import com.poly.service.KhachHangService;

@Controller
@Transactional
@RequestMapping("/")
public class TrangChuController {
	
	@Autowired
	KhachHangService khachHangService;

	@GetMapping
	public String trangChu() {
		return "index";
	}
	
	@GetMapping("dangky")
	public String dangKy(ModelMap model) {
		model.addAttribute("dangky", new KhachHang());
		return "dangky";
	}
	
	@PostMapping("dangky")
	public String guiDangKy(@ModelAttribute("dangky") KhachHang khachHang, ModelMap model) {
		
		if(khachHangService.dangKyKhachHang(khachHang)) {
			model.addAttribute("dangnhap", khachHang);
			return "dangnhap";
		} else {
			return "dangky";
		}
		
	}
	
	@GetMapping("dangnhap")
	public String dangNhap(ModelMap model) {
		model.addAttribute("dangnhap", new KhachHang());
		return "dangnhap";
	}
	
	
	
	@PostMapping("dangnhap")
	public String guiDangNhap(@ModelAttribute("dangnhap") KhachHang khachHang) {
		KhachHang kh = khachHangService.dangNhapKhachHang(khachHang.getSoDienThoai(), khachHang.getMatKhau());
		if(kh != null) {
			return "index";
		}else {
			return "dangnhap";
		}
		
	}

	@GetMapping("taodonhang")
	public String taoDonHang(ModelMap model) {
	//	model.addAttribute("dangnhap", new KhachHang());
		return "taodonhang";
	}
}
