package com.RockOn.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import com.RockOn.domain.User;
import com.RockOn.service.UserService;

@Controller

public class HomeController {
	@Autowired
	private UserService userService;
	
	@GetMapping("/home/{userId}/")
	public String home(@PathVariable("userId") Long userId, ModelMap model) {
		User user = userService.findById(userId);
	    model.put("userId", userId);
	    model.put("user", user.getName());
	    return "home";
	}

}
