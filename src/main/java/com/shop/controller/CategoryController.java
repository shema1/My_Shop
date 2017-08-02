package com.shop.controller;

import com.shop.validator.CategoryValidation.CategoryValidatorMessenger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import com.shop.entity.Category;
import com.shop.service.CategoryService;

import java.util.List;


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




//	@PostMapping("/addCategory")
//	public @ResponseBody
//	List<Category> registrationCategory(@RequestBody Category category) throws Exception {
//	categoryService.save(category);
//	System.out.println("category = " + category);
//	return categoryService.findAll();
//	}
		
		@PostMapping("/addCategory")
		public String registrationCategory(@ModelAttribute Category category,
										   Model model) throws Exception {

				try {
					categoryService.save(category);
				}catch (Exception e){
					if(e.getMessage().equals(CategoryValidatorMessenger.FIELD_CATEGORY_IS_EMPTY)){
						model.addAttribute("categoryException", e.getMessage());
					}
					return "views-admin-addCategory";
				}

			return"redirect:/addCategory";
		}
		
		@GetMapping("/deleteCategory/{id}")
		public  String delete (@PathVariable int id){
			categoryService.delete(id);
			return"redirect:/addCategory";
		}

}

