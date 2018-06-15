package com.poly.controller;

import java.util.HashMap;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.poly.entity.DiaChiKhachHang;
import com.poly.entity.DonHang;
import com.poly.entity.NhanVien;
import com.poly.service.DiaChiKhachHangService;
import com.poly.service.DonHangService;

@Controller
@Transactional
@RequestMapping("/quanlydonhang")
public class DonHangNVController {

		@Autowired
		DonHangService donhangService;
		@Autowired
		DiaChiKhachHangService chiKhachHangService;
		
		@GetMapping
		public String qlDonHang(ModelMap model) {
			model.addAttribute("dsDonHang", donhangService.danhsachDonHang());
			return "donhang";
		}
		
		@GetMapping("taodonhang")
		public String taoDonHang(ModelMap model) {
			model.addAttribute("donhang", new DonHang());
	        model.addAttribute("action","taodonhangNV");
			layDCKhachHang(model);
			return "themdonhang";
		}
		
		@GetMapping("editdonhang/{id}")
		public String editDonHang(@PathVariable("id") int id, ModelMap model) {
	        DonHang donhang = donhangService.getDonHang(id);
	        layDCKhachHang(model);
	        model.addAttribute("donhang", donhang);
	        model.addAttribute("action","suadonhang");
	        return "themdonhang";
		}
		
		public void layDCKhachHang(ModelMap model) {
			List<DiaChiKhachHang> list = chiKhachHangService.layDSDiaChi();
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
		
		@PostMapping("editdonhang/suadonhang")
		public String suaDonHang(ModelMap model, @ModelAttribute(value = "donhang") DonHang donhang) {
			if (donhangService.suaDonHang(donhang)) {
				model.addAttribute("dsDonHang", donhangService.danhsachDonHang());
				return "redirect:/quanlydonhang";
			} else {
				model.addAttribute("dsDonHang", donhangService.danhsachDonHang());
				return "redirect:/quanlydonhang";
			}
		}
}
