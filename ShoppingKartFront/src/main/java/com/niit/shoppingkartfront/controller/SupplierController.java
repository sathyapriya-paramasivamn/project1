package com.niit.shoppingkartfront.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.niit.ShoppingCartBackend.DAO.SupplierDAO;
import com.niit.ShoppingCartBackend.Model.Supplier;


@Controller
public class SupplierController {
	
	@Autowired
	private SupplierDAO supplierDAO;
	
	@RequestMapping("addSupplier")
	public String addSupplier(@ModelAttribute Supplier supplier){
		supplierDAO.saveOrUpdate(supplier);
		return "redirect:ViewSupplier";
		
		
	}
	@RequestMapping("viewSupplier")
	public String viewSupplier(Model model){
		
		List<Supplier> supplierList = supplierDAO.list();
		model.addAttribute("supplierList", supplierList);
		model.addAttribute("viewSupplierClicked", true);
		return "Adminsignin";
	}
	@RequestMapping("editSupplier")
	public String EditSupplier(@RequestParam("supplierId") String supplierId, Model model){
		
		Supplier supplier = supplierDAO.get(supplierId);
		model.addAttribute("supplier", supplier);
		model.addAttribute("EditSupplierClicked", true);
		return "Adminsignin";
	
}
	@RequestMapping("afteredit")
	public String afterEdit(@ModelAttribute Supplier supplier){
		supplierDAO.saveOrUpdate(supplier);
		return "redirect:viewSupplier";
	}
	@RequestMapping("deleteSupplier")
	public String deleteSupplier(@RequestParam("supplierId") String supplierId){
		supplierDAO.delete(supplierId);
		return "redirect:viewSupplier";
		
	}


}