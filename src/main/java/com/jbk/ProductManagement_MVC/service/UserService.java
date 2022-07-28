package com.jbk.ProductManagement_MVC.service;

import java.util.List;

import com.jbk.ProductManagement_MVC.entity.User;

public interface UserService {

	 User loginUser(User user);
	 
	public boolean addUserForm(User user);
	
	public List<User> userList();
	
	 User getUserByUsername(String username);
}
