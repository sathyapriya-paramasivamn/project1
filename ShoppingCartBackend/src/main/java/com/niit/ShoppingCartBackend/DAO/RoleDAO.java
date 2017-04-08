package com.niit.ShoppingCartBackend.DAO;

import java.util.List;

import com.niit.ShoppingCartBackend.Model.Role;

public interface RoleDAO {
public List<Role> list();
	
	public Role get(String userid);
	
	public Role getByMailId(String mailid);

	
	public void saveOrUpdate(Role role);
}
