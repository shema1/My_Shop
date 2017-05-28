package com.shop.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Service;

import com.shop.dao.UserDao;
import com.shop.entity.User;
import com.shop.service.UserService;


@Service
public class UserServiceImpl implements UserService {

	@Autowired
	private UserDao userDao;
	
	
	public void save(User user) {
		// TODO Auto-generated method stub
		userDao.save(user);
	}

	public List<User> findAll() {
		// TODO Auto-generated method stub
		
		return userDao.findAll();
	}

	public User findOne(int id) {
		// TODO Auto-generated method stub
		return userDao.findOne(id);
	}

	public void delete(int id) {
		// TODO Auto-generated method stub
		userDao.delete(id);;
	}

	public void update(User user) {
		// TODO Auto-generated method stub
		
		userDao.save(user);
	}

	

}
