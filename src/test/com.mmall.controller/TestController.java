package com.mmall.controller;

import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * @Author: Jay
 * @Date: Created in 22:43 2018/1/30
 * @Modified By:
 */
@Controller
@RequestMapping("/test")
@Slf4j
public class TestController {

    @RequestMapping("hello")
    @ResponseBody
    public String hello(){
        log.info("hello");
        return "hello permission";
    }

}
