package com.poly.controller;

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

import com.poly.entity.ChucVu;
import com.poly.service.ChucVuService;

@Controller
@Transactional
@RequestMapping("/chucvu")
public class ChucVuController {

	@Autowired
	ChucVuService chucVuService;

	@GetMapping
	public ModelAndView hienThiChucVu() {
		ModelAndView model = new ModelAndView("quanlychucvu");
		model.addObject("dsChucVu", chucVuService.layDSChucVu());
		return model;
	}

	@GetMapping("/themchucvu")
	public ModelAndView themChucVu() {
		ModelAndView model = new ModelAndView("themchucvu");
		model.addObject("chucVu", new ChucVu());
		model.addObject("action","themchucvu");
		model.addObject("tenbutton","Thêm chức vụ");
		return model;
	}

	@PostMapping("/themchucvu")
	public String guiChucVu(@ModelAttribute("chucVu") ChucVu chucVu, ModelMap model) {
		if (chucVuService.themChucVu(chucVu)) {
			model.addAttribute("dsChucVu", chucVuService.layDSChucVu());
			return "redirect:/chucvu";
		} else {
			model.addAttribute("dsChucVu", chucVuService.layDSChucVu());
			return "redirect:/chucvu";
		}
	}

	@GetMapping("/suachucvu/{id}")
	public String suaChucVu(ModelMap model, @PathVariable("id") String id) {
		ChucVu chucVu = chucVuService.timChucVu(id);
		model.addAttribute("chucVu", chucVu);
		model.addAttribute("action", "suachucvu");
		model.addAttribute("tenbutton", "Sửa chức vụ");
		return "themchucvu";
	}

	@PostMapping("/suachucvu")
	public String guiSuaChucu(@ModelAttribute("chucVu") ChucVu chucVu, ModelMap model) {
		if (chucVuService.suaChucVu(chucVu)) {
			model.addAttribute("dsChucVu", chucVuService.layDSChucVu());
			return "redirect:/chucvu";
		} else {
			model.addAttribute("dsChucVu", chucVuService.layDSChucVu());
			return "redirect:/chucvu";
		}
	}

	@GetMapping("/xoachucvu/{id}")
	public String xoaChucVu(@PathVariable("id") String id, ModelMap model) {
		ChucVu chucVu = chucVuService.timChucVu(id);
		if (chucVuService.xoaChucVu(chucVu)) {
			model.addAttribute("dsChucVu", chucVuService.layDSChucVu());
			return "redirect:/chucvu";
		} else {
			model.addAttribute("dsChucVu", chucVuService.layDSChucVu());
			return "redirect:/chucvu";
		}
	}

}
