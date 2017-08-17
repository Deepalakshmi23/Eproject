package com.niit.dao;

import com.niit.model.Cartitem;
import com.niit.model.cart;

public interface Cartitemdao {
	void addCartItem(Cartitem cartitem);
	void removeCartItem(int cartitemid);
    public	void removeallCartItem(int cartid);
    public cart getCart(int cartId);
	

}
