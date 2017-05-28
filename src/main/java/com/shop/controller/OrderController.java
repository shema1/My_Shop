package com.shop.controller;

import java.time.LocalDate;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.shop.entity.Orderss;
import com.shop.service.CommodityService;
import com.shop.service.OrderssService;
import com.shop.service.UserService;

@Controller
public class OrderController {

	@Autowired
	private OrderssService orderssService;
	@Autowired
	private CommodityService commodityService; 
	@Autowired
	private UserService userService ;
	
	
	@GetMapping("/addOrder")
	public String Order(Model model){
		model.addAttribute("Order", orderssService.findAll());
		model.addAttribute("selCommodity", commodityService.findAll() );
		model.addAttribute("selUser", userService.findAll());
		return "addOrder";
	}
	
	@PostMapping("/addOrder")
	public String addOrder(@RequestParam int com1,
							@RequestParam int user,
							@RequestParam LocalDate date1){
		orderssService.save(new Orderss(date1),user);
		return "redirect:/addOrder";
	}
	
	@GetMapping("/deleteOrder/{id}")
	public String delete(@PathVariable int id){
		
		orderssService.delete(id);;
		return "redirect:/addOrder";
	}
}

