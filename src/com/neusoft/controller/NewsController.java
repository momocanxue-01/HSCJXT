package com.neusoft.controller;

import com.neusoft.model.Admin;
import com.neusoft.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/newscontroller")
public class NewsController {

    @Autowired
    AdminService adminService;

    //返回新闻页面
    @RequestMapping("/newsshow")
    public String NewsShow(){
        return "news";
    }


    @RequestMapping("/CKEditor")
    public String CKEditor(){
        return "CKEditor";
    }


    @RequestMapping("/ckeDitor")
    public String ckeDitor(Integer adminId, Model model){
        Admin admin = adminService.selectAdmin(adminId);
        model.addAttribute("admin",admin );
        return "ckeDitor";
    }
}
