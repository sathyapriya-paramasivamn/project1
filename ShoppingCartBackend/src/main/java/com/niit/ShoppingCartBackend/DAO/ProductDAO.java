package com.niit.ShoppingCartBackend.DAO;

import java.util.List;


import com.niit.ShoppingCartBackend.Model.Product;

public interface ProductDAO {
	public List<Product> list();

	public Product get(String productid);

	public void saveOrUpdate(Product product);

	public void delete(String productid);
}
