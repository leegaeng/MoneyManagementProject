package com.sds.icto.money.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class IndexController {

	@RequestMapping("/index")	
	public String index(){
		System.out.println("안녕");
		return "main/index";
	}
	
}