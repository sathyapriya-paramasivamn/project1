package com.niit.shoppingkartfront.controller;

import java.security.Principal;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.niit.ShoppingCartBackend.DAO.ShippingDAO;

import com.niit.ShoppingCartBackend.Model.Shipping;

@Controller
public class ShippingController {
	@Autowired
		private ShippingDAO shippingDAO;
/*	
public String addShipping(@ModelAttribute Shipping shipping){
		
		shippingDAO.saveOrUpdate(shipping);
		
		return "viewproduct";
		}*/
@RequestMapping("proceed")
public String proced(Principal p, Model model)
{
		String email = p.getName();
		List<Shipping> shippingList = shippingDAO.getMailid(email);
		model.addAttribute("shippingList", shippingList);
		model.addAttribute("viewShipping", true);
		return "Usersignin";

}
}
  