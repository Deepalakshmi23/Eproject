package com.niit.dao;

import com.niit.model.Customer;
import com.niit.model.user;

public interface Customerdao {
	void registerCustomer(Customer customer);
	user validateUsername(String username);
	Customer validateEmail(String email);
	Customer customerbyusername(String username);
	
}

