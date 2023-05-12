package com.RockOn.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.RockOn.domain.User;
import com.RockOn.repository.UserRepository;

@Service
public class AdminService {
	@Autowired
	private UserRepository userRepo;

	public List<User> getAllUserAccounts(){
		return userRepo.findAll();
		
	}
}
