package com.shop.serviceImpl;

import java.security.Principal;
import java.util.List;

import com.shop.dao.CommodityDao;
import com.shop.entity.Commodity;
import com.shop.entity.Role;
import com.shop.validator.Validator;
import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import com.shop.dao.UserDao;
import com.shop.entity.User;
import com.shop.service.UserService;


@Service("userDetailsService")
public class UserServiceImpl implements UserService, UserDetailsService {

	@Autowired
	private UserDao userDao;

	@Autowired
	@Qualifier("userValidator")
	private Validator validator;

	@Autowired
	private CommodityDao commodityDao;

	@Autowired
	private BCryptPasswordEncoder encoder;
	
	
	public void save(User user) throws Exception {
		validator.validete(user);
		user.setRole(Role.ROLE_USER);
		user.setPassword(encoder.encode(user.getPassword()));
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

	@Override
	public void addInBasket(Principal principal, int commodityId) {
		User user = userDao.findUserWithCommodity(Integer.parseInt(principal.getName()));

		Commodity commodity = commodityDao.findOne(commodityId);

		user.getCommodities().add(commodity);
		userDao.save(user);



	}

	@Override
	public User findByUuid(String uuid) {
		return  userDao.findByUuid(uuid);
	}


	@Override
	public UserDetails loadUserByUsername(String name) throws UsernameNotFoundException {
		return userDao.findByName(name);
	}

	@Override
	public void like(Principal principal, int id) {
		User user = userDao.findUserWithCommodity(Integer.parseInt(principal.getName()));

		Commodity commodity = commodityDao.findOne(id);

		user.getCommodities().add(commodity);

		userDao.save(user);


	}

	@Override
	public User findUserWithCommodity(int id) {
		return userDao.findUserWithCommodity(id);
	}


	@Override
	public User findUserWithHistory(int id) {
		return userDao.findUserWithHistory(id);
	}



	@Override
	public User findByName(String name) {
		return userDao.findByName(name);

	}


	@Override
	public User findByEmail(String email) {
		return userDao.findByEmail(email);
	}
}
