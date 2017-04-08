package com.niit.shoppingkartfront.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.niit.ShoppingCartBackend.DAO.ProductDAO;

import com.niit.ShoppingCartBackend.Model.Product;

@Controller
public class ProductController {

	@Autowired
	private ProductDAO productDAO;
	
	@RequestMapping("addProduct")
	public String addProduct(@ModelAttribute Product product){
		productDAO.saveOrUpdate(product);
		return "redirect:viewProduct";
		
	}
	@RequestMapping("viewProduct")
	public String viewProducts(Model model){
		
		List<Product> productList = productDAO.list();
		model.addAttribute("productList", productList);
		model.addAttribute("viewProductClicked", true);
		return "Adminsignin";


}
	@RequestMapping("editProduct")
	public String EditCategories(@RequestParam("productId") String productId, Model model){
		
		Product product = productDAO.get(productId);
		model.addAttribute("product", product);
		model.addAttribute("EditProductClicked", true);
		return "Adminsignin";
	}
	@RequestMapping("AfterEdit")
    public String AfterEdit(@ModelAttribute Product product){
	productDAO.saveOrUpdate(product);
	return "redirect:viewProduct";
}


	@RequestMapping("deleteProduct")
	public String deleteProduct(@RequestParam("productId") String productId){
		productDAO.delete(productId);
		return "redirect:viewProduct";
		
	}

}
