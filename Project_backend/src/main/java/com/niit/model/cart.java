package com.niit.model;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;

@Entity
public class cart {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int id;
	private double grandtotal;
	@OneToOne
	@JoinColumn(name="customer_id")
	private Customer customer;
	@OneToMany(mappedBy="cart",fetch=FetchType.EAGER)
	private List<Cartitem> cartitems;
	public List<Cartitem> getCartitems() {
		return cartitems;
	}
	public void setCartitems(List<Cartitem> cartitems) {
		this.cartitems = cartitems;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public double getGrandtotal() {
		return grandtotal;
	}
	public void setGrandtotal(double grandtotal) {
		this.grandtotal = grandtotal;
	}
	public Customer getCustomer() {
		return customer;
	}
	public void setCustomer(Customer customer) {
		this.customer = customer;
	}
	

}