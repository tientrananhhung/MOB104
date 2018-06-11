package com.poly.controller;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.poly.entity.ChucVu;
import com.poly.entity.NhanVien;
import com.poly.service.NhanVienService;

@Controller
@Transactional
@RequestMapping("/quanlynhanvien")
public class NhanVienController {
	
	@Autowired
	NhanVienService nhanVienService;
	
	@GetMapping
	public String quanLyNhanVien(ModelMap model) {
		model.addAttribute("dsNhanVien", nhanVienService.danhSachNhanVien());
		return "quanlynhanvien";
	}
	
	@GetMapping("themnhanvien")
	public String themNhanVien(ModelMap model) {
		model.addAttribute("nhanvien", new NhanVien());
		List<ChucVu> list = nhanVienService.danhSachChucVu();
		if (!list.isEmpty()) {
            HashMap<String, String> cateMap = new HashMap<String, String>();
            for (ChucVu chucvu : list) {
                cateMap.put(chucvu.getMaChucVu(), chucvu.getTenChucVu());
            }
            model.addAttribute("dsChucVu", cateMap);
        }
		return "themnhanvien";
	}
	
	@PostMapping("themnhanvien")
	public String guiNhanVien(ModelMap model, @ModelAttribute(value = "nhanvien") NhanVien nv) {
		nv.setAnhDaiDien(null);
		nv.setCmnd("123456789");
		if(nhanVienService.themNhanVien(nv)) {
			model.addAttribute("dsNhanVien", nhanVienService.danhSachNhanVien());
			return "redirect:/quanlynhanvien";
		}else {
			model.addAttribute("dsNhanVien", nhanVienService.danhSachNhanVien());
			return "redirect:/quanlynhanvien";
		}
	}
}
