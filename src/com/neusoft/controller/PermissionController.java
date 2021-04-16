package com.neusoft.controller;


import com.neusoft.model.Permission;
import com.neusoft.service.PermissionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;
import java.util.List;


@Controller
@RequestMapping("/PermissionController")
public class PermissionController {

    @Autowired
    PermissionService permissionService;

    @RequestMapping("/checkPermission")
    public String checkPermission(HttpSession session, Integer adminId, ModelAndView mav){
        //进行用户的鉴权操作，并且把当前用户对应的权限发送到首页中展示！
        //1.接取当前登录的用户id
        System.out.println("111"+adminId);
        //2.根据admin_id调用鉴权方法完成鉴权即可！调用业务层方法！
        List<Permission> list=permissionService.checkPermission(adminId);
        //3.将集合发送到首页中展示
        mav.addObject("list",list);
        mav.setViewName("newspage023");
        session.setAttribute("list",list);//使用session作用域
        return "login";

    }

}
