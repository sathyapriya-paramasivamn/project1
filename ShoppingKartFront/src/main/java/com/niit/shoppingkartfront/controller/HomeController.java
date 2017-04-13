package com.niit.shoppingkartfront.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.niit.ShoppingCartBackend.DAO.CategoryDAO;
import com.niit.ShoppingCartBackend.DAO.ProductDAO;
import com.niit.ShoppingCartBackend.DAO.SupplierDAO;
import com.niit.ShoppingCartBackend.Model.Category;
import com.niit.ShoppingCartBackend.Model.Product;
import com.niit.ShoppingCartBackend.Model.Supplier;

@Controller
public class HomeController { 
	
	@Autowired
	private CategoryDAO categoryDAO;
	
	@Autowired
	private SupplierDAO supplierDAO;

	@Autowired
	private ProductDAO productDAO;
	
	@RequestMapping("/")
	public String homePage(Model model){
		List<Product> productList = productDAO.list();
		model.addAttribute("productList", productList);
		
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
	public String newUser(Model model){
		model.addAttribute("signupButtonClicked", true);
		return "home";
}
	@RequestMapping("newCart")
	public String newCart(){
		
		return "cartform";
	}

	
	
	@RequestMapping("signin")
	public String signin(Model model){
		model.addAttribute("loginButtonClicked", true);
		return "home";
	}
	
	@RequestMapping("signup")  
	public String signup(Model model){
		model.addAttribute("signupButtonClicked", true);
		return "home";
	}
	
	@RequestMapping("/loginpage")
	public ModelAndView loginpage(@RequestParam(value = "error", required = false) String error, 
			@RequestParam(value = "logout", required = false) String logout, Model model) {
		ModelAndView mv = new ModelAndView("home");
		
		if(error != null) {
			model.addAttribute("error", "Username or Password Incorrect");
			}
		
		if(logout != null) {
			model.addAttribute("logout", "Logged out Successfully");
			}
		
		mv.addObject("loginButtonClicked", true);
		return mv;
	}

		/*@RequestMapping("loginPage")
	public ModelAndView newLogin(){
		
		ModelAndView mv = new ModelAndView("home");
		mv.addObject("loginButtonClicked", true);
		return mv;
	}*/

}
