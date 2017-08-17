package com.niit.model;



import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;

import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.validation.Valid;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotEmpty;
@Entity
public class Customer {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
	@NotEmpty(message="username is empty")
	private String fname;
	@NotEmpty
	private String lname;
	@Column(unique = true, nullable = false)
	@Email
	private String email;
	@NotEmpty
	@Size(min = 10, max = 10)
	private String phone;
	@OneToOne(cascade = CascadeType.ALL)
	@JoinColumn(name = "user_id")
	@Valid
	
	private user user;
	@OneToOne(cascade = CascadeType.ALL)
	@JoinColumn(name = "billingaddress_id")
	@Valid
	private billingaddress billingaddress;
	public shippingaddress getShippingaddress() {
		return shippingaddress;
	}
	public void setShippingaddress(shippingaddress shippingaddress) {
		this.shippingaddress = shippingaddress;
	}
	@OneToOne(cascade = CascadeType.ALL)
	@JoinColumn(name = "shippingaddress_id")
	@Valid
	private shippingaddress shippingaddress;
	@OneToOne(cascade = CascadeType.ALL)
	@JoinColumn(name = "cart_id")
	@Valid
	private cart cart;
	
  
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getFname() {
		return fname;
	}
	public void setFname(String fname) {
		this.fname = fname;
	}
	public String getLname() {
		return lname;
	}
	public void setLname(String lname) {
		this.lname = lname;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public user getUser() {
		return user;
	}
	public void setUser(user user) {
		this.user = user;
	}
	public billingaddress getBillingaddress() {
		return billingaddress;
	}
	public void setBillingaddress(billingaddress billingaddress) {
		this.billingaddress = billingaddress;
	}
	public cart getCart() {
		return cart;
	}
	public void setCart(cart cart) {
		this.cart = cart;
	}
	

}
