package com.shop.controller;

import com.shop.service.MailSenderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import com.shop.entity.User;
import com.shop.service.UserService;

import java.security.Principal;
import java.util.UUID;


@Controller
public class UserController {

	@Autowired
	private MailSenderService mailSenderService;

	@Autowired
private UserService userService; 
	
	
	@GetMapping("/signUp")
	public String user(Model model){
		model.addAttribute("users", userService.findAll());
		model.addAttribute("user",new User());
		return "views-user-signUp";
	}
	@PostMapping("/signUp")
	public String registartion(@ModelAttribute User user , Model model){

		String uuid = UUID.randomUUID().toString();//asdjcniq3nv3oriv9q3j0eic9wuEQDCQW

		user.setUuid(uuid);
		
		userService.save(user);

		String theme = "thank's for registration";
		String mailBody =
				"gl & hf       http://localhost:8080/confirm/" + uuid;

		mailSenderService.sendMail(theme, mailBody, user.getEmail());
		
		return "redirect:/";
	}
	
	@GetMapping("/deleteUser/{id}")
	public String delete(@PathVariable int id){
		
		userService.delete(id);
		return "redirect:/signUp";
	}

	@GetMapping("/profile")
	public String profile(Principal principal, Model model){
		//model.addAttribute("user",userService.findOne(Integer.parseInt(principal.getName())));
		model.addAttribute("user",userService.findUserWithCommodity(Integer.parseInt(principal.getName())));
		model.addAttribute("qwer",userService.findUserWithHistory(Integer.parseInt(principal.getName())));


		return "views-user-profile";
	}

//	@GetMapping("/addInBasket/{id}")
//	public String addInBasket(Principal principal, @PathVariable int id){
//
//		userService.addInBasket(principal, id);
//		return "redirect:/";
//	}

	@GetMapping("/confirm/{uuid}")
	public String confirm(@PathVariable String uuid) {

		User user = userService.findByUuid(uuid);
		user.setEnable(true);

		userService.update(user);

		return "redirect:/";
	}

//	@GetMapping("/like/{id}")
//	public String like(Principal principal,
//					   @PathVariable int id) {
//
//		userService.like(principal, id);
//
//		return "redirect:/";
//	}
//


	@GetMapping("/testreg")
	public String test (Model model){
		return "views-test-testreg";
	}
}


