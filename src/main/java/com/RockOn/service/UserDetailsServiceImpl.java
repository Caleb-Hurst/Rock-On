package com.RockOn.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.RockOn.domain.User;
import com.RockOn.repository.UserRepository;
import com.RockOn.security.CustomSecurityUser;

@Service
public class UserDetailsServiceImpl implements UserDetailsService {

	@Autowired
	private UserRepository userRepo;

	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {

		User user = userRepo.findByUsername(username);

		if (user == null)
			throw new UsernameNotFoundException("Username and or password was incorrect.");
		CustomSecurityUser customSecurityUser = new CustomSecurityUser(user);
		System.out.println(customSecurityUser);
		return customSecurityUser;
	}

}
