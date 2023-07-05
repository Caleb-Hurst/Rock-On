package com.rockon.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.rockon.domain.Route;
import com.rockon.repository.RoutesRepository;


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
