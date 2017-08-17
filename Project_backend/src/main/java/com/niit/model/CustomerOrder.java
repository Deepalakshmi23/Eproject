package com.niit.model;

import java.util.Date;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

@Entity
	public class CustomerOrder {
		
		@Id
		@GeneratedValue(strategy=GenerationType.AUTO)
	private int orderId;
	private Date purchaseDate;
	@ManyToOne(cascade=CascadeType.ALL)
	@JoinColumn(name="cart_id")
	private cart cart;
	@ManyToOne(cascade=CascadeType.ALL)
	@JoinColumn(name="customer_id")
	private Customer customer;
	@ManyToOne
	@JoinColumn(name="billingaddress_id")
	private billingaddress billingAddress;
	@ManyToOne(cascade=CascadeType.ALL)
	@JoinColumn(name="shippingaddress_id")
	private shippingaddress shippingAddress;
	
	public shippingaddress getShippingAddress() {
		return shippingAddress;
	}
	public void setShippingAddress(shippingaddress shippingAddress) {
		this.shippingAddress = shippingAddress;
	}
	public int getOrderId() {
		return orderId;
	}
	public void setOrderId(int orderId) {
		this.orderId = orderId;
	}
	public Date getPurchaseDate() {
		return purchaseDate;
	}
	public void setPurchaseDate(Date purchaseDate) {
		this.purchaseDate = purchaseDate;
	}
	public cart getCart() {
		return cart;
	}
	public void setCart(cart cart) {
		this.cart = cart;
	}
	public Customer getCustomer() {
		return customer;
	}
	public void setCustomer(Customer customer) {
		this.customer = customer;
	}
	public billingaddress getBillingAddress() {
		return billingAddress;
	}
	public void setBillingAddress(billingaddress billingAddress) {
		this.billingAddress = billingAddress;
	}
	

}
