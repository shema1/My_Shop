package com.shop.validator.UserValidator;

import com.shop.entity.User;
import com.shop.service.UserService;
import com.shop.validator.Validator;
import org.springframework.beans.factory.annotation.Autowired;

/**
 * Created by Mykola on 23.07.2017.
 */
public class UserBuyValidator implements Validator {


    @Autowired
    private UserService userService;

    @Override
    public void validete(Object o) throws Exception {

        User user = (User) o;

        if (user.getCommodities().isEmpty()) {
            throw new UserException(UserValidatorMessenges.BASKET_EMPTY);
        }
    }
}
