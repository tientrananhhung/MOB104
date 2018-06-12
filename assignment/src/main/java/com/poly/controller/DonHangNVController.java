package com.poly.controller;

import java.util.HashMap;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.poly.entity.DonHang;
import com.poly.entity.KhachHang;
import com.poly.service.DonHangService;
import com.poly.service.KhachHangService;

@Controller
@Transactional
@RequestMapping("/quanlydonhang")
public class DonHangNVController {

		@Autowired
		DonHangService donhangService;
		KhachHangService khachhangService;
		
		@GetMapping
		public String qlDonHang(ModelMap model) {
			model.addAttribute("dsDonHang", donhangService.danhsachDonHang());
			return "donhang";
			
		}
		
		@GetMapping("taodonhang")
		public String taoDonHang(ModelMap model) {
			model.addAttribute("donhang", new DonHang());
			List<KhachHang> lst = donhangService.danhsachKhachHang();
			if(!lst.isEmpty()) {
				HashMap<Integer, String> map = new HashMap<Integer, String>();
				for(KhachHang khachhang : lst) {
					map.put(khachhang.getMaKhachHang(), khachhang.getTenKhachHang());
				}
				model.addAttribute("dsKhachHang", map);
			}
			return "themdonhang";
		}
		
		@PostMapping("taodonhangNV")
		public String taoDonHangNV(ModelMap model, @ModelAttribute(value = "donhang") DonHang donHang) {
			if(donhangService.taoDonHang(donHang)) {
				model.addAttribute("dsDonHang", donhangService.danhsachDonHang());
				return "redirect:/quanlydonhang";
			}else {
				model.addAttribute("dsDonHang", donhangService.danhsachDonHang());
				return "redirect:/quanlydonhang";
			}
		}
}
