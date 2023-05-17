package com.RockOn.service;

import java.util.List;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.RockOn.domain.Authorities;
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

	public User findByName(String username) {
		return userRepo.findByUsername(username);
		
	}
	public User setAdmin(User user) {
	    List<String> authorities = user.getAuthorities().stream()
	                                      .map(Authorities::getAuthority)
	                                      .collect(Collectors.toList());
	    if (authorities.contains("ROLE_ADMIN")) {
	        user.setIsAdmin(true);
	    }
	    return user;
	}

}
