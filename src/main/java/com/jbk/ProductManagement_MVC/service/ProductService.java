package com.jbk.ProductManagement_MVC.service;

import java.util.List;

import com.jbk.ProductManagement_MVC.entity.Product;

public interface ProductService {

	 boolean addProduct(Product product);
	 
	 List<Product> productList();
}
