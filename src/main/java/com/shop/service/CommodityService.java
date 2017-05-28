package com.shop.service;

import java.util.List;

import com.shop.entity.Commodity;

public interface CommodityService {
	void save(Commodity commodity);
	List<Commodity> findAll();
	Commodity findOne(int id);
	void delete(int id); 
	void update(Commodity commodity);


}
