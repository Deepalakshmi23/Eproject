package com.niit.service;

import com.niit.model.Customer;
import com.niit.model.user;


public interface customerservice {
	void registerCustomer(Customer customer);
	user validateUsername(String username);
	Customer validateEmail(String email);
	Customer customerbyusername(String username);
	


}
