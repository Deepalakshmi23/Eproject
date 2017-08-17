package com.niit.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.niit.model.Cartitem;
import com.niit.model.cart;
@Repository
public class Cartitemimpl implements Cartitemdao  {

@Autowired
private SessionFactory sessionfactory;
	public void addCartItem(Cartitem cartitem) {
		Session session=sessionfactory.getCurrentSession();
		session.saveOrUpdate(cartitem);
		
	}

	
	public void removeCartItem(int cartitemid) {
		// TODO Auto-generated method stub
		Session session =sessionfactory.getCurrentSession();
		Cartitem cartitem=(Cartitem)session.get(Cartitem.class,cartitemid);
		session.delete(cartitem);
	}


	public void removeallCartItem(int cartid) {
		Session session =sessionfactory.getCurrentSession();
		cart cart=(cart)session.get(cart.class,cartid);
		List<Cartitem> cartitems=cart.getCartitems();
		for(Cartitem cartitem: cartitems)
		{
			session.delete(cartitem);
		}
		
		
		
	}
	public cart getCart(int cartId) {
		Session session=sessionfactory.getCurrentSession();
		cart cart=(cart)session.get(cart.class, cartId);
		return cart;
	}

}
