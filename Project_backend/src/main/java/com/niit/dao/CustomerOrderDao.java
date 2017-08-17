package com.niit.dao;

import com.niit.model.cart;
import com.niit.model.CustomerOrder;

public interface CustomerOrderDao {
	
 CustomerOrder Createorder(cart cart);
}
