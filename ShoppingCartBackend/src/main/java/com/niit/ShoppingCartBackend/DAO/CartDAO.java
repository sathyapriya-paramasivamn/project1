package com.niit.ShoppingCartBackend.DAO;

import java.util.List;

import com.niit.ShoppingCartBackend.Model.Cart;

public interface CartDAO {
public List<Cart> list();
	
	public Cart get(String cartid);
	
	public void saveOrUpdate(Cart cart);
	
	public void delete(String cartid);
	
}
