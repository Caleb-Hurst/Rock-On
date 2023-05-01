package com.RockOn.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.RockOn.domain.User;

public interface UserRepository extends JpaRepository<User, Long> {
	User findByName(String name);
}
