package com.niit.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.niit.dao.Cartitemdao;
import com.niit.model.Cartitem;
import com.niit.model.cart;
@Service
@Transactional
public class Cartitemserviceimpl implements Cartitemservice {
@Autowired
private Cartitemdao cartitemdao;
	@Override
	public void addCartItem(Cartitem cartitem) {
		cartitemdao.addCartItem(cartitem);
		
	}

	
	public void removeCartItem(int cartitemid) {
		cartitemdao.removeCartItem(cartitemid);
		
	}


	public void removeallCartItem(int cartid) {
		cartitemdao.removeallCartItem(cartid);
		
		
	}
	public cart getCart(int cartId) {
		return cartitemdao.getCart(cartId);
	}

}
