package com.shop.controller;

import com.shop.service.CommodityService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.data.web.PageableDefault;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class IndexController {
	@Autowired
	private CommodityService commodityService;

	@GetMapping("/")
	public String index(Model model, @PageableDefault Pageable pageable){

		model.addAttribute("allCommoditys", commodityService.findAllPages(pageable));
		return "views-base-index";
	}

	@PostMapping("/")
	public String indexAfterLogin(){
		return "views-base-index";
	}

	@GetMapping("/error500")
	public String error500(){

		return "views-info-error500";
	}
}
