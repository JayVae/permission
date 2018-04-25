package com.mmall.util.validate;

import org.apache.commons.lang3.RandomStringUtils;

/**
 * @Author: Jay
 * @Date: Created in 9:49 2018/3/8
 * @Modified By:
 */
public class ValidateMobileCode {

    private int count = 6 ;

    public static String mobileCode(){
        String code = null;
        code = RandomStringUtils.randomNumeric(6);
        return code;
    }

    public static void send(String phone,String code){
        System.out.println(phone+":"+code);
    }

}
