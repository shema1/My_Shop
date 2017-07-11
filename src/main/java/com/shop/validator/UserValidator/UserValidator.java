package com.shop.validator.UserValidator;
import com.shop.dao.UserDao;
import com.shop.entity.User;
import com.shop.service.UserService;
import com.shop.validator.Validator;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

/**
 * Created by Mykola on 04.07.2017.
 */
@Component
public class UserValidator implements Validator {
    @Autowired
    private UserService userService;

    @Override
    public void validete(Object o) throws Exception {

        User user = (User) o;

        if(user.getName().isEmpty()){
            throw new UserException(UserValidatorMessenges.EMPTY_USERNAME_FIELD);


        }if (userService.findByName(user.getName()) !=null){
            throw  new UserException(UserValidatorMessenges.USERNAME_ALREDY_EXIST);
        } if(user.getEmail().isEmpty()){
            throw  new UserException(UserValidatorMessenges.EMPTY_EMAIL_FIELD);
        } if(userService.findByEmail(user.getEmail()) !=null){
            throw  new UserException(UserValidatorMessenges.EMAIL_ALREDY_EXIST);
        }

    }




























}
