package com.shop.service;

import java.util.ArrayList;
import java.util.List;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import com.shop.entity.Commodity;
import org.springframework.web.multipart.MultipartFile;

public interface CommodityService {
	void save(Commodity commodity, ArrayList<Integer> id, MultipartFile image) throws Exception;
	List<Commodity> findAll();
	Commodity findOne(int id);
	void delete(int id); 
	void update(Commodity commodity);
	Page<Commodity> findAllPages(Pageable pageable);




}
