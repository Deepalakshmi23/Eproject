package com.niit.service;

import java.util.List;

import com.niit.model.Category;
import com.niit.model.Product;

public interface Productservice {
	void saveproduct(Product product);
    List<Product> getAllProduct();
    Product getproductbyid(int id);
    void deleteproduct(int id);
	 void editproduct(Product product);
	 List<Category> getAllCategory();
		
}
