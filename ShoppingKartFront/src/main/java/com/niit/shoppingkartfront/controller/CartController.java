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
		
		Cart crt = cartDAO.getByUserandProduct(p.getName(), productid);
		
		if (product.getStock() > 0){
			
			if(cartDAO.itemAlreadyExist(p.getName(), productid, true)){
				
			int qty = crt.getQuantity() + 1;
			crt.setQuantity(qty);
			crt.setTotal(product.getPrice()*qty);
			cartDAO.saveOrUpdate(crt);
				
			}
			else {
				
		    Random t = new Random();
			int day = 2 + t.nextInt(6);
			
			cart.setUserid(user.getUserid());
			cart.setName(user.getName());
			cart.setMailid(p.getName());
			cart.setProductid(product.getProductid());
			cart.setProductName(product.getProductName());
			cart.setQuantity(1);
			cart.setPrice(product.getPrice());
		    cart.setTotal(cart.getPrice()*cart.getQuantity());
		    cart.setStatus("N");
		    cart.setDays(day);
			
		cartDAO.saveOrUpdate(cart);
			}
		int stc=product.getStock()-1;
		product.setStock(stc);
		productDAO.saveOrUpdate(product);
			
			
		return "redirect:mycart";

		}
		else{
			model.addAttribute("product", product);
			model.addAttribute("productdescription", true);
			model.addAttribute("msg", "Out of Stock");
			return "Usersignin";
		}
				
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
		Long sum=cartDAO.getTotal(email);  
		model.addAttribute("total",sum);
		model.addAttribute("cartList", cartList);
		model.addAttribute("myKartClicked", true);
		return "Usersignin";
	  
	
	}
	@RequestMapping("deleteCart")
	public String deleteCart(@RequestParam("cartId") String cartId){
		Cart cart =cartDAO.get(cartId);
		Product product = productDAO.get(cart.getProductid());		
		
		int qty=cart.getQuantity();
		int stc=product.getStock();
		product.setStock(stc+qty);
		productDAO.saveOrUpdate(product);
		cartDAO.delete(cartId);
		
		return "redirect:mycart";
	}	
}