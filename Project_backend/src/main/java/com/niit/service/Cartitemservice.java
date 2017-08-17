package com.niit.service;

import com.niit.model.Cartitem;
import com.niit.model.cart;

public interface Cartitemservice {
	void addCartItem(Cartitem cartitem);
	void removeCartItem(int cartitemid);
    public	void removeallCartItem(int cartid);
    cart getCart(int cartId);
}
