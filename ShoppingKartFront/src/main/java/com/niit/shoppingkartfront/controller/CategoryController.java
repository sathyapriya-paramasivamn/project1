package com.niit.shoppingkartfront.controller;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.niit.ShoppingCartBackend.DAO.CategoryDAO;
import com.niit.ShoppingCartBackend.Model.Category;


@Controller
public class CategoryController {
	
		@Autowired
		private CategoryDAO categoryDAO;
		
		@RequestMapping("addCategory")
		public String addCategory(@ModelAttribute Category category){
			categoryDAO.saveOrUpdate(category);
			return "redirect:viewCategory";
		
		}
		@RequestMapping("viewCategory")
		public String viewCategories(Model model){
			
			List<Category> categoryList = categoryDAO.list();
			model.addAttribute("categoryList", categoryList);
			model.addAttribute("viewCategoryClicked", true);
			return "Adminsignin";
			
		}
		@RequestMapping("editCategory")
		public String EditCategories(@RequestParam("categoryId") String categoryId, Model model){
			
			Category category = categoryDAO.get(categoryId);
			model.addAttribute("category", category);
			model.addAttribute("EditCategoryClicked", true);
			return "Adminsignin";
		
	}
		@RequestMapping("afterEdit")
		public String afterEdit(@ModelAttribute Category category){
			categoryDAO.saveOrUpdate(category);
			return "redirect:viewCategory";
		}
		@RequestMapping("deleteCategory")
		public String deleteCategory(@RequestParam("categoryId") String categoryId){
			categoryDAO.delete(categoryId);
			return "redirect:viewCategory";
			
		}

}