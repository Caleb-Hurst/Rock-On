package com.RockOn.web;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import com.RockOn.domain.User;
import com.RockOn.service.UserService;

@Controller
public class UserController {
	@Autowired
	private UserService userService;

	@GetMapping("/user/{userId}")
	public String adminInfo(@PathVariable("userId") Long userId, ModelMap model) {
		List<User> users = userService.findAll();
		User user = userService.findById(userId);
		model.put("user", user);
		model.put("users", users);
		return "user";
	}

}
