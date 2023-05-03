package com.RockOn.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.RockOn.domain.Route;
@Repository
public interface RoutesRepository extends JpaRepository<Route, Long> {

}
