package com.shop.serviceImpl;


import java.security.Principal;
import java.time.LocalDate;
import java.util.List;

import com.shop.dao.CommodityDao;
import com.shop.entity.Commodity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.shop.dao.OrderssDao;
import com.shop.dao.UserDao;
import com.shop.entity.Orderss;
import com.shop.entity.User;
import com.shop.service.OrderssService;
import org.springframework.transaction.annotation.Transactional;

@Service
public class OrderssServiceImpl implements OrderssService {
	@Autowired
	private OrderssDao orderssDao;

	@Autowired
	private UserDao userDao;

	@Autowired
	private CommodityDao commodityDao;
	
	public void save(Orderss orderss, int id1) {
		// TODO Auto-generated method stub
		
		User user = userDao.findOne(id1);
		
		orderssDao.saveAndFlush(orderss);
		
		orderss.setUser(user);
		
		orderssDao.save(orderss);
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

	@Override
	public void inBasket(Principal principal, int id) {
		User user = userDao.findUserWithCommodity(Integer.parseInt(principal.getName()));
		Commodity commodity = commodityDao.findOne(id);
		user.getCommodities().add(commodity);

		userDao.save(user);
	}

		@Transactional
		@Override
	public void buy( int id) {
		Orderss orderss = new Orderss(LocalDate.now());

		orderssDao.saveAndFlush(orderss);

		User user =  userDao.findUserWithCommodity(id);

		orderss.setUser(user);

		for (Commodity commodity : user.getCommodities()){
			orderss.getCommoditys().add(commodity);

			orderssDao.save(orderss);
		}

		user.getCommodities().clear();userDao.save(user);

	}

	@Override
	@Transactional
	public void deleteFromBasket(int userid, int comid) {

		User user = userDao.findUserWithCommodity(userid);

		Commodity commodity = commodityDao.findOne(comid);

		user.getCommodities().remove(commodity);

		userDao.save(user);






















	}
}
