package com.niit.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.niit.model.Category;
import com.niit.model.Product;
@Repository
public class productdaoimpl implements productdao {
	@Autowired
	private SessionFactory sessionfactory;
	
	public productdaoimpl() {
	System.out.print("Dao is created");	
	}

	public void saveproduct(Product product) {
		// TODO Auto-generated method stub
		Session session=sessionfactory.getCurrentSession();
		session.saveOrUpdate(product);
	}
	public List<Product> getAllProduct()
	{
		Session session =sessionfactory.getCurrentSession();
		Query query=session.createQuery("from Product");
		List<Product> Products=query.list();
		return Products;
	}

	public Product getproductbyid(int id) {
		Session session=sessionfactory.getCurrentSession();
		Product product=(Product)session.get(Product.class,id);
		return product;
		
	}

	public void deleteproduct(Product product) {
		Session session=sessionfactory.getCurrentSession();
		session.delete(product);
		
	}
	public void editproduct(Product product)
	{
		Session session=sessionfactory.getCurrentSession();
		session.update(product);
	}
	public List<Category> getAllCategory() {
		Session session =sessionfactory.getCurrentSession();
		Query query=session.createQuery("from Category");
		List<Category> category=query.list();
		return category;
		
	}
	public void savecategory(Category category) {
		Session session=sessionfactory.getCurrentSession();
		session.save(category);
		
	}
	}

