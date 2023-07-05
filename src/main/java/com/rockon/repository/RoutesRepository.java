package com.rockon.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.rockon.domain.Route;
@Repository
public interface RoutesRepository extends JpaRepository<Route, Long> {

}
