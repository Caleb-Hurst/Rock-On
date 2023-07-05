package com.rockon.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.rockon.domain.User;
import com.rockon.repository.UserRepository;
import com.rockon.security.CustomSecurityUser;

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
