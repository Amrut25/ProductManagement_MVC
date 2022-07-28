package com.jbk.ProductManagement_MVC.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.jbk.ProductManagement_MVC.entity.User;
import com.jbk.ProductManagement_MVC.service.UserService;

@Controller
public class UserController {

	@Autowired
	private UserService userservice;

	@PostMapping(value = "/addUser_form")
	public String addUserForm(@ModelAttribute User user, Model model) {

		boolean isAdded = userservice.addUserForm(user);

		if (isAdded) {
			model.addAttribute("msg", "User Added!!!!");
			return "addUser_form";
		} else {
			model.addAttribute("msg", "User Not Added Check If User is Already Exists!!!!");
			return "addUser_form";
		}

	}

	@GetMapping(value = "/userList")
	public String userList(Model model) {
		List<User> usersLists = userservice.userList();

		model.addAttribute("users", usersLists);

		return "userList";

	}
	
	@GetMapping(value="/profile")
	public String profile(@RequestParam String username,Model model)
	{
		User user=userservice.getUserByUsername(username);
		model.addAttribute("user", user);
		return "profile";
	}
	
}
