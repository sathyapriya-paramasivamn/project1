package com.niit.shoppingkartfront.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.niit.ShoppingCartBackend.DAO.CartDAO;
import com.niit.ShoppingCartBackend.Model.Cart;



@Controller
public class CartController {

	@Autowired
	private CartDAO cartDAO;
	
	@RequestMapping("addCart")
	public String addCart(@ModelAttribute Cart cart){
		cartDAO.saveOrUpdate(cart);
		return "ViewCart";
		
	}
	
}
