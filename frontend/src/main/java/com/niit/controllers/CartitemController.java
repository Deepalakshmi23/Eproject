package com.niit.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.niit.model.Cartitem;
import com.niit.model.Customer;
import com.niit.model.Product;
import com.niit.model.cart;
import com.niit.service.Cartitemservice;
import com.niit.service.Productservice;
import com.niit.service.customerservice;

@Controller
public class CartitemController {
	@Autowired
	private Cartitemservice cartitemservice;
	@Autowired
	private customerservice customerservice;
	@Autowired
	private Productservice productservice;

	@RequestMapping("/cart/addtocart/{id}")
	public String addtocart(@PathVariable int id, @RequestParam int units, Model model) {
		Product product = productservice.getproductbyid(id);
		User user = (User) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		String username = user.getUsername();
		Customer customer = customerservice.customerbyusername(username);
		cart cart = customer.getCart();
		List<Cartitem> cartitems=cart.getCartitems();
		System.out.println(cart.getCartitems().size());
		
		
		for(Cartitem cartitem :cartitems)
	
			if(cartitem.getProduct().getId()==id)
			{
			
		cartitem.setQuantity(units);
		cartitem.setTotalprice(units * product.getPrice());
         cartitemservice.addCartItem(cartitem);
         return "redirect:/cart/getcart"; 
			
			}
		Cartitem cartitem=new Cartitem();
		cartitem.setQuantity(units);
		cartitem.setTotalprice(units * product.getPrice());
		cartitem.setCart(cart);
		cartitem.setProduct(product);
		
         cartitemservice.addCartItem(cartitem);
         return "redirect:/cart/getcart"; 
	}
		@RequestMapping("/cart/getcart")
		public String getcart(Model model) {
			User user = (User) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
			String username = user.getUsername();
			System.out.println(username);
			Customer customer = customerservice.customerbyusername(username);
			System.out.println(customer.getEmail());
			cart cart = customer.getCart();
			int count=cart.getCartitems().size();
			System.out.println(cart.getId());
			model.addAttribute("ca",cart);
			model.addAttribute("i",count);
			System.out.println(username);
			return "cart";
			
			
		}

	
		@RequestMapping("/cart/removecartitem/{cartitemid}")
		public String removecartitem(@PathVariable int cartitemid,Model model) {

			cartitemservice.removeCartItem(cartitemid);
			return "redirect:/cart/getcart";
		}

		@RequestMapping("/cart/removecart/{cartid}")
		public String removecart(@PathVariable("cartid") int cartid,Model model) {

			cartitemservice.removeallCartItem(cartid);
			return "redirect:/cart/getcart";
		}
}