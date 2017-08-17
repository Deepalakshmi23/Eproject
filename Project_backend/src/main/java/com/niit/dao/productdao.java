package com.niit.dao;

import java.util.List;

import com.niit.model.Category;
import com.niit.model.Product;

public interface productdao {
	
		void saveproduct(Product product);
		 List<Product> getAllProduct();
		 Product getproductbyid (int id);
		 void deleteproduct(Product product);
		 void editproduct(Product product);
		 List<Category> getAllCategory();
		 void savecategory(Category category);

}
