package com.RockOn.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.RockOn.domain.Route;
import com.RockOn.repository.RoutesRepository;


@Service
public class RoutesService {
	@Autowired
	private RoutesRepository routesRepo;
	public Route save(Route route) {
		return routesRepo.save(route);
	}

	public List<Route> findAll() {

		return routesRepo.findAll();
	}

	public Route findById(Long id) {
		return routesRepo.findById(id).get();
	}

	public Route createNewRoute() {
		Route route = new Route();

		return routesRepo.save(route);
	}
	public void delete(Route route) {
		routesRepo.delete(route);
	}
}
