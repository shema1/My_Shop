package com.shop.service;


import java.util.List;

import com.shop.entity.Orderss;

public interface OrderssService {

	void save(Orderss orderss,int id1);
	List<Orderss> findAll();
	Orderss findOne(int id);
	void delete(int id); 
	void update(Orderss orderss);
}
