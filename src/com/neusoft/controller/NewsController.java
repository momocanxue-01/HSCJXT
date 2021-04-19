package com.neusoft.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/newscontroller")
public class NewsController {

    @RequestMapping("/newsshow")
    public String NewsShow(){
        return "news";
    }

}
