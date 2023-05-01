package com.RockOn.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.RockOn.domain.User;

@Repository
public interface UserRepository extends JpaRepository<User,Long>{

	User findByName(String name);
	

}
