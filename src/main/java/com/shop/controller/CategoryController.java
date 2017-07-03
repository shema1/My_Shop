package com.shop.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import com.shop.entity.Category;
import com.shop.service.CategoryService;


//____________________________________


@Controller
public class CategoryController {

	@Autowired
	private CategoryService  categoryService;


		@GetMapping("/addCategory")
			public String addCategory(Model model){
			
			model.addAttribute("Category", categoryService.findAll());
			model.addAttribute("Categoris", new Category());

				return "views-admin-addCategory";
		}
		
	
		
		@PostMapping("/addCategory")
		public String registrationCategory(@ModelAttribute Category category){
			categoryService.save(category);
			return"redirect:/addCategory";
		}
		
		@GetMapping("/deleteCategory/{id}")
		public String delete (@PathVariable int id){
			categoryService.delete(id);
			return"redirect:/addCategory";
		}

}

