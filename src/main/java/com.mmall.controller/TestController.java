package com.mmall.controller;

import com.mmall.common.ApplicationContextHelper;
import com.mmall.common.JsonData;
import com.mmall.dao.SysAclModuleMapper;
import com.mmall.exception.ParamException;
import com.mmall.model.SysAclModule;
import com.mmall.param.TestVo;
import com.mmall.util.BeanValidator;
import com.mmall.util.JsonMapper;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiParam;
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
@Api(value = "restful", description = "测试")
public class TestController {

    @RequestMapping("/hello.json")
    @ResponseBody
    public JsonData hello(){
        log.info("hello");
        throw new RuntimeException("test exception");
//        return JsonData.success("HELLO PERMISSON");
    }

    @RequestMapping("/validate.json")
    @ResponseBody
    @ApiOperation(value = "测试专用",httpMethod = "POST")
    public JsonData validate(@ApiParam(required = true, name = "test", value = "教程入参") TestVo vo) throws ParamException {
        log.info("validate");
        BeanValidator.check(vo);
        SysAclModuleMapper sysAclModuleMapper = ApplicationContextHelper.popBean(SysAclModuleMapper.class);
        Integer id = vo.getId();

        SysAclModule sysAclModule = sysAclModuleMapper.selectByPrimaryKey(id);
        log.info(JsonMapper.obj2String(sysAclModule));

        return JsonData.success("test validate");
//        SysAclModuleMapper moduleMapper = ApplicationContextHelper.popBean(SysAclModuleMapper.class);
//        SysAclModule module = moduleMapper.selectByPrimaryKey(1);
//        log.info(JsonMapper.obj2String(module));
//        BeanValidator.check(vo);
//        return JsonData.success("test validate");
    }

}
