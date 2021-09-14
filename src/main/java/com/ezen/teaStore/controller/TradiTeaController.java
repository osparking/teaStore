package com.ezen.teaStore.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ezen.teaStore.service.TradiTeaService;

@Controller
@RequestMapping("tea") 
public class TradiTeaController {
	@Autowired
	TradiTeaService tradiTeaService;
	
	@RequestMapping("/listing") 
	public String listing(Model model) {
		model.addAttribute("welcomeMsg", 
				"우리 인터넷 전통찻집 홈페이지 방문을 환영합니다.");
		model.addAttribute("sellitems", 
				"판매 품목: 다양한 한국의 전통차");
		
		model.addAttribute("tradiTeas", 
				tradiTeaService.getAllTradiTeas());
		return "traditeas";
	}
}