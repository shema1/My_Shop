package com.shop.service;

import java.util.List;

import com.shop.entity.User;

public interface UserService {

	
	void save(User user);
	List<User> findAll();
	User findOne(int id);
	void delete(int id); 
	void update(User user);
}
