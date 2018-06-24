package com.poly.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.poly.entity.ChucVu;
import com.poly.entity.DiaChiKhachHang;
import com.poly.entity.DonHang;
import com.poly.entity.JSONChucVu;
import com.poly.entity.JSONNhanVien;
import com.poly.entity.KhachHang;
import com.poly.entity.NhanVien;
import com.poly.entity.TinhTrangDonHang;
import com.poly.service.ChucVuService;
import com.poly.service.DiaChiKhachHangService;
import com.poly.service.DonHangService;
import com.poly.service.KhachHangService;
import com.poly.service.NhanVienService;
import com.poly.service.TinhTrangDonHangService;
import com.poly.service.TrangThaiService;

@Controller
@Transactional
@RequestMapping("/api")
public class API {

	@Autowired
	ChucVuService chucVuService;
	@Autowired
	DonHangService donHangService;
	@Autowired
	NhanVienService nhanVienService;
	@Autowired
	TrangThaiService trangThaiService;
	@Autowired
	TinhTrangDonHangService tinhTrangDonHangService;
	@Autowired
	KhachHangService khachHangService;
	@Autowired
	DiaChiKhachHangService diaChiKhachHangService;

	@GetMapping(path = "/dsChucVu", produces = "application/json; charset=utf-8")
	@ResponseBody
	public List<JSONChucVu> dsChucVu() {
		List<ChucVu> list = chucVuService.layDSChucVu();
		List<JSONChucVu> dsChucVu = new ArrayList<>();
		for (ChucVu cv : list) {
			JSONChucVu jsonChucVu = new JSONChucVu();
			jsonChucVu.setMaChucVu(cv.getMaChucVu());
			jsonChucVu.setTenChucVu(cv.getTenChucVu());
			dsChucVu.add(jsonChucVu);
		}
		return dsChucVu;
	}

	@GetMapping(path = "/dsDonHang", produces = "application/json; charset=utf-8")
	@ResponseBody
	public List<DonHang> dsDonHang() {
		List<DonHang> list = donHangService.danhsachDonHang();
		return list;
	}

	@GetMapping(path = "/dsNhanVien", produces = "application/json; charset=utf-8")
	@ResponseBody
	public List<JSONNhanVien> dsNhanVien() {
		List<NhanVien> list = nhanVienService.danhSachNhanVien();
		List<JSONNhanVien> dsDonHang = new ArrayList<>();
		for (NhanVien nv : list) {
			JSONNhanVien jsonNhanVien = new JSONNhanVien();
			jsonNhanVien.setMaNhanVien(nv.getMaNhanVien());
			jsonNhanVien.setTenNhanVien(nv.getTenNhanVien());
			jsonNhanVien.setEmail(nv.getEmail());
			jsonNhanVien.setAnhDaiDien(nv.getAnhDaiDien());
			jsonNhanVien.setSoDienThoai(nv.getSoDienThoai());
			jsonNhanVien.setDiaChi(nv.getDiaChi());
			jsonNhanVien.setCmnd(nv.getCmnd());
			jsonNhanVien.setLuongCoBan(nv.getLuongCoBan());
			jsonNhanVien.setMatKhau(nv.getMatKhau());
			ChucVu chucVu = new ChucVu(nv.getChucVu().getMaChucVu(), nv.getChucVu().getTenChucVu());
			jsonNhanVien.setChucVu(chucVu);
			dsDonHang.add(jsonNhanVien);
		}
		return dsDonHang;
	}

	@GetMapping(path = "/tinhtrangdonhang/{maDonHang}", produces = "application/json; charset=utf-8")
	@ResponseBody
	public List<TinhTrangDonHang> dsTinhTrangDonHangTheoMa(@PathVariable("maDonHang") int maDonHang) {
		List<TinhTrangDonHang> list = tinhTrangDonHangService.danhSachTinhTrangTheoMaDonHang(maDonHang);
		return list;
	}

	@GetMapping(path = "/donhang/{maKH}", produces = "application/json; charset=utf-8")
	@ResponseBody
	public List<DiaChiKhachHang> dsDonHangTheoMaKH(@PathVariable("maKH") int maKH) {
		List<DiaChiKhachHang> list = diaChiKhachHangService.layDSDiaChiTheoMaKH(maKH);
		return list;
	}

	@GetMapping(path = "/tinhtrangdonhang", produces = "application/json; charset=utf-8")
	@ResponseBody
	public List<TinhTrangDonHang> dsTinhTrangDonHang() {
		List<TinhTrangDonHang> list = tinhTrangDonHangService.danhsachTinhTrang();
		return list;
	}
	
	@GetMapping("timkiemdiachikh/{maDiaChi}")
	@ResponseBody
	public DiaChiKhachHang timKiemDiaChiKH(@PathVariable("maDiaChi") int maDiaChi) {
		DiaChiKhachHang diaChiKhachHang = diaChiKhachHangService.timDiaChi(maDiaChi);
		return diaChiKhachHang;
	}
	
	@PostMapping("themdiachikh")
	@ResponseBody
	public void themDiaChiKH(@RequestParam String dataJson) {
		ObjectMapper objectMapper = new ObjectMapper();
		JsonNode jsonNode;
		try {
			jsonNode = objectMapper.readTree(dataJson);
			int maKH = jsonNode.get("khachHang.maKhachHang").asInt();
			KhachHang khachHang = khachHangService.layKhachHang(maKH);
			boolean ck = diaChiKhachHangService.themDiaChi(new DiaChiKhachHang(jsonNode.get("diaChiGui").asText(), khachHang));
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	@DeleteMapping("xoadiachikh/{maDiaChi}")
	@ResponseBody
	public void xoaDiaChiKH(@PathVariable("maDiaChi") int maDiaChi) {
		DiaChiKhachHang diaChiKhachHang = diaChiKhachHangService.timDiaChi(maDiaChi);
		diaChiKhachHangService.xoaDiaChi(diaChiKhachHang);
	}
	
	@PostMapping("suadiachikh")
	@ResponseBody
	public void suaDiaChiKH(@RequestParam String dataJson) {
		ObjectMapper objectMapper = new ObjectMapper();
		JsonNode jsonNode;
		try {
			jsonNode = objectMapper.readTree(dataJson);
			int maKH = jsonNode.get("makhachhang").asInt();
			KhachHang khachHang = khachHangService.layKhachHang(maKH);
			DiaChiKhachHang diaChiKhachHang = new DiaChiKhachHang(jsonNode.get("madiachi").asInt(), jsonNode.get("diachigui").asText(), khachHang);
			boolean ck = diaChiKhachHangService.suaDiaChi(diaChiKhachHang);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
