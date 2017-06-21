package com.shop.serviceImpl;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.shop.dao.CategoryDao;
import com.shop.dao.CommodityDao;
import com.shop.entity.Category;
import com.shop.entity.Commodity;
import com.shop.service.CommodityService;
import org.springframework.web.multipart.MultipartFile;

@Service
public class CommodityServiceImpl implements CommodityService{

	@Autowired
	private CommodityDao commodityDao;
	@Autowired
	private CategoryDao categoryDao;
	
	public void save(Commodity commodity, ArrayList<Integer> ids, MultipartFile image) {
		// TODO Auto-generated method stub
//	Category category = categoryDao.findOne(id);
//	
		commodityDao.saveAndFlush(commodity);

		String path = System.getProperty("catalina.home") + "/resources/"
				+ commodity.getName()  + "/" + image.getOriginalFilename();
		commodity.setPathImage("resources/" + commodity.getName() + "/" + image.getContentType() );

		File filePath = new File(path);


		try {
			filePath.mkdirs();
			image.transferTo(filePath);
		} catch (IOException e) {
			System.out.println("error with file");
		}

		for (Integer id : ids) {
			Category category = categoryDao.categoryWithCommodity(id);
			category.getCommodity().add(commodity);
			categoryDao.save(category);
		}

		commodityDao.save(commodity);
	
	
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
