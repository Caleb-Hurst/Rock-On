package com.RockOn.web;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.RockOn.domain.Route;
import com.RockOn.domain.Message;
import com.RockOn.domain.Route;
import com.RockOn.domain.User;
import com.RockOn.service.RoutesService;
import com.RockOn.service.UserService;

@Controller
public class RoutesController {
	@Autowired
	private RoutesService routesService;
	@Autowired
	private UserService userService;

	@GetMapping("/routes/{userId}/")
	public String route(@PathVariable("userId") Long userId, ModelMap model) {
		User user = userService.findById(userId);
		model.put("userId", userId);
		model.put("user", user.getUsername());
		List<Route> routes = routesService.findAll();
		Route route = new Route();
		model.put("route", route);
		model.put("routes", routes);
		return "routes";
	}

	@PostMapping("/routes/{userId}/")
	public String newRoute(Route route, @PathVariable("userId") Long userId) {
		String description = route.getDescription().replaceAll("\n", "<br/>");
		route.setDescription(description);
		routesService.save(route);
		return "redirect:/routes/" + userId + "/";
	}

	@GetMapping("/route/{routeId}/{userId}")
	public String getRouteData(@PathVariable Long routeId, @PathVariable("userId") Long userId, ModelMap model) {
		Route route = routesService.findById(routeId);
		User user = userService.findById(userId);
		model.addAttribute("username", user.getUsername());
		String description = route.getDescription().replaceAll("<br/>", "\n");
		route.setDescription(description);
		model.put("user", user);
		model.put("route", route);
		model.addAttribute("userId", userId);
		model.addAttribute("routeId", route.getRouteId());
		return "route";
	}

	@GetMapping("/updateroute/{routeId}/{userId}")
	public String updateRouteData(@PathVariable Long routeId, @PathVariable("userId") Long userId, ModelMap model) {
		Route route = routesService.findById(routeId);
		User user = userService.findById(userId);
		model.addAttribute("user", user.getUsername());
		String description = route.getDescription().replaceAll("<br/>", "\n");
		route.setDescription(description);
		model.put("route", route);
		model.addAttribute("userId", userId);
		model.addAttribute("routeId", routeId);
		return "updateroute";
	}

	@GetMapping("/createroute/{userId}")
	public String createNewRoute(@PathVariable("userId") Long userId, ModelMap model) {
		User user = userService.findById(userId);
		model.addAttribute("user", user.getUsername());
		Route route = new Route();
		model.put("route", route);
		model.addAttribute("userId", userId);

		return "createroute";
	}

	@PostMapping("/createroute/{userId}")
	public String createdRoute(@PathVariable("userId") Long userId, Route route) {
		routesService.save(route);
		return "redirect:/routes/" + userId + "/";
	}

	@PostMapping("/updateroute/{routeId}/{userId}")
	public String updatedRoute(@PathVariable Long routeId, @PathVariable("userId") Long userId, Route route) {
		routesService.save(route);
		return "redirect:/route/" + routeId + "/" + userId;
	}

	@PostMapping("/updateroute/{routeId}/{userId}/completed")
	public String updatecompletedRoute(@PathVariable Long routeId, @PathVariable("userId") Long userId) {
		User user = userService.findById(userId);
		Route route = routesService.findById(routeId);
		route.setCompleted(true);
		user.getRoutes().add(route);
		userService.save(user);
		return "redirect:/route/" + routeId + "/" + userId;
	}

	@PostMapping("/updateroute/{routeId}/{userId}/delete")
	public String deleteRoute(@PathVariable Long routeId, @PathVariable("userId") Long userId, Route route) {
		User user = userService.findById(userId);
		Route deletedRoute = routesService.findById(routeId);
		user.getRoutes().remove(deletedRoute);

		routesService.delete(deletedRoute);
		return "redirect:/routes/" + userId + "/";
	}
}
