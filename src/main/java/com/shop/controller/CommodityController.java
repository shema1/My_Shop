package com.shop.controller;

import com.shop.editors.CategoryEditor;
import com.shop.validator.CommodityValidator.CommodityValidatorMessenges;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.data.web.PageableDefault;
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
										@RequestParam MultipartFile image,
										Model model){

//		Category category = categoryService.findOne(ct);
		
		//asdfas

		try {
			commodityService.save(commodity,ct,image);
		} catch (Exception e) {
			if(e.getMessage().equals(CommodityValidatorMessenges.EMPTY_NAME_FIELD)){
				model.addAttribute("commodityNameException",e.getMessage());

			}
			  else  if (e.getMessage().equals(CommodityValidatorMessenges.EMPTY_PRICE_FIELD)) {

				model.addAttribute("commodityPriceException",e.getMessage());

			}
			model.addAttribute("allCategory", categoryService.findAll());
			model.addAttribute("allCommodity", commodityService.findAll());
			model.addAttribute("Commoditis", new Commodity());
			return"views-admin-addCommodity";
		}


		return "redirect:/addCommodity";
		
		
		
}
	@GetMapping("/deleteCommodity/{id}")
	public String delete(@PathVariable int id){
		
		commodityService.delete(id);
		return "redirect:/addCommodity";
	}

	@GetMapping("/updateCommodity/{commodityId}")
	public String update(@PathVariable int commodityId,
						Model  model){

		model.addAttribute("commodity", commodityService.findOne(commodityId));
		model.addAttribute("allCategory", categoryService.findAll());
		return "views-admin-updateCommodity";
	}

	@PostMapping("/updateCommodity/{commodityId}")
	public String updateCommodity(@PathVariable int commodityId,
								  @RequestParam String name,
								  @RequestParam String price,
								  @RequestParam String info,
								  @RequestParam ArrayList<Integer> ct,
								  @RequestParam MultipartFile pathImage) {
		Commodity commodity = new Commodity();
		commodity.setId(commodityId);
		commodity.setName(name);
		commodity.setPrice(price);
		commodity.setInfo(info);

		try {
			commodityService.save(commodity,ct,pathImage);
		} catch (Exception e) {
			e.printStackTrace();
		}

		return  "redirect:/addCommodity";

	}


	@GetMapping("/viewCommodity")
	public String allCommodity(Model model, @PageableDefault Pageable pageable){
		model.addAttribute("allCommoditys", commodityService.findAllPages(pageable));

		return "views-base-viewCommodity";
	}


//
//	}
}