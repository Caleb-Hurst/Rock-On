package com.rockon.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.rockon.domain.Authorities;

public interface AuthorityRepository extends JpaRepository<Authorities, Long>{

}
