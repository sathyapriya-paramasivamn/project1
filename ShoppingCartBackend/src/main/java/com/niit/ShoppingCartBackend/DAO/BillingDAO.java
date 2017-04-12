package com.niit.ShoppingCartBackend.DAO;

import java.util.List;

import com.niit.ShoppingCartBackend.Model.Billing;



public interface BillingDAO {
	
public List<Billing> list();
	
	public Billing get(String billingid);
	public List<Billing> getMailid(String mailid); 
	public void saveOrUpdate(Billing billing);
	
	public void delete(String billingid);;

}
