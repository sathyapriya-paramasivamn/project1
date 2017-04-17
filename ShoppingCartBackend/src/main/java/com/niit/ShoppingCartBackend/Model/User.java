package com.niit.ShoppingCartBackend.Model;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import org.springframework.stereotype.Component;

@Entity
@Table(name = "user")
@Component
public class User {
	@Id
	@Column(name="userid")
	@GeneratedValue
	private String userid;
	
	private String name;
	private String mailid;
	private String password;
	private String address;
	private String mobileno;
	 private boolean enabled;
	
	 @OneToOne(cascade = CascadeType.ALL)
		@JoinColumn(name = "userid")
	 private Role role;
	 
	 
	 
	public Role getRole() {
		return role;
	}
	public void setRole(Role role) {
		this.role = role;
	}   
	public boolean isEnabled() {
		return enabled;  
	}
	public void setEnabled(boolean enabled) {
		this.enabled = enabled;
	}
	public String getMobileno() {
		return mobileno;
	}
	public void setMobileno(String mobileno) {
		this.mobileno = mobileno;
	}
	public String getUserid() {
		return userid;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
	public void setUserid(String userid) {
		this.userid = userid;
	}
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getMailid() {
		return mailid;
	}
	public void setMailid(String mailid) {
		this.mailid = mailid;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
}
  