package com.niit.shoppingcartbackend;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;



import com.niit.ShoppingCartBackend.DAO.BillingDAO;
import com.niit.ShoppingCartBackend.DAO.CartDAO;
import com.niit.ShoppingCartBackend.DAO.CategoryDAO;
import com.niit.ShoppingCartBackend.DAO.ProductDAO;
import com.niit.ShoppingCartBackend.DAO.RoleDAO;
import com.niit.ShoppingCartBackend.DAO.ShippingDAO;
import com.niit.ShoppingCartBackend.DAO.SupplierDAO;
import com.niit.ShoppingCartBackend.DAO.UserDAO;
import com.niit.ShoppingCartBackend.Model.Billing;
import com.niit.ShoppingCartBackend.Model.Cart;
import com.niit.ShoppingCartBackend.Model.Category;
import com.niit.ShoppingCartBackend.Model.Product;
import com.niit.ShoppingCartBackend.Model.Role;
import com.niit.ShoppingCartBackend.Model.Shipping;
import com.niit.ShoppingCartBackend.Model.Supplier;
import com.niit.ShoppingCartBackend.Model.User;
   
public class CategoryTest {
	public static void main (String[] args) {

		AnnotationConfigApplicationContext context = new AnnotationConfigApplicationContext();
		context.scan("com.niit.*");
		context.refresh();

		CategoryDAO categoryDAO = (CategoryDAO) context.getBean("CategoryDAO");
		Category category = (Category) context.getBean("category");
		
		ProductDAO productDAO = (ProductDAO) context.getBean("ProductDAO");
		Product product = (Product) context.getBean("product");
		
		RoleDAO roleDAO = (RoleDAO) context.getBean("RoleDAO");
		Role role = (Role) context.getBean("role");

		SupplierDAO supplierDAO = (SupplierDAO) context.getBean("SupplierDAO");
		Supplier supplier = (Supplier) context.getBean("supplier");
		
		UserDAO userDAO = (UserDAO) context.getBean("UserDAO");
		User user = (User) context.getBean("user");
        
		CartDAO cartDAO=(CartDAO) context.getBean("CartDAO");
		Cart cart=(Cart) context.getBean("cart");
		
		ShippingDAO shippingDAO=(ShippingDAO) context.getBean("ShippingDAO");
		Shipping shipping =(Shipping) context.getBean("shipping");
		
		BillingDAO billingDAO=(BillingDAO) context.getBean("BillingDAO");
		Billing billing =(Billing) context.getBean("billing");
				
				
		category.setCategoryName("saree");
		category.setDescription("collections");
		
		
		/*user.setUsername("sathya");*/
		user.setMailid("sathya23@gmail.com");
		user.setAddress("12,ram street pollachi");
		user.setMobileno("9876567891");
		user.setPassword("sa23@");;
		userDAO.saveOrUpdate(user);

		
	
		
		user.setRole(role);
		role.setUser(user);
		role.setMailid("sathya23@gmail.com");
	   /* role.setUsername("sathya");*/
		role.setRole("user");
		product.setProductName("handwork");
		product.setProductdescription("hanwork sarees");
 	
		
		supplier.setName("sai");
		supplier.setEmailId("sai@gmail.com");
		supplier.setAddress("chennai");
		supplier.setMobileno("998822346");
		
		cart.setProductName("handwork");
		cart.setQuantity(2);
		cart.setStatus("N");
		cart.setPrice(1000);
		cart.setTotal(2000);
		cart.setDays(3);
		/*cart.setUsername("sathya");*/
		
	/*	shipping.setUsername("sathya");*/
		shipping.setMailid("sathya@gmaill.com");
		shipping.setMobileno("9876543434");
        shipping.setAddress("12,ramnagar,pollachi");
		
       
        billing.setMailid("sara23@gmaill.com");
        billing.setMobileno("8765432321");
        billing.setAddress("12,ramnagar,pollachi");
		
        
		categoryDAO.saveOrUpdate(category);
		productDAO.saveOrUpdate(product);
		roleDAO.saveOrUpdate(role);
		supplierDAO.saveOrUpdate(supplier);
		userDAO.saveOrUpdate(user);
		cartDAO.saveOrUpdate(cart);
		shippingDAO.saveOrUpdate(shipping);
	
	
	
	}   


}
