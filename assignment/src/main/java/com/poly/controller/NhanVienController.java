package com.poly.controller;

import java.util.HashMap;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.poly.entity.ChucVu;
import com.poly.entity.NhanVien;
import com.poly.service.ChucVuService;
import com.poly.service.NhanVienService;

@Controller
@Transactional
@RequestMapping("/quanlynhanvien")
public class NhanVienController {

	@Autowired
	NhanVienService nhanVienService;
	@Autowired
	ChucVuService chucVuService;

	@GetMapping
	public String quanLyNhanVien(ModelMap model) {
		model.addAttribute("dsNhanVien", nhanVienService.danhSachNhanVien());
		return "quanlynhanvien";
	}

	@GetMapping("themnhanvien")
	public String themNhanVien(ModelMap model) {
		model.addAttribute("nhanvien", new NhanVien());
		model.addAttribute("action","themnhanvien");
		model.addAttribute("tenbutton","Thêm nhân viên");
		layChucVu(model);
		return "themnhanvien";
	}

	@PostMapping("themnhanvien")
	public String guiNhanVien(ModelMap model, @ModelAttribute(value = "nhanvien") NhanVien nv) {
		nv.setAnhDaiDien("user.png");
		if (nhanVienService.themNhanVien(nv)) {
			model.addAttribute("dsNhanVien", nhanVienService.danhSachNhanVien());
			return "redirect:/quanlynhanvien";
		} else {
			model.addAttribute("dsNhanVien", nhanVienService.danhSachNhanVien());
			return "redirect:/quanlynhanvien";
		}
	}
	@GetMapping("editnhanvien/{id}")
	public String editNhanVien(@PathVariable("id") int id, ModelMap model) {
        NhanVien nv = nhanVienService.layNhanVien(id);
        layChucVu(model);
        model.addAttribute("nhanvien", nv);
        model.addAttribute("action","suanhanvien");
		model.addAttribute("tenbutton","Sửa nhân viên");
        return "themnhanvien";
	}
	public void layChucVu(ModelMap model) {
		List<ChucVu> list = chucVuService.layDSChucVu();
		if (!list.isEmpty()) {
			HashMap<String, String> cateMap = new HashMap<String, String>();
			for (ChucVu chucvu : list) {
				cateMap.put(chucvu.getMaChucVu(), chucvu.getTenChucVu());
			}
			model.addAttribute("dsChucVu", cateMap);
		}
	}
	@PostMapping("suanhanvien")
	public String suaNhanVien(ModelMap model, @ModelAttribute(value = "nhanvien") NhanVien nv) {
		nv.setAnhDaiDien(null);
		if (nhanVienService.suaNhanVien(nv)) {
			model.addAttribute("dsNhanVien", nhanVienService.danhSachNhanVien());
			return "redirect:/quanlynhanvien";
		} else {
			model.addAttribute("dsNhanVien", nhanVienService.danhSachNhanVien());
			return "redirect:/quanlynhanvien";
		}
	}
	@GetMapping("xoanhanvien/{id}")
	public String xoaNhanVien(@PathVariable("id") int id, ModelMap model) {
		NhanVien nv = nhanVienService.layNhanVien(id);
		if (nhanVienService.xoaNhanVien(nv)) {
			model.addAttribute("dsNhanVien", nhanVienService.danhSachNhanVien());
			return "redirect:/quanlynhanvien";
		} else {
			model.addAttribute("dsNhanVien", nhanVienService.danhSachNhanVien());
			return "redirect:/quanlynhanvien";
		}
	}
}
