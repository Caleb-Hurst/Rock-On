package com.RockOn.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.RockOn.domain.Authorities;

public interface AuthorityRepository extends JpaRepository<Authorities, Long>{

}
