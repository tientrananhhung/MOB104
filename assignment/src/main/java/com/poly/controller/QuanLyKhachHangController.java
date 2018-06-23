package com.poly.controller;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.poly.entity.DiaChiKhachHang;
import com.poly.service.DiaChiKhachHangService;
import com.poly.service.KhachHangService;

@Controller
@Transactional
@RequestMapping("/khachhang")
public class QuanLyKhachHangController {

	@Autowired
	KhachHangService khachHangService;
	@Autowired
	DiaChiKhachHangService diaChiKhachHangService;
	
	@GetMapping
	public String DCKhachHang(ModelMap model) {
		model.addAttribute("dsDiaChiKH", diaChiKhachHangService.layDSDiaChi());
		return "DCKhachHang";
	}

	@GetMapping("themdiachiKhachHang")
	public String themDiaChi(ModelMap model, HttpServletRequest rq) {
		model.addAttribute("diachi", new DiaChiKhachHang());
		int maKH = Integer.parseInt(rq.getSession().getAttribute("thongtindangnhap").toString());
		model.addAttribute("khachhang", khachHangService.layKhachHang(maKH));
		model.addAttribute("action","themdiachiKH");
		return "themdiachiKH";
	}

	@PostMapping("themdiachiKH")
	public String guiDiaChi(ModelMap model, @ModelAttribute(value = "diachi") DiaChiKhachHang dckh) {
		if (diaChiKhachHangService.themDiaChi(dckh)) {
			model.addAttribute("dsDiaChiKH", diaChiKhachHangService.layDSDiaChi());
			return "redirect:/khachhang";
		} else {
			return "themdiachiKH";
		}
	}
}
