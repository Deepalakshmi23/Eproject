package com.niit.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.niit.dao.Customerdao;
import com.niit.model.Customer;
import com.niit.model.user;


@Service
@Transactional
public class customerserviceimpl implements customerservice {
	
	@Autowired
	private Customerdao customerdao;
 
public void registerCustomer(Customer customer) {
	// TODO Auto-generated method stub
	customerdao.registerCustomer(customer);
}
public user validateUsername(String username) {
	return customerdao.validateUsername(username);
}
public Customer validateEmail(String email) {
	return customerdao.validateEmail(email);
}
public Customer customerbyusername(String username) {
	return customerdao.customerbyusername(username);
}


}
