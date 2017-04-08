package com.niit.ShoppingCartBackend.DAO;

import java.util.List;

import com.niit.ShoppingCartBackend.Model.Shipping;

public interface ShippingDAO {
public List<Shipping> list();
	
	public Shipping get(String shippingid);
	
	public void saveOrUpdate(Shipping shipping);
	
	public void delete(String shippingid);
}
