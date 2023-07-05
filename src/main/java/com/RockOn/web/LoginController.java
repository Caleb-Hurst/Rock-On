package com.RockOn.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.RockOn.domain.Authorities;
import com.RockOn.domain.User;
import com.RockOn.service.AuthorityService;
import com.RockOn.service.UserService;



@Controller

public class LoginController {
	@Autowired
	private AuthorityService authorService;
	@Autowired
	private BCryptPasswordEncoder passwordEncoder;
	
	@Autowired
	private UserService userService;
	
	@GetMapping("/login")
	public String login(ModelMap model) {
		return "login";
	}
	
	@GetMapping("/register")
	public String register(ModelMap model) {
		model.put("user", new User());
		return "register";
	}
	@PostMapping("/register")
	public String registerUser(User user) {
		String hashedPassword = passwordEncoder.encode(user.getPassword());
	    user.setPassword(hashedPassword);
	    Authorities auth = new Authorities("ROLE_USER",user); 
	    user.getAuthorities().add(auth);	   
		userService.save(user);
		 authorService.save(auth);
		return "redirect:/login";
	}
}
