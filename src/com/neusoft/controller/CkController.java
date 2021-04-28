package com.neusoft.controller;


import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/CkController")
public class CkController {
    //这里是富文本编辑器应用类


    @RequestMapping("/doAdd")
    public String doAdd(String describe,String account,Model model){
        //将富文本编辑器的内容装载到画面中
        model.addAttribute("describe", describe);
        model.addAttribute("account",account);
        System.out.println("账号为" + account);
        return "ckeditor_success";
    }


}
