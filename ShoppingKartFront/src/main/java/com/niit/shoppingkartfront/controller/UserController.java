package com.niit.shoppingkartfront.controller;

import java.security.Principal;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.niit.ShoppingCartBackend.DAO.BillingDAO;
import com.niit.ShoppingCartBackend.DAO.ProductDAO;
import com.niit.ShoppingCartBackend.DAO.RoleDAO;
import com.niit.ShoppingCartBackend.DAO.ShippingDAO;
import com.niit.ShoppingCartBackend.DAO.UserDAO;
import com.niit.ShoppingCartBackend.Model.Billing;
import com.niit.ShoppingCartBackend.Model.Product;
import com.niit.ShoppingCartBackend.Model.Role;
import com.niit.ShoppingCartBackend.Model.Shipping;
import com.niit.ShoppingCartBackend.Model.User;

@Controller
public class UserController {

	@Autowired
	private UserDAO userDAO;
	
	@Autowired
	private RoleDAO roleDAO;
	
	@Autowired
	private Role role;
	
	@Autowired
	private ProductDAO productDAO;
	
	@Autowired
	private ShippingDAO shippingDAO;
	
	@Autowired
	private BillingDAO billingDAO;
	

	@RequestMapping("addUser")
	public String addCategory(@ModelAttribute User user, @ModelAttribute Shipping shipping, @ModelAttribute Billing billing, Model model){
		
		user.setEnabled(true);
		role.setMailid(user.getMailid());
		role.setRole("ROLE_USER");
		role.setUsername(user.getUsername());
		
		
		user.setRole(role);
		role.setUser(user);		
		userDAO.saveOrUpdate(user);
		roleDAO.saveOrUpdate(role);
		
		shipping.setUserid(user.getUserid());
		shippingDAO.saveOrUpdate(shipping);
		
		billing.setUserid(user.getUserid());
		billingDAO.saveOrUpdate(billing);
		
		model.addAttribute("loginButtonClicked", true);
		model.addAttribute("message", "Regieted");
		return "home";
}
	
	@RequestMapping("/afterlogin")
	public String afterLogin(Principal p, Model model){
		String mailid = p.getName();
		User user = userDAO.getByMailId(mailid);
		
		Role role = roleDAO.getByMailId(mailid);
		
		String r = role.getRole();
		
		if(r.equals("ROLE_ADMIN")){
			
			return "Adminsignin";
		}
		else if(r.equals("ROLE_USER")){
			
			
			List<Product> productList = productDAO.list();
			model.addAttribute("productList", productList);
			
			return "Usersignin";
		}
		else{
			model.addAttribute("error", "Invalid username or password!");
			return "home";
		}
		
		
	}
	
}
