package com.neusoft.controller;

import com.neusoft.model.Hospital;
import com.neusoft.model.HospitalPage;
import com.neusoft.model.Permission;
import com.neusoft.service.AdminService;
import com.neusoft.service.HospitalService;
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

    @Autowired
    HospitalService hospitalService;

    @Autowired
    AdminService adminService;

    //通过传递的adminId参数判断是否具有管理员权限
    @RequestMapping("/checkPermission")
    public String checkPermission(HttpSession session, Integer adminId, ModelAndView mav){
        //进行用户的鉴权操作，并且把当前用户对应的权限发送到首页中展示！
        //1.接取当前登录的用户id
        //2.根据admin_id调用鉴权方法完成鉴权即可！调用业务层方法！
        List<Permission> list=permissionService.checkPermission(adminId);
        //3.将集合发送到首页中展示
        mav.addObject("list",list);
        mav.addObject("adminId",adminId);
        mav.setViewName("newspage023");
        session.setAttribute("list",list);//使用session作用域
        return "login";
    }

    @RequestMapping("/administratorlogin")
    public ModelAndView administratorlogin(HttpSession session,int id, ModelAndView mav){
        List<Permission> list=permissionService.checkPermission(id);
        for (Permission p:list) {
            String str="用户修改";
            if (str.equals(p.getName())){
                List<Hospital> hospital = hospitalService.selectHospital();
                mav.addObject("hospital",hospital);
                mav.addObject("list",list);
                mav.setViewName("newspage023");

                //由于开启分页查询，所以跳转到首页后不可以在进行全查询
                //1.调用业务层中分页查询方法完成分页查询
                HospitalPage hp = hospitalService.selectHospitalByPage(1,HospitalPage.PAGE_COUNT);
                //2.将cp对象打包
                mav.addObject("hp",hp);
                session.setAttribute("hp",hp);
                return mav;

            }
        }
        mav.addObject("error","对不起您不是管理员");
        mav.setViewName("login");
        return mav;
    }



}
