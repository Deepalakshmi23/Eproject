package com.niit.service;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.niit.ProductDao.ProductDao;
import com.niit.model.Category;
import com.niit.model.Product;

@Service
@Transactional
public class ProductserviceImpl implements Productservice{
	

	public ProductserviceImpl() {
		System.out.print("Service is instantiating");
	}
	@Autowired
	private ProductDao productdao;
	public void saveproduct(Product product) {
		
		productdao.saveproduct(product);
	}
	public List<Product> getAllProduct()
	{
		return productdao.getAllProduct();
	}
	public Product getproductbyid(int id) {
		return productdao.getproductbyid (id);
	}
	public void deleteproduct(int id)
	{
		Product product=getproductbyid(id);
		productdao.deleteproduct(product);
		
	}
	public void editproduct(Product product) {
           productdao.editproduct(product);
	}
	public List<Category> getAllCategory() {
	
		return productdao.getAllCategory();
	}
	
	
}
