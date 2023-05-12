package com.RockOn.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.annotation.Secured;
import org.springframework.stereotype.Service;

import com.RockOn.domain.User;
import com.RockOn.repository.UserRepository;

@Service
public class AdminService {
	@Autowired
	private UserRepository userRepo;
	
	@Secured({"ROLE_ADMIN"})
	public List<User> getAllUserAccounts(){
		return userRepo.findAll();
		
	}
}
