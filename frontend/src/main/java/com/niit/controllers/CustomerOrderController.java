package com.niit.controllers;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.niit.model.cart;
import com.niit.model.Customer;
import com.niit.model.CustomerOrder;
import com.niit.model.shippingaddress;
import com.niit.service.Cartitemservice;
import com.niit.service.CustomerOrderService;
import com.niit.service.customerservice;

@Controller
public class CustomerOrderController {
	@Autowired
	private CustomerOrderService customerOrderService;
	@Autowired
	private Cartitemservice cartitemservice;
	@Autowired
	private customerservice customerservice;

	@RequestMapping("/cart/shippingaddressform/{cartId}")
	public String getShippingAddress(@PathVariable int cartId, Model model) {
		
		cart cart = cartitemservice.getCart(cartId);
		Customer customer = cart.getCustomer();
		model.addAttribute("shippingaddress", customer.getShippingaddress());
		model.addAttribute("cartid", cartId);
		return "shippingaddress";
	}

	@RequestMapping("/cart/order/{cartId}")
	public String createOrder(@PathVariable int cartId, @ModelAttribute shippingaddress shippingaddress, Model model) {
		
		cart cart = cartitemservice.getCart(cartId);
		Customer customer = cart.getCustomer();
		customer.setShippingaddress(shippingaddress);
		cart.setCustomer(customer);
		/*CustomerOrder customerOrder = customerOrderService.Createorder(cart);
		model.addAttribute("order", customerOrder);*/
		model.addAttribute("cartid", cartId);
		return "payment";
	}
	@RequestMapping("/cart/pay/{cartid}")
	public String payment(@PathVariable int cartid, Model model)
	{
		cart cart = cartitemservice.getCart(cartid);
		Customer customer = cart.getCustomer();
		CustomerOrder customerOrder = customerOrderService.Createorder(cart);
		model.addAttribute("order", customerOrder);
		model.addAttribute("cartid", cartid);
		return "orderdetails";
		
	}

	@RequestMapping("/cart/confirm/{id}")
	public String confirm(@ModelAttribute CustomerOrder customerorder, Model model, @PathVariable int id) {
		
		cartitemservice.removeallCartItem(id);
		return "thankyou";
	}
	/*
	 * @RequestMapping("/cart/thankyou") public String cash(){ return "thankyou"; }
	 */
}