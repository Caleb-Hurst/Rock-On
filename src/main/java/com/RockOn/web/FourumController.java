package com.RockOn.web;



import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;



@Controller 
@RequestMapping("/forum")
public class FourumController {
	@GetMapping("/")
	public String home(ModelMap model) {
		
		return "forum";
	}
}
