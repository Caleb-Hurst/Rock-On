package com.rockon.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.rockon.domain.Authorities;
import com.rockon.repository.AuthorityRepository;

@Service
public class AuthorityService {

	@Autowired
	AuthorityRepository authorityRepo;
	public Authorities save(Authorities authority) {
		
		return authorityRepo.save(authority);
	}
	
	public List<Authorities> findAll(){
		return authorityRepo.findAll();
	}
	
	public Authorities findById(Long id) {
		return authorityRepo.findById(id).get();
	}

	

}
