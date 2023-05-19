package com.RockOn.domain;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Lob;
import javax.persistence.ManyToMany;

import org.hibernate.annotations.Type;

@Entity
public class Route {

	private Long routeId;
	private Boolean completed;
	private String grade;
	private String name;
	private String type;
	private String firstAscent;
	private String description;
	private String location;
	private String protection;
	private List<User> users = new ArrayList<>();
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	public Long getRouteId() {
		return routeId;
	}
	public void setRouteId(Long id) {
		this.routeId = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getFirstAscent() {
		return firstAscent;
	}
	public void setFirstAscent(String firstAscent) {
		this.firstAscent = firstAscent;
	}
	@Type(type="text")
	@Lob
	@Column(length = 10000)
	public String getDescription() {
		return description;
	}
	@Column(length = 10000)
	public void setDescription(String description) {
		this.description = description;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	public String getProtection() {
		return protection;
	}
	public void setProtection(String protection) {
		this.protection = protection;
	}
	@ManyToMany(mappedBy = "routes")
	public List<User> getUsers() {
		return users;
	}
	public void setUsers(List<User> users) {
		this.users = users;
	}
	public String getGrade() {
		return grade;
	}
	public void setGrade(String grade) {
		this.grade = grade;
	}
	public Boolean getCompleted() {
		return completed;
	}
	public void setCompleted(Boolean completed) {
		this.completed = completed;
	}
	 

}
