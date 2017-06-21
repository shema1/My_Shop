package com.shop.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class IndexController {

	@GetMapping("/")
	public String index(){
		return "views-base-index";
	}

	@PostMapping("/")
	public String indexAfterLogin(){
		return "views-base-index";
	}
}
