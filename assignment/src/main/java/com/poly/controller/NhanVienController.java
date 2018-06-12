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
import com.poly.service.ChucVuService;
import com.poly.service.NhanVienService;

@Controller
@Transactional
@RequestMapping("/quanlynhanvien")
public class NhanVienController {

	@Autowired
	NhanVienService nhanVienService;
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
		List<ChucVu> list = chucVuService.layDSChucVu();
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
<<<<<<< HEAD
		if (nhanVienService.themNhanVien(nv)) {
=======
		NhanVien nv1 = new NhanVien(nv.getTenNhanVien(), nv.getEmail(), nv.getAnhDaiDien(), nv.getSoDienThoai(),
				nv.getDiaChi(), nv.getCmnd(), nv.getLuongCoBan(), nv.getMatKhau(), nv.getChucVu());
		ChucVu cv = new ChucVu("CV03", "Káº¿ ToÃ¡n");
		NhanVien nv2 = new NhanVien("bin", "bin", null, "bin", "bin", "bin", 1.0, "bin", cv);
		if (nhanVienService.themNhanVien(nv2)) {
>>>>>>> 08c71af5dc0549b5c24210e810beb0821700c6fa
			model.addAttribute("dsNhanVien", nhanVienService.danhSachNhanVien());
			return "redirect:/quanlynhanvien";
		} else {
			model.addAttribute("dsNhanVien", nhanVienService.danhSachNhanVien());
			return "redirect:/quanlynhanvien";
		}
//		ChucVu cv = new ChucVu("CV02", "Shipper");
//		NhanVien nv2 = new NhanVien(5, "thai", "thai@gmail.com", null, "thai", "thai", "thai", 2.0, "thai", cv);
//		if(nhanVienService.suaNhanVien(nv2)) {
//			model.addAttribute("dsNhanVien", nhanVienService.danhSachNhanVien());
//			return "redirect:/quanlynhanvien";
//		}else {
//			model.addAttribute("dsNhanVien", nhanVienService.danhSachNhanVien());
//			return "redirect:/quanlynhanvien";
//		}
	}
}
