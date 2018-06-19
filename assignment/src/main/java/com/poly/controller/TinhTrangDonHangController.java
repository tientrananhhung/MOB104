package com.poly.controller;

import java.util.Date;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
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
import com.poly.entity.TinhTrangDonHang;
import com.poly.entity.TrangThai;
import com.poly.service.DonHangService;
import com.poly.service.NhanVienService;
import com.poly.service.TinhTrangDonHangService;
import com.poly.service.TrangThaiService;


@Controller
@Transactional
@RequestMapping("/trangthaidonhang")
public class TinhTrangDonHangController {

	@Autowired
	TinhTrangDonHangService tinhTrangDonHangService;
	@Autowired
	DonHangService donHangService;
	@Autowired
	NhanVienService nhanVienService;
	@Autowired
	TrangThaiService trangThaiService;
	
	@GetMapping
	public String qlTinhTrang(ModelMap model) {
		model.addAttribute("dsTinhTrang", tinhTrangDonHangService.danhsachTinhTrang());
		return "tinhtrangdonhang";
	}
	
	@GetMapping("taotinhtrangdon")
	public String themTinhTrang(ModelMap model) {
		model.addAttribute("tinhtrangDH", new TinhTrangDonHang());
		layDonHang(model);
		layNhanVien(model);
		layTrangThai(model);
		return "taotinhtrangdon";
	}
	
	@PostMapping("taotinhtrangdon")
	public String taoDonHangNV(@ModelAttribute("tinhtrangDH") TinhTrangDonHang tinhTrangDH, HttpServletRequest rq) {
		tinhTrangDH.setThoiGian(new Date());
		if (tinhTrangDonHangService.taoTinhTrangDon(tinhTrangDH)) {
			return "redirect:/trangthaidonhang";
		} else {
			return "taotinhtrangdon";
		}
		
	}
	
//	@GetMapping("editdtinhtrang/{id}")
//	public String editTinhTrang(@PathVariable("id") int id, ModelMap model) {
//        TinhTrangDonHang donhang = tinhTrangDonHangService.getTinhTrang(id);
//        layDonHang(model);
//        layTrangThai(model);
//        layNhanVien(model);
//        model.addAttribute("tinhtrangDH", donhang);
//        model.addAttribute("action","tinhtrangDH");
//        return "taotinhtrangdon";
//	}
//	
//	@PostMapping("editdtinhtrang/tinhtrangDH")
//	public String guiTinhTrang(ModelMap model, @ModelAttribute(value = "tinhtrangDH") TinhTrangDonHang tinhTrangDH) {
//		tinhTrangDH.setThoiGian(new Date());
//		if (tinhTrangDonHangService.suaTinhTrang(tinhTrangDH)) {
//			model.addAttribute("dsTinhTrang", tinhTrangDonHangService.danhsachTinhTrang());
//			return "redirect:/trangthaidonhang";
//		} else {
//			model.addAttribute("dsTinhTrang", tinhTrangDonHangService.danhsachTinhTrang());
//			return "redirect:/trangthaidonhang";
//		}
//	}
	
	public void layDonHang(ModelMap model) {
		List<DonHang> list = donHangService.danhsachDonHang();
		if (!list.isEmpty()) {
			HashMap<Integer, Integer> map = new HashMap<Integer, Integer>();
			for (DonHang donhang : list) {
				map.put(donhang.getMaDonHang(), donhang.getMaDonHang());
			}
			model.addAttribute("dsDonHang", map);
		}
	}
	
	public void layTrangThai(ModelMap model) {
		List<TrangThai> list = trangThaiService.danhsachTrangThai();
		if (!list.isEmpty()) {
			HashMap<String, String> map = new HashMap<String, String>();
			for (TrangThai trangthai : list) {
				map.put(trangthai.getMaTrangThai(), trangthai.getTrangThai());
			}
			model.addAttribute("dsTrangThai", map);
		}
	}
	
	public void layNhanVien(ModelMap model) {
		List<NhanVien> list = nhanVienService.danhSachNhanVien();
		if (!list.isEmpty()) {
			HashMap<Integer, String> map = new HashMap<Integer, String>();
			for (NhanVien nhanvien : list) {
				map.put(nhanvien.getMaNhanVien(), nhanvien.getTenNhanVien());
			}
			model.addAttribute("dsNhanVien", map);
		}
	}
}
