package com.niit.dao;

import java.util.Date;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.niit.model.cart;
import com.niit.model.Cartitem;
import com.niit.model.Customer;
import com.niit.model.CustomerOrder;
@Repository
public class CustomerOrderDaoImpl implements CustomerOrderDao{

	@Autowired
	private SessionFactory sessionFactory;
	
	
	public CustomerOrder Createorder(cart cart) {
		Session session=sessionFactory.getCurrentSession();
		//Cart cart=(Cart)session.get(cart.class,cartId);
		List<Cartitem> cartitems=cart.getCartitems();
		double grandTotal=0;
		for(Cartitem cartitem:cartitems){
			grandTotal=cartitem.getTotalprice()+grandTotal;
		}
		cart.setGrandtotal(grandTotal);
		Customer customer=cart.getCustomer();
		CustomerOrder customerOrder=new CustomerOrder();
		customerOrder.setPurchaseDate(new Date());
		customerOrder.setCart(cart);
		customerOrder.setCustomer(customer);
		customerOrder.setBillingAddress(customer.getBillingaddress());
		customerOrder.setShippingAddress(customer.getShippingaddress());
		session.save(customerOrder);//insert, also execute update queries for other tables
		return customerOrder;
	}
	
	

}
