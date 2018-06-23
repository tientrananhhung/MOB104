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
import com.poly.service.DiaChiKhachHangService;
import com.poly.service.DonHangService;
import com.poly.service.KhachHangService;
import com.poly.service.NhanVienService;
import com.poly.service.TinhTrangDonHangService;

@Controller
@Transactional
@RequestMapping("/quanlydonhang")
public class DonHangNVController {


		@Autowired
		DonHangService donhangService;
		@Autowired
		DiaChiKhachHangService chiKhachHangService;
		@Autowired
		TinhTrangDonHangService tinhTrangDonHangService;
		@Autowired
		KhachHangService khachHangService;
		@Autowired
		NhanVienService nhanVienService;
		
		@GetMapping
		public String qlDonHang(ModelMap model) {
			model.addAttribute("dsDonHang", donhangService.danhsachDonHang());
			model.addAttribute("dsTinhTrangDonHang", tinhTrangDonHangService.danhsachTinhTrangTheoTrangThaiMoiNhat());
			System.out.println(donhangService.danhsachDonHang().get(0).getDiaChiKhachHang().getDiaChiGui());
			return "donhang";
		}
		
	@GetMapping("taodonhang")
	public String taoDonHang(ModelMap model, HttpServletRequest rq) {
		model.addAttribute("donhang", new DonHang());
		int maNV = Integer.parseInt(rq.getSession().getAttribute("thongtinNV").toString());
		model.addAttribute("nhanvien", nhanVienService.layNhanVien(maNV));
		List<DiaChiKhachHang> list = chiKhachHangService.layDSDiaChi();
		model.addAttribute("action", "taodonhang");
		if (!list.isEmpty()) {
			HashMap<Integer,String> cateMap = new HashMap<Integer,String>();
			for (DiaChiKhachHang diachi : list) {
				cateMap.put(diachi.getMaDiaChi(), diachi.getDiaChiGui());
			}
			model.addAttribute("diachi", cateMap);
		}
		return "themdonhang";
		}
		
		@GetMapping("editdonhang/{id}")
		public String editDonHang(@PathVariable("id") int id, ModelMap model) {
	        DonHang donhang = donhangService.getDonHang(id);
	        List<DiaChiKhachHang> list = chiKhachHangService.layDSDiaChi();
			if (!list.isEmpty()) {
				HashMap<Integer,String> cateMap = new HashMap<Integer,String>();
				for (DiaChiKhachHang diachi : list) {
					cateMap.put(diachi.getMaDiaChi(), diachi.getDiaChiGui());
				}
				model.addAttribute("diachi", cateMap);
			}
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

	// public void layKhachHang(ModelMap model) {
	// List<KhachHang> list = khachHangService.layDSKhachHang();
	// if (!list.isEmpty()) {
	// HashMap<Integer, String> map = new HashMap<Integer, String>();
	// for (KhachHang kh : list) {
	// map.put(kh.getMaKhachHang(), kh.getTenKhachHang());
	// }
	// model.addAttribute("dsKhachHang", map);
	// }
	// }

	@PostMapping("taodonhang")
	public String taoDonHangNV(@ModelAttribute("donhang") DonHang donhang, HttpServletRequest rq) {
		try {
			int maNV = Integer.parseInt(rq.getSession().getAttribute("thongtinNV").toString());
			int idDH = donhangService.taoDonHang(donhang);
			tinhTrangDonHangService.taoTinhTrangDon(
					new TinhTrangDonHang(new Date(), new TrangThai("daTao", ""), new NhanVien(maNV), new DonHang(idDH)));
			return "redirect:/quanlydonhang";
		} catch (Exception e) {
			return "themdonhang";
		}
	}

	// @PostMapping("taodonhangNV")
	// public String taoDonHangNV(ModelMap model, @ModelAttribute(value = "donhang")
	// DonHang donHang) {
	// if(donhangService.taoDonHang(donHang)) {
	// model.addAttribute("dsDonHang", donhangService.danhsachDonHang());
	// return "redirect:/quanlydonhang";
	// }else {
	// model.addAttribute("dsDonHang", donhangService.danhsachDonHang());
	// return "redirect:/quanlydonhang";
	// }
	// }

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
