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

        }
        else if(commodity.getPrice().isEmpty()){
            throw new  CommodityException(CommodityValidatorMessenges.EMPTY_PRICE_FIELD);
        }
//        else if(commodity.getCategory().isEmpty()){
//            throw new  CommodityException(CommodityValidatorMessenges.SELECT_CATEGORY);
//        }
//        else if(commodity.getPathImage().isEmpty()){
//            throw  new CommodityException(CommodityValidatorMessenges.SELECT_IMAGE);
//        }


    }
}
