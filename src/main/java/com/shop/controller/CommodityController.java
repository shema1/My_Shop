package com.shop.controller;

import com.shop.editors.CategoryEditor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.*;

import com.shop.entity.Category;
import com.shop.entity.Commodity;
import com.shop.service.CategoryService;
import com.shop.service.CommodityService;
import org.springframework.web.multipart.MultipartFile;

import java.util.ArrayList;

@Controller
public class CommodityController {

	@Autowired
	private CommodityService commodityService;
	
	@Autowired
	private CategoryService categoryService;

	@InitBinder
	public void initBinder(WebDataBinder dataBinder){
		dataBinder.registerCustomEditor(Category.class, new CategoryEditor(categoryService));
	}
	
	@GetMapping("/addCommodity")
	public String addCommodity(Model model){
		
		model.addAttribute("allCategory", categoryService.findAll());
		model.addAttribute("allCommodity", commodityService.findAll());
		model.addAttribute("Commoditis", new Commodity());

		return"views-admin-addCommodity";
	}
	
	@PostMapping("/addCommodity")
	public String registrationCommodity(@ModelAttribute Commodity commodity,
										@RequestParam ArrayList<Integer> ct,
										@RequestParam MultipartFile image){

//		Category category = categoryService.findOne(ct);
		
		//asdfas

		commodityService.save(commodity,ct,image);


		
		return "redirect:/addCommodity";
		
		
		
}
	@GetMapping("/deleteCommodity/{id}")
	public String delete(@PathVariable int id){
		
		commodityService.delete(id);
		return "redirect:/addCommodity";
	}

	@GetMapping("/viewCommodity")
	public String allCommodity(Model model){
		model.addAttribute("allCommoditys", commodityService.findAll());
		return "views-base-viewCommodity";
	}
}