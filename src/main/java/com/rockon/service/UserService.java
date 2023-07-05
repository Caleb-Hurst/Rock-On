package com.rockon.service;

import java.util.List;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.rockon.domain.Authorities;
import com.rockon.domain.User;
import com.rockon.repository.UserRepository;

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

	public User findByName(String username) {
		return userRepo.findByUsername(username);
		
	}
	

}
