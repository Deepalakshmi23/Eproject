package com.niit.Project_backend;

import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.configuration.DBConfiguration;
import com.niit.dao.productdaoimpl;
import com.niit.model.Product;

import com.niit.service.Productservice;
import com.niit.service.ProductserviceImpl;



public class App 
{
    public static void main( String[] args )
    {
        System.out.println( "Hello World!" ); 
        ApplicationContext context=new AnnotationConfigApplicationContext(DBConfiguration.class,productdaoimpl.class,ProductserviceImpl.class);
        Productservice productservice=(Productservice)context.getBean("productserviceImpl");
        Product product=new Product();
        product.setProductName("pen");
        product.setDescription("blue color");
        product.setPrice(200);
        product.setQuantity(10);
        productservice.saveproduct(product);
    
		
    }
}
