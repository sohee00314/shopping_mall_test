package com.home.sopping_mall.controller.admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MainController {
	@GetMapping("/main")
	public ModelAndView getMain() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("manager/index");
		return mav;
		
	}
}
