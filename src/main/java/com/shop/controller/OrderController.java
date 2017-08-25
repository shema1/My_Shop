package com.shop.controller;

import java.security.Principal;
import java.time.LocalDate;

import com.shop.entity.Commodity;
import com.shop.entity.User;
import com.shop.validator.UserValidator.UserValidatorMessenges;
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
	public String Order(Model model, Principal principal){
		model.addAttribute("Order", orderssService.findAll());
		model.addAttribute("selCommodity", commodityService.findAll() );
		model.addAttribute("selUser", userService.findUserWithHistory(Integer.parseInt(principal.getName())));
		model.addAttribute("user",userService.findUserWithCommodity(Integer.parseInt(principal.getName())));

		User user = userService.findUserWithCommodity(Integer.parseInt(principal.getName()));
		if (user.getCommodities().isEmpty()){
			return "views-info-basketExist";
		}

		return "views-user-addOrder";
	}

	@GetMapping("/inBasket/{id}")
	public String buy (Principal principal, @PathVariable int id, Model model){


		model.addAttribute("user",userService.findUserWithCommodity(Integer.parseInt(principal.getName())));
		model.addAttribute("selCommodity", commodityService.findAll() );

		User user = userService.findUserWithCommodity(Integer.parseInt(principal.getName()));
		Commodity commodity = commodityService.findOne(id);
		if(user.getCommodities().contains(commodity)){
			return "views-info-alreadyInBasket";
		}else{
			orderssService.inBasket(principal , id);
			return "views-base-goods";
		}


	}

	@GetMapping("/deleteFromBasket/{userid}/{comid}")
public String deleteFromBasket (@PathVariable int userid,
								@PathVariable int comid,
								Model model){

		model.addAttribute("Order", orderssService.findAll());
		model.addAttribute("selCommodity", commodityService.findAll() );


		orderssService.deleteFromBasket(userid, comid);
		return "redirect:/addOrder";
//		return "views-user-addOrder";
	}


	@PostMapping("/buy/{userid}")
	public String buy (@PathVariable int userid, Model model){

			orderssService.buy(userid);

		return "views-info-thank";
	}


}

