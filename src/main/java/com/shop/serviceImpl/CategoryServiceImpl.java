package com.shop.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.shop.dao.CategoryDao;
import com.shop.entity.Category;
import com.shop.service.CategoryService;

@Service
public class CategoryServiceImpl implements CategoryService {
	@Autowired
	private CategoryDao categoryDao;
	
	
	public void save(Category category) {
		// TODO Auto-generated method stub
		categoryDao.save(category);
		
		
	}

	public List<Category> findAll() {
		// TODO Auto-generated method stub
		return categoryDao.findAll();
	}

	public Category findOne(int id) {
		// TODO Auto-generated method stub
		return categoryDao.findOne(id);
	}

	public void delete(int id) {
		// TODO Auto-generated method stub
		
		categoryDao.delete(id);
		
	}

	public void update(Category category) {
		// TODO Auto-generated method stub
		categoryDao.save(category);
	}

}
