package com.home.mall.controller.admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
public class ProductRegistController {
	@GetMapping("/product/rigstform")
	public String resigt() {
		return "manager/product/regist";
	}
	
	@GetMapping("/product/list")
	public ModelAndView getlist() {
		ModelAndView mav = new ModelAndView("manager/product/list");
		return mav;
	}
}
