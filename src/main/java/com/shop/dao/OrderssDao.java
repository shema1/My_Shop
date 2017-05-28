package com.shop.dao;

import java.time.LocalDate;
import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.shop.entity.Orderss;


public interface OrderssDao extends  JpaRepository<Orderss, Integer>{
	
}
