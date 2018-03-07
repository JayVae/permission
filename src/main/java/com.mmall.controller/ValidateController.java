package com.mmall.controller;

import com.mmall.util.validate.ValidateCode;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

/**
 * @Author: Jay
 * @Date: Created in 15:06 2018/3/7
 * @Modified By:
 */
@Controller
public class ValidateController {

    @RequestMapping(value="/VerifyCode")
    public void validateCode(HttpServletResponse response, HttpSession session){
        try {
            // 设置响应的类型格式为图片格式
            response.setContentType("image/jpeg");
            //禁止图像缓存。
            response.setHeader("Pragma", "no-cache");
            response.setHeader("Cache-Control", "no-cache");
            response.setDateHeader("Expires", 0);
            ValidateCode vCode = new ValidateCode(120,40,5,10);
            session.setAttribute("captcha", vCode.getCode());
            vCode.write(response.getOutputStream());
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
