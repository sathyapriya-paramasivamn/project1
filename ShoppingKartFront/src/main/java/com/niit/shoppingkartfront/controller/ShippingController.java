package com.niit.shoppingkartfront.controller;

import java.security.Principal;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.niit.ShoppingCartBackend.DAO.ShippingDAO;
import com.niit.ShoppingCartBackend.DAO.UserDAO;
import com.niit.ShoppingCartBackend.Model.Shipping;
import com.niit.ShoppingCartBackend.Model.User;

@Controller
public class ShippingController {
	@Autowired
		private ShippingDAO shippingDAO;
	@Autowired
	private UserDAO userDAO;
	
	
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
@RequestMapping("editShipping")
public String EditShipping(@RequestParam("shippingId") String shippingid, Model model){
	
	Shipping shipping = shippingDAO.get(shippingid);
	model.addAttribute("shipping", shipping);
	model.addAttribute("EditShippingClicked", true);
	return "Usersignin";

}
@RequestMapping("deleteShipping")
public String deleteShipping(@RequestParam("shippingId") String shippingId){
	shippingDAO.delete(shippingId);
	return "redirect:viewshipping";
	
}
@RequestMapping("newAddress")
public String newAddress(Model model){
	model.addAttribute("newShippingClicked", true);
	return "Usersignin";
}
@RequestMapping("afterEditShipping")
public String AfterEdit(@ModelAttribute Shipping shipping, Principal p){
	User user = userDAO.getByMailId(p.getName());
	shipping.setMailid(p.getName());
	shipping.setUserid(user.getUserid());
	
	shippingDAO.saveOrUpdate(shipping);
return "redirect:proceed";
}
@RequestMapping("newshipping")
public String newshipping(Model model){
	model.addAttribute("newShippingClicked", true);
	return "Usersignin";
}

}

  