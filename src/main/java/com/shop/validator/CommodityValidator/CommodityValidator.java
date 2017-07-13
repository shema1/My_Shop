package com.shop.validator.CommodityValidator;

import com.shop.entity.Category;
import com.shop.entity.Commodity;
import com.shop.service.CommodityService;
import com.shop.validator.Validator;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

/**
 * Created by Mykola on 09.07.2017.
 */
@Component
public class CommodityValidator implements Validator {

    @Autowired
    private CommodityService commodityService;

    @Override
    public void validete(Object o) throws Exception {

        Commodity commodity= (Commodity) o;


        if(commodity.getName().isEmpty()){
            throw new CommodityException(CommodityValidatorMessenges.EMPTY_NAME_FIELD);

        }else if(String.valueOf(commodity.getPrice()).equals("0")){
            throw new  CommodityException(CommodityValidatorMessenges.EMPTY_PRICE_FIELD);
        }


    }
}