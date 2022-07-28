package com.jbk.ProductManagement_MVC.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.jbk.ProductManagement_MVC.entity.Product;
import com.jbk.ProductManagement_MVC.service.ProductService;

@Controller
public class ProductController {

	@Autowired
	ProductService productservice;
	@PostMapping(value="/addProduct_form")
	public String addProduct(@ModelAttribute Product product,Model model)
	{
		
	   boolean isAdded= productservice.addProduct(product);
	   
	   if(isAdded)
		{
			model.addAttribute("msg", "Product Added!!!!");
			return "addProduct_form";
		}
		else
		{
			model.addAttribute("msg", "Product Not Added!!!!");
			return "addProduct_form";
		}
	}
	
	@GetMapping(value="/productList")
	public String productList(Model model)
	{
		List<Product> products=productservice.productList();
		model.addAttribute("products", products);
		
		return "/productList";
	}
}
