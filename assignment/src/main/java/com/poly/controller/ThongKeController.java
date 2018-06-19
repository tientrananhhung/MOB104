package com.poly.controller;

import java.sql.Date;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.poly.entity.NhanVien;
import com.poly.entity.TinhTrangDonHang;
import com.poly.service.NhanVienService;
import com.poly.service.ThongKeService;
import com.poly.service.TinhTrangDonHangService;

@Controller
@Transactional
@RequestMapping("/quanlythongke")
public class ThongKeController {
	@Autowired
	ThongKeService thongKeService;
	
	@Autowired
	TinhTrangDonHangService tinhTrangDonHangService;
	
	@Autowired
	NhanVienService nhanVienService;
	@GetMapping
	public String quanLyThongKe(ModelMap model) {
		model.addAttribute("trangthai", "hidden");
		model.addAttribute("trangthai1", "hidden");
		model.addAttribute("trangthai2", "hidden");
		model.addAttribute("topNhanVien", thongKeService.topNhanVien());
		return "thongKe";
	}

	@PostMapping
	public String thongKeDonHang(ModelMap model, @RequestParam("val-skill") String a) {
		if (a.equals("dh")) {
			List<TinhTrangDonHang> list1 = tinhTrangDonHangService.danhsachTinhTrang();
			List<TinhTrangDonHang> list = new ArrayList<>();
			for(int i=0;i<list1.size();i++) {
				if(list1.get(i).getTrangThai().getMaTrangThai().equals("daTao")) {
					list.add(list1.get(i));
				}
			}
			model.addAttribute("trangthai", "");
			model.addAttribute("trangthai1", "hidden");
			model.addAttribute("trangthai2", "hidden");
			model.addAttribute("danhsachdonhang", list);
			model.addAttribute("topNhanVien", thongKeService.topNhanVien());
			return "thongKe";
		} else if (a.equals("dt")) {
			model.addAttribute("trangthai", "hidden");
			model.addAttribute("trangthai1", "");
			model.addAttribute("trangthai2", "hidden");
			model.addAttribute("topNhanVien", thongKeService.topNhanVien());
			return "thongKe";
		} else if (a.equals("nv")) {
			model.addAttribute("trangthai", "hidden");
			model.addAttribute("trangthai1", "hidden");
			model.addAttribute("trangthai2", "");
			model.addAttribute("danhsachnhanvien", nhanVienService.danhSachNhanVien());
			model.addAttribute("topNhanVien", thongKeService.topNhanVien());
			return "thongKe";
		} else {
			model.addAttribute("trangthai", "hidden");
			model.addAttribute("trangthai1", "hidden");
			model.addAttribute("trangthai2", "hidden");
			model.addAttribute("topNhanVien", thongKeService.topNhanVien());
			return "thongKe";
		}
	}
}
