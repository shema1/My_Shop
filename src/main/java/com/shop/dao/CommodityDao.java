package com.shop.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.shop.entity.Commodity;


public interface CommodityDao extends  JpaRepository<Commodity, Integer>{
	

}
