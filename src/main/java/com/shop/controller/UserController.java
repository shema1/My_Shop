package com.shop.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.shop.entity.User;
import com.shop.service.UserService;



@Controller
public class UserController {

	@Autowired
private UserService userService; 
	
	
	@GetMapping("/user")
	public String user(Model model){
		model.addAttribute("users", userService.findAll());
		return "user";
	}
	@PostMapping("/user")
	public String registartion(@RequestParam String name,
								@RequestParam String email,
								@RequestParam String password){
		
		userService.save(new User(name, email, password));
		
		return "redirect:/user";
	}
	
	@GetMapping("/deleteUser/{id}")
	public String delete(@PathVariable int id){
		
		userService.delete(id);
		return "redirect:/user";
	}
	
	
}


