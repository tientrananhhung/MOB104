package com.poly.controller;

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
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.poly.entity.DiaChiKhachHang;
import com.poly.entity.DonHang;
import com.poly.entity.KhachHang;
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
	
	@Autowired
	NhanVienService nhanVienService;
	
	@GetMapping
	public String trangChu() {
		return "trangchukh";
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
	
	@GetMapping("donhangkh")
	public String donhangkh(ModelMap model, HttpServletRequest rq) {
		int maKH = Integer.parseInt(rq.getSession().getAttribute("maKhachHang").toString());
		return "donhangkh";
	}
	
	@PostMapping("dangnhap")
	public String guiDangNhap(@ModelAttribute("dangnhap") KhachHang khachHang,HttpServletRequest rq,ModelMap model) {
		KhachHang kh = khachHangService.dangNhapKhachHang(khachHang.getSoDienThoai(), khachHang.getMatKhau());
		if(kh != null) {
			rq.getSession().setAttribute("login", "true");
			rq.getSession().setAttribute("thongtindangnhap", kh);
			rq.getSession().setAttribute("maKhachHang", kh.getMaKhachHang());
			model.addAttribute("dsDonHang", donHangService.danhsachDonHangTheoMaKhachHang(kh.getMaKhachHang()));
			System.out.println(donHangService.danhsachDonHangTheoMaKhachHang(kh.getMaKhachHang()).size());
			return "donhangkh";
			
		}else {
			return "dangnhap";
		}
	}

	@PostMapping("taodonhang")
	public String guiDangNhap(@ModelAttribute("donhang") DonHang donhang) {
		try {
			int id = donHangService.taoDonHang(donhang);
			tinhTrangDonHangService.taoTinhTrangDon(new TinhTrangDonHang( new Date(),new TrangThai("daTao", ""),new NhanVien(1),new DonHang(id)));
			return "redirect:/donhangkh";
		} catch (Exception e) {
			return "taodonhang";
		}
	}
	
	@GetMapping("taodonhang")
	public String taoDonHang(ModelMap model,HttpServletRequest rq) {
		model.addAttribute("action","taodonhang");
		model.addAttribute("donhang", new DonHang());
		int maKH = Integer.parseInt(rq.getSession().getAttribute("maKhachHang").toString());
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
	
	@GetMapping("suadonhang/{id}")
	public String suadonhang(ModelMap model,HttpServletRequest rq, @PathVariable("id") int id ) {
		model.addAttribute("action","suadonhang");
		model.addAttribute("donhang", donHangService.getDonHang(id));
		int maKH = Integer.parseInt(rq.getSession().getAttribute("maKhachHang").toString());
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
	
	@PostMapping("suadonhang")
	public String suaDonHang(@ModelAttribute("donhang") DonHang donhang) {
		try {
			donHangService.suaDonHang(donhang);
			return "redirect:/donhangkh";
		} catch (Exception e) {
			return "suadonhang/"+donhang.getMaDonHang();
		}
	}
	
	
	@GetMapping("danhsachdonhang")
	public ModelAndView hienThiDonHang() {
		ModelAndView model = new ModelAndView("danhsachdonhang");
		model.addObject("dsChucVu", donHangService.danhsachDonHang());
		return model;
	}
	
	@GetMapping("huydonhang/{id}")
	public String huyDonHang(@PathVariable("id") int id, ModelMap model) {
		tinhTrangDonHangService.taoTinhTrangDon(new TinhTrangDonHang(new Date(), new TrangThai("daHuy",""),new NhanVien(1),new DonHang(id)));
		return "redirect:/donhangkh";
	}
	
	@GetMapping("dangnhapNV")
	public String dangNhapNV(ModelMap model) {
		model.addAttribute("dangnhapNV", new NhanVien());
		return "dangnhapNV";
	}
	
	@PostMapping("dangnhapNV")
	public String guiDangNhapNV(@ModelAttribute("dangnhapNV") NhanVien nhanvien, HttpServletRequest rq) {
		NhanVien nv = nhanVienService.dangNhapNV(nhanvien.getSoDienThoai(), nhanvien.getMatKhau());
		if (nv != null) {
			rq.getSession().setAttribute("loginnv", "true");
			rq.getSession().setAttribute("thongtinNV", nv.getMaNhanVien());
			return "redirect:/quanlynhanvien";
		} else {
			return "dangnhapNV";
		}
	}
	
	@GetMapping("logoutnv")
	public String dangXuatNV(ModelMap model, HttpServletRequest request) {
		request.getSession().invalidate();
		model.addAttribute("dangnhapNV", new NhanVien());
		return "dangnhapNV";
	}
}
