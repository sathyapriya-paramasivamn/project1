package com.niit.ShoppingCartBackend.DAO;

import java.util.List;

import com.niit.ShoppingCartBackend.Model.User;

public interface UserDAO {
	public List<User> list();

	public User get(String userid);
	
	public User getByMailId(String mailid);

	public void saveOrUpdate(User user);

	public void delete(String userid);
}
