package com.jbk.ProductManagement_MVC.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class PageController {

	@RequestMapping(value = "/")
	public String loginPage()
	{
		return "login";
	}
	
	@RequestMapping(value = "/addProduct_form")
	public String addProductPage()
	{
		return "addProduct_form";
	}
	
	@RequestMapping(value = "/addUser_form")
	public String addUserPage()
	{
		return "addUser_form";
	}
	
	@RequestMapping(value = "/userList")
	public String userList()
	{
		return "userList";
	}
	
	@RequestMapping(value = "/profile")
	public String profile()
	{
		return "profile";
	}
	@RequestMapping(value = "/productList")
	public String productList()
	{
		return "productList";
	}
}
