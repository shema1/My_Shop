package com.shop.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.shop.entity.User;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.security.core.userdetails.UserDetails;

public interface UserDao extends  JpaRepository<User, Integer> {


    User findByName(String name);

   @Query("select u from User u left join fetch u.commodities where u.id=:id")
    User findUserWithCommodity(@Param("id")int id);

    @Query("select u from User u left join fetch u.ordersses where u.id=:id")
    User findUserWithHistory(@Param("id")int id);

   @Query("select  u from User u where u.uuid =:uuid")
    User findByUuid (@Param("uuid")String uuid);



}
