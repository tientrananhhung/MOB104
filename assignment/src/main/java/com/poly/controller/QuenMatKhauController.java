package com.poly.controller;

import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.mail.MailSender;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@Transactional
@RequestMapping("quenmatkhau")
public class QuenMatKhauController {
	
	@GetMapping
	public String quenMatKhau(ModelMap model) {
		return "quenmatkhau";
	}
	@PostMapping("/sendmail")
	public String sendmail() {
		ClassPathXmlApplicationContext context = new ClassPathXmlApplicationContext("IoC.xml");
		MailSender mailSender = (MailSender) context.getBean("mailSender2");
		SimpleMailMessage message = new SimpleMailMessage();
		message.setFrom("leanhhieuit@gmail.com");
		message.setTo("hieulapd01977@fpt.edu.vn");
		message.setSubject("Subject");
		message.setText("test send gmail using spring");
		// sending message
		mailSender.send(message);
		System.out.println("Sending text done!");
		context.close();
		return "doimatkhau";
	}
}
