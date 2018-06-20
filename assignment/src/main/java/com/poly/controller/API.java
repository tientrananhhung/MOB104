package com.poly.controller;

import java.util.ArrayList;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.poly.entity.ChucVu;
import com.poly.entity.DiaChiKhachHang;
import com.poly.entity.DonHang;
import com.poly.entity.JSONChucVu;
import com.poly.entity.JSONDonHang;
import com.poly.entity.JSONNhanVien;
import com.poly.entity.NhanVien;
import com.poly.entity.TinhTrangDonHang;
import com.poly.service.ChucVuService;
import com.poly.service.DonHangService;
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
	public List<JSONDonHang> dsDonHang() {
		List<DonHang> list = donHangService.danhsachDonHang();
		List<JSONDonHang> dsDonHang = new ArrayList<>();
		for (DonHang dh : list) {
			JSONDonHang jsonDonHang = new JSONDonHang();
			jsonDonHang.setMaDonHang(dh.getMaDonHang());
			jsonDonHang.setTenMatHang(dh.getTenMatHang());
			jsonDonHang.setTenNguoiNhan(dh.getTenNguoiNhan());
			jsonDonHang.setDiaChiNguoiNhan(dh.getDiaChiNguoiNhan());
			jsonDonHang.setSdtNguoiNhan(dh.getSdtNguoiNhan());
			jsonDonHang.setTrongLuong(dh.getTrongLuong());
			jsonDonHang.setPhiVanChuyen(dh.getPhiVanChuyen());
			jsonDonHang.setCachThucTraPhi(dh.isCachThucTraPhi());
			jsonDonHang.setTienThuHo(dh.getTienThuHo());
			jsonDonHang.setGhiChu(dh.getGhiChu());
			DiaChiKhachHang diaChiKhachHang = new DiaChiKhachHang(dh.getDiaChiKhachHang().getMaDiaChi(),
					dh.getDiaChiKhachHang().getDiaChiGui(), dh.getDiaChiKhachHang().getKhachHang());
			jsonDonHang.setDiaChiKhachHang(diaChiKhachHang);
			
			
			
			dsDonHang.add(jsonDonHang);
		}
		return dsDonHang;
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
	public List<TinhTrangDonHang> dsTinhTrangDonHangTheoMa(@PathVariable("maDonHang") int maDonHang){
		List<TinhTrangDonHang> list = tinhTrangDonHangService.danhSachTinhTrangTheoMaDonHang(maDonHang);
		for(TinhTrangDonHang tt : list) {
		}
		return list;
	}
}
