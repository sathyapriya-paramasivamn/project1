package com.niit.shoppingkartfront.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.niit.ShoppingCartBackend.DAO.CategoryDAO;
import com.niit.ShoppingCartBackend.DAO.SupplierDAO;
import com.niit.ShoppingCartBackend.Model.Category;
import com.niit.ShoppingCartBackend.Model.Supplier;

@Controller
public class HomeController { 
	
	@Autowired
	private CategoryDAO categoryDAO;
	
	@Autowired
	private SupplierDAO supplierDAO;

	@RequestMapping("/")
	public String homePage(){
		
		
		return "home";
		
	}
	
	@RequestMapping("newCategory")
	public String newCategory(Model model){
		model.addAttribute("addCategoryClicked", true);
		return "Adminsignin";
	}
	
	@RequestMapping("newProduct")
	public String newProduct(Model model){
		List<Category> categoryList = categoryDAO.list();
		List<Supplier> supplierList = supplierDAO.list();
		model.addAttribute("categoryList", categoryList);
		model.addAttribute("supplierList", supplierList);
		model.addAttribute("addProductClicked", true);
		return "Adminsignin";
	
	}
	@RequestMapping("newSupplier")
	public String newSupplier(Model model ){
		model.addAttribute("addSupplierClicked", true);
		return "Adminsignin";
	}
	
	@RequestMapping("home")
	public String homePages(){
		
		return "main";
	}
	
	@RequestMapping("newUser")
	public String newUser(){
		
		return "signup";
}
	@RequestMapping("newCart")
	public String newCart(){
		
		return "cartform";
	}
	@RequestMapping("signin")
	public String signin(){
		
		return "signin";
	}
	
	
		/*@RequestMapping("loginPage")
	public ModelAndView newLogin(){
		
		ModelAndView mv = new ModelAndView("home");
		mv.addObject("loginButtonClicked", true);
		return mv;
	}*/

}
