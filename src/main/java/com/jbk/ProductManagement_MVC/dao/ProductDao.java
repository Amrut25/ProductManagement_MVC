package com.jbk.ProductManagement_MVC.dao;

import java.util.List;

import com.jbk.ProductManagement_MVC.entity.Product;

public interface ProductDao {

	 boolean addProduct(Product product);
	 
	 List<Product> productList();
}

