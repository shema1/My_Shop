package com.shop.editors;

import com.shop.entity.Category;
import com.shop.service.CategoryService;

import java.beans.PropertyEditorSupport;

/**
 * Created by Mykola on 28.05.2017.
 */
public class CategoryEditor extends PropertyEditorSupport {

    public CategoryEditor(CategoryService categoryService) {
        this.categoryService = categoryService;
    }

    private  final CategoryService categoryService;



    @Override
    public void setAsText(String id) throws IllegalArgumentException {
        Category category = categoryService.findOne(Integer.parseInt(id));
        setValue(category);
    }
}
