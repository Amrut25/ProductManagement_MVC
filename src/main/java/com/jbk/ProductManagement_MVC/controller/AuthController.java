package com.jbk.ProductManagement_MVC.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;

import com.jbk.ProductManagement_MVC.entity.User;
import com.jbk.ProductManagement_MVC.service.UserService;

@Controller
public class AuthController {

	@Autowired
	private UserService userservice;

	@GetMapping(value = "/login")
	public String login(@ModelAttribute User user, Model model,HttpSession session) {
		User usr = userservice.loginUser(user);

		if (usr != null) {
			session.setAttribute("name", usr.getUsername());
			return "home";
		} else {

			model.addAttribute("msg", "Invalid Credentials");
			return "login";
		}
	}
}
