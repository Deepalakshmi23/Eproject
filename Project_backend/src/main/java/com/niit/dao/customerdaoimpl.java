package com.niit.dao;




import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.niit.model.Authorities;
import com.niit.model.Customer;
import com.niit.model.cart;

import com.niit.model.user;

@Repository
public class customerdaoimpl implements Customerdao {
	@Autowired
	private SessionFactory sessionFactory; 
	
	public void registerCustomer(Customer customer) {
		
		user user= customer.getUser();  
		user.setEnabled(true);
		
		Authorities authorities= new Authorities();
		authorities.setRole("ROLE_USER");
		String username=customer.getUser().getUsername(); 
		authorities.setUsername(username);
		Session session=sessionFactory.getCurrentSession();
		session.save(authorities);
		
		cart cart=new cart();
		cart.setCustomer(customer);
		customer.setCart(cart);
		session.save(customer);
	}
	public user validateUsername(String username) {
		Session session=sessionFactory.getCurrentSession();
		Query query=session.createQuery("from user where username=?");
		query.setString(0,username);
		user user=(user)query.uniqueResult();
		return user;
		}
	public Customer validateEmail(String email) {
		Session session=sessionFactory.getCurrentSession();
		Query query=session.createQuery("from Customer where email=?");
		query.setString(0,email);
		Customer customer=(Customer)query.uniqueResult();
		return customer;
	}
	public Customer customerbyusername(String username) {
		Session session=sessionFactory.getCurrentSession();
		Query query=session.createQuery("from Customer where user.username=?");
		query.setString(0,username);
		Customer customer=(Customer)query.uniqueResult();
		return customer;
	}
	
	public void save(Customer customer) {
		// TODO Auto-generated method stub
		
	}
	


}
