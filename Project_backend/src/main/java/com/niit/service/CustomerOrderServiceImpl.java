package com.niit.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.niit.dao.CustomerOrderDao;
import com.niit.model.cart;
import com.niit.model.CustomerOrder;

@Service
@Transactional
public class CustomerOrderServiceImpl implements CustomerOrderService {
	
	@Autowired
	private CustomerOrderDao customerorderdao;

	public CustomerOrder Createorder(cart cart) {
		return customerorderdao.Createorder(cart);
	}

}
