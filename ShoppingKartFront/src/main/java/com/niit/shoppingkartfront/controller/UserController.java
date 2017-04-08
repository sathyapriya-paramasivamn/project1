package com.niit.shoppingkartfront.controller;

import java.security.Principal;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.niit.ShoppingCartBackend.DAO.RoleDAO;
import com.niit.ShoppingCartBackend.DAO.UserDAO;
import com.niit.ShoppingCartBackend.Model.Role;
import com.niit.ShoppingCartBackend.Model.User;

@Controller
public class UserController {

	@Autowired
	private UserDAO userDAO;
	
	@Autowired
	private RoleDAO roleDAO;
	
	@Autowired
	private Role role;
	
	

	@RequestMapping("addUser")
	public String addCategory(@ModelAttribute User user){
		
		user.setEnabled(true);
		role.setMailid(user.getMailid());
		role.setRole("ROLE_USER");
		role.setUsername(user.getUsername());
		
		
		user.setRole(role);
		role.setUser(user);		
		userDAO.saveOrUpdate(user);
		roleDAO.saveOrUpdate(role);
		
		return "Usersignin";
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

			
			return "Usersignin";
		}
		else{
			model.addAttribute("error", "Invalid username or password!");
			return "home";
		}
		
		
	}
	
}
