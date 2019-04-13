package com.mmall.controller;

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/admin")
@Slf4j
@Api(value = "restful", description = "主页")
public class AdminController {

    @RequestMapping("index.page")
    public ModelAndView index() {
        return new ModelAndView("admin");
    }

    @RequestMapping("/index2.page")
    @ApiOperation(value = "导引页面",httpMethod = "POST")
    public ModelAndView introduction(){
        return new ModelAndView("index");
    }
}
