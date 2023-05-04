package com.RockOn.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
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
	    model.put("user", user.getUsername());
	    model.put("routes", user.getRoutes());
	    return "home";
	}
	@GetMapping("/home")
	public String home(@AuthenticationPrincipal User user,ModelMap model) {
		model.put("userId", user.getUserId());
	    model.put("username", user.getUsername());
	    model.put("routes", user.getRoutes());
		model.put("user", user.getUsername());
	    return "home";
	}
//	@PostMapping("/home")
//	public String returnhome() {		
//	    return "home";
//	}

}
