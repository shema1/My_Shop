package com.shop.validator.OrderValidator;

import com.shop.entity.User;
import com.shop.service.UserService;
import com.shop.validator.Validator;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

/**
 * Created by Mykola on 26.08.2017.
 */
@Component
public class OrderValidator implements Validator {


    @Autowired
    private UserService userService;

    @Override
    public void validete(Object o) throws Exception {

        User user = (User) o;



    }
}
