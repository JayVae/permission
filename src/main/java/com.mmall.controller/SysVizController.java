package com.mmall.controller;

import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 * @Author: Jay
 * @Date: Created in 16:51 2018/6/27
 * @Modified By:
 */
@Controller
@RequestMapping("/sys/viz")
@Slf4j
public class SysVizController {


    @RequestMapping("/viz.page")
    public ModelAndView page() {
        return new ModelAndView("viz");
    }
}
