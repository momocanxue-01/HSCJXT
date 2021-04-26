package com.neusoft.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/newscontroller")
public class NewsController {

    //返回新闻页面
    @RequestMapping("/newsshow")
    public String NewsShow(){
        return "news";
    }


    @RequestMapping("/CKEditor")
    public String CKEditor(){
        return "CKEditor";
    }

}
