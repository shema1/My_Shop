package com.shop.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.shop.dao.CategoryDao;
import com.shop.dao.CommodityDao;
import com.shop.entity.Category;
import com.shop.entity.Commodity;
import com.shop.service.CommodityService;

@Service
public class CommodityServiceImpl implements CommodityService{

	@Autowired
	private CommodityDao commodityDao;
	@Autowired
	private CategoryDao categoryDao;
	
	public void save(Commodity commodity) {
		// TODO Auto-generated method stub
//	Category category = categoryDao.findOne(id);
//	
	commodityDao.saveAndFlush(commodity);
//	commodity.getCategory().add(category);
		
//	commodityDao.save(commodity);
	
	
	}

	public List<Commodity> findAll() {
		// TODO Auto-generated method stub
		return commodityDao.findAll();
	}

	public Commodity findOne(int id) {
		// TODO Auto-generated method stub
		return commodityDao.findOne(id);
	}

	public void delete(int id) {
		// TODO Auto-generated method stub
		commodityDao.delete(id);
	}

	public void update(Commodity commodity) {
		// TODO Auto-generated method stub
		commodityDao.save(commodity);
	}

	

}
