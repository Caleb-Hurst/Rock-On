package com.RockOn.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.RockOn.domain.User;
import com.RockOn.service.UserService;

@Controller
public class LoginController {
	@Autowired
	private UserService userService;
	@GetMapping("/login")
	public String login(ModelMap model) {
		model.put("user", new User());
		return "login";
	}
	@PostMapping("/login")
	public String findByName(User user) {
		userService.save(user);
		return "home";
	}

	
}
