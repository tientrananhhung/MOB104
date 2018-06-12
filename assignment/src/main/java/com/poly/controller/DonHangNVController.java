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

import com.poly.entity.DiaChiKhachHang;
import com.poly.entity.DonHang;
import com.poly.service.DiaChiKHService;
import com.poly.service.DonHangService;

@Controller
@Transactional
@RequestMapping("/quanlydonhang")
public class DonHangNVController {

		@Autowired
		DonHangService donhangService;
		@Autowired
		DiaChiKHService diaChiKHService;
		
		@GetMapping
		public String qlDonHang(ModelMap model) {
			model.addAttribute("dsDonHang", donhangService.danhsachDonHang());
			System.out.print("dh" + donhangService.danhsachDonHang());
			return "donhang";
			
		}
		
		@GetMapping("taodonhang")
		public String taoDonHang(ModelMap model) {
			model.addAttribute("donhang", new DonHang());
			layDCKhachHang(model);
			return "themdonhang";
		}
		
		public void layDCKhachHang(ModelMap model) {
			List<DiaChiKhachHang> list = diaChiKHService.danhsachDCKhachHang();
			if (!list.isEmpty()) {
				HashMap<Integer, String> map = new HashMap<Integer, String>();
				for (DiaChiKhachHang diachikh : list) {
					map.put(diachikh.getMaDiaChi(), diachikh.getDiaChiGui());
				}
				model.addAttribute("dsDCKhachHang", map);
			}
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
