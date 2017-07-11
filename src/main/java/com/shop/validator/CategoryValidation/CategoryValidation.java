package com.shop.validator.CategoryValidation;

import com.shop.entity.Category;
import com.shop.validator.Validator;
import org.springframework.stereotype.Component;

/**
 * Created by Mykola on 12.07.2017.
 */
@Component
public class CategoryValidation implements Validator {

    @Override
    public void validete(Object o) throws Exception {

        Category category = (Category) o;

        if (category.getType().isEmpty()){

            throw new CategoryException(CategoryValidatorMessenger.FIELD_CATEGORY_IS_EMPTY);
        }

    }
}
