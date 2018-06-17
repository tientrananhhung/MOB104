package com.poly.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.poly.entity.ChucVu;
import com.poly.entity.DiaChiKhachHang;
import com.poly.entity.DonHang;
import com.poly.entity.KhachHang;
import com.poly.entity.NhanVien;
import com.poly.entity.TinhTrangDonHang;
import com.poly.entity.TrangThai;
import com.poly.service.DiaChiKhachHangService;
import com.poly.service.DonHangService;
import com.poly.service.KhachHangService;
import com.poly.service.TinhTrangDonHangService;

@Controller
@Transactional
@RequestMapping("/")
public class TrangChuController {
	
	@Autowired
	KhachHangService khachHangService;
	 
	@Autowired
	DiaChiKhachHangService diaChiService;
	
	@Autowired
	DonHangService donHangService;
	
	@Autowired
	TinhTrangDonHangService tinhTrangDonHangService;
	
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
	public String guiDangNhap(@ModelAttribute("dangnhap") KhachHang khachHang,HttpServletRequest rq) {
		KhachHang kh = khachHangService.dangNhapKhachHang(khachHang.getSoDienThoai(), khachHang.getMatKhau());
		if(kh != null) {
			rq.getSession().setAttribute("login", "true");
			rq.getSession().setAttribute("thongtindangnhap", kh.getMaKhachHang());
			return "index";
			
		}else {
			return "dangnhap";
		}
	}

	@PostMapping("taodonhang")
	public String guiDangNhap(@ModelAttribute("donhang") DonHang donhang) {
		try {
			int id = donHangService.taoDonHang(donhang);
			tinhTrangDonHangService.taoTinhTrangDon(new TinhTrangDonHang( new Date(),new TrangThai("daTao", ""),new NhanVien(1),new DonHang(id)));
			return "redirect:/quanlynhanvien";
		} catch (Exception e) {
			return "taodonhang";
		}
	}
	
	@GetMapping("taodonhang")
	public String taoDonHang(ModelMap model,HttpServletRequest rq) {
		model.addAttribute("donhang", new DonHang());
		int maKH = Integer.parseInt(rq.getSession().getAttribute("thongtindangnhap").toString());
		model.addAttribute("khachhang",khachHangService.layKhachHang(maKH));
		List<DiaChiKhachHang> list = diaChiService.layDSDiaChiTheoMaKH(maKH);
		if (!list.isEmpty()) {
			HashMap<Integer,String> cateMap = new HashMap<Integer,String>();
			for (DiaChiKhachHang diachi : list) {
				cateMap.put(diachi.getMaDiaChi(), diachi.getDiaChiGui());
			}
			model.addAttribute("diachi", cateMap);
		}

		return "taodonhang";
	}
}
