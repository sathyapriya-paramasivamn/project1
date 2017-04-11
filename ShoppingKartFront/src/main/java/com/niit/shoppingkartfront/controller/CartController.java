package com.niit.shoppingkartfront.controller;

import java.security.Principal;
import java.util.List;
import java.util.Random;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.niit.ShoppingCartBackend.DAO.CartDAO;
import com.niit.ShoppingCartBackend.DAO.ProductDAO;
import com.niit.ShoppingCartBackend.DAO.UserDAO;
import com.niit.ShoppingCartBackend.Model.Cart;
import com.niit.ShoppingCartBackend.Model.Product;
import com.niit.ShoppingCartBackend.Model.User;

@Controller
public class CartController {

	@Autowired
	private CartDAO cartDAO;
	
	@Autowired
	private ProductDAO productDAO;
	
	@Autowired
	private UserDAO userDAO;
	
	@Autowired
	private Cart cart;

	@RequestMapping("addToCart")
	public String addToCart(@RequestParam("productId") String productid ,Principal p, Model model){
		Product product = productDAO.get(productid);
		User user = userDAO.getByMailId(p.getName());
		
		Random t = new Random();
		int day = 2 + t.nextInt(6);
		
		cart.setUserid(user.getUserid());
		cart.setUsername(user.getUsername());
		cart.setMailid(p.getName());
		cart.setProductid(product.getProductid());
		cart.setProductName(product.getProductName());
		cart.setQuantity(1);
		cart.setPrice(product.getPrice());
	    cart.setTotal(cart.getPrice()*cart.getQuantity());
	    cart.setStatus("N");
	    cart.setDays(day);
		
	cartDAO.saveOrUpdate(cart);
		return "redirect:mycart";
		
	}

	@RequestMapping("productdescription")
	public String productdescription(@RequestParam("productid") String productid, Model model) {

		Product product = productDAO.get(productid);
		model.addAttribute("product", product);
		model.addAttribute("productdescription", true);

		return "Usersignin";

	}

	@RequestMapping("mycart")
	public String mycart(Principal principal, Model model) {
		String email = principal.getName();
		List<Cart> cartList = cartDAO.list(email);
		model.addAttribute("cartList", cartList);
		model.addAttribute("myKartClicked", true);
		return "Usersignin";

	}
	
	@RequestMapping("deleteCart")
	public String deleteCart(@RequestParam("cartId") String cartId){
		cartDAO.delete(cartId);
		return "redirect:mycart";
		
	}
	
	
}