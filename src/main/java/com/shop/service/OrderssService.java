package com.shop.service;


import java.security.Principal;
import java.util.List;

import com.shop.entity.Orderss;

public interface OrderssService {

	void save(Orderss orderss,int id1);
	List<Orderss> findAll();
	Orderss findOne(int id);
	void delete(int id); 
	void update(Orderss orderss);

	void inBasket(Principal principal, int id);

    void buy( int id);

    void deleteFromBasket(int userid, int comid);
}
