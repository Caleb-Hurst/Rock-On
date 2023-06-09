package com.rockon.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import com.rockon.domain.User;
import com.rockon.service.UserService;

@Controller

public class HomeController {
	@Autowired
	private UserService userService;
	
//	@Autowired
//	private AdminService adminService;
	
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
		User foundUser = userService.findById(user.getUserId());
		model.put("userId", foundUser.getUserId());
	    model.put("username", foundUser.getUsername());	    
	    model.put("routes", foundUser.getRoutes());	   
		model.put("user", foundUser.getUsername());
	    return "home";
	}
	
//	@PostMapping("/home")
//	public String returnhome() {		
//	    return "home";
//	}

}
