package com.jbk.ProductManagement_MVC.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.jbk.ProductManagement_MVC.dao.UserDao;
import com.jbk.ProductManagement_MVC.entity.User;

@Service
public class UserServiceImpl implements UserService {

	@Autowired
	private UserDao userdao;
	
	public User loginUser(User user) {
		
		User usr=userdao.loginUser(user);
		
		return usr;
	}

	@Override
	public boolean addUserForm(User user) {
		
		return userdao.addUserForm(user);
	}

	@Override
	public List<User> userList() {
		return userdao.userList();
	}

	@Override
	public User getUserByUsername(String username) {
		
		return userdao.getUserByUsername(username);
	}



	

}
