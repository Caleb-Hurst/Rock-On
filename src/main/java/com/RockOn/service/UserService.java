package com.RockOn.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.RockOn.domain.User;
import com.RockOn.repository.UserRepository;


@Service
public class UserService {
	@Autowired
	UserRepository userRepo;
	public User save(User user) {
		
		return userRepo.save(user);
	}
	
	public List<User> findAll(){
		return userRepo.findAll();
	}
	
	public User findById(Long id) {
		return userRepo.findById(id).get();
	}

	public User findByUsername(String username) {
		return userRepo.findByName(username);
		
	}
}
