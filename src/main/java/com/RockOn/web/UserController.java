package com.RockOn.web;

import java.nio.file.AccessDeniedException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import com.RockOn.domain.User;
import com.RockOn.service.AdminService;
import com.RockOn.service.UserService;

@Controller
public class UserController {
	@Autowired
	private AdminService adminService;
	@Autowired
	private UserService userService;

	@GetMapping("/user/{userId}")
	public String adminInfo(@PathVariable("userId") Long userId, ModelMap model) {
	    try {
	        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
	        if (auth.getAuthorities().stream().noneMatch(a -> a.getAuthority().equals("ROLE_ADMIN"))) {
	            throw new AccessDeniedException("User is not authorized to access this endpoint");
	        }
	        
	        List<User> users = adminService.getAllUserAccounts();
	        User user = userService.findById(userId);
	        model.put("user", user);
	        model.put("users", users);
	        return "user";
	    } catch (AccessDeniedException e) {
	        // Handle unauthorized access
	        // For example, redirect to an error page or show a message to the user
	        return "notauthorizederror";
	    }
	}

}
