package com.shop.serviceImpl;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.shop.dao.OrderssDao;
import com.shop.dao.UserDao;
import com.shop.entity.Orderss;
import com.shop.entity.User;
import com.shop.service.OrderssService;
import com.shop.service.UserService;

@Service
public class OrderssServiceImpl implements OrderssService {
	@Autowired
	private OrderssDao orderssDao;
	
	private UserDao userDao;
	
	
	public void save(Orderss orderss, int id1) {
		// TODO Auto-generated method stub
		
		User user = userDao.findOne(id1);
		
		orderssDao.saveAndFlush(orderss);
		
		orderss.setUser(user);
		
		orderssDao.save(orderss);
		
		
//MeasuringSystem measuringSystem = measuringSystemDao.findOne(idMS);
//		
//		ingredientDao.saveAndFlush(ingredient);
//		
//		ingredient.getMeasuringSystems().add(measuringSystem);
//		
//		ingredientDao.save(ingredient);

		
	}

	public List<Orderss> findAll() {
		// TODO Auto-generated method stub
		return orderssDao.findAll();
	}

	public Orderss findOne(int id) {
		// TODO Auto-generated method stub
		return orderssDao.findOne(id);
	}

	public void delete(int id) {
		// TODO Auto-generated method stub
		orderssDao.delete(id);
	}

	public void update(Orderss  orderss) {
		// TODO Auto-generated method stub
		orderssDao.save(orderss);
	}



}
