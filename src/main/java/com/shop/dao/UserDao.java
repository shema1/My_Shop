package com.shop.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.shop.entity.User;

public interface UserDao extends  JpaRepository<User, Integer> {
	
	
	
	

}
