package com.shop.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.shop.entity.Category;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

public interface CategoryDao extends JpaRepository<Category, Integer> {


    @Query("select i from Category i left join fetch i.commodity where i.id=:id")
        Category categoryWithCommodity (@Param("id") int id);
	 
}
//public interface IngredientDao extends JpaRepository<Ingredient, Integer> {
//
//    @Query("select i from Ingredient i left join fetch i.drinks where i.id=:id")
//    Ingredient ingredientWirthDrinks(@Param("id") int id);
//
//
//}