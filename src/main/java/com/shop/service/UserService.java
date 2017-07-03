package com.shop.service;

import java.security.Principal;
import java.util.List;

import com.shop.entity.User;
import org.springframework.data.repository.query.Param;

public interface UserService {

	
	void save(User user);
	List<User> findAll();
	User findOne(int id);
	void delete(int id); 
	void update(User user);
	void addInBasket (Principal principal, int commodityid);
	User findByUuid (String uuid);
	void like (Principal principal, int id);
	User findUserWithCommodity(int id);
	User findUserWithHistory(int id);
}
