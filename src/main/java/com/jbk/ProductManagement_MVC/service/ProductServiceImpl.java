package com.jbk.ProductManagement_MVC.service;

import java.text.SimpleDateFormat;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jbk.ProductManagement_MVC.dao.ProductDao;
import com.jbk.ProductManagement_MVC.entity.Product;

@Service
public class ProductServiceImpl implements ProductService{

	@Autowired
	ProductDao productdao;
	
	@Override
	public boolean addProduct(Product product) {
		
		String id = new SimpleDateFormat("yyyyMMddHHmmssSSS").format(new java.util.Date());
		product.setProductid(id);;
		
		return productdao.addProduct(product);
	}

	@Override
	public List<Product> productList() {
		
		return productdao.productList();
	}

	
}
