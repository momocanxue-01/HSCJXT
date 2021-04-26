package com.neusoft.controller;


import com.neusoft.model.Admin;
import com.neusoft.model.Customer;
import com.neusoft.model.CustomerPage;
import com.neusoft.service.CustomerService;
import com.neusoft.service.HospitalService;
import com.neusoft.util.TransformDateFormat;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;
import java.text.SimpleDateFormat;
import java.util.List;

@Controller
@RequestMapping("/CustomerController")
public class CustomerController {

    @Autowired
    CustomerService customerService;


    @RequestMapping("/goIndex")
    public ModelAndView goIndex(Customer customer ,ModelAndView mav){
//        //1.调用业务层方法完成全查询功能
//        List<Customer> customers = customerService.selectCustomer();
//        //2.将查询到的集合发送到首页中展示
//        mav.addObject("customers",customers);//默认使用request作用域
//        mav.setViewName("newspage23");
//        //3.返回mav对象即可
//        System.out.println("返回集合" + customers);


        //接收newspage024.jsp画面传递来的参数 添加数据库
        boolean result = customerService.inesertCustomer(customer);
        if (result == true ){
            System.out.println("添加成功");
        }

        //由于开启分页查询，所以跳转到首页后不可以在进行全查询
        //1.调用业务层中分页查询方法完成分页查询
           CustomerPage cp = customerService.selectCustomerByPage(1,CustomerPage.PAGE_COUNT);
           //2.将cp对象打包
        System.out.println(cp);
            mav.addObject("cp",cp);
            mav.setViewName("newspage025");
            return mav;
        }


        @RequestMapping("/doCustomerPaging")
     public String doCustomerPaging(int currentPage, Model model){
        //专门用于分页查询的方法
        // 接取画面传递的参数-->当前页码，画面显示参数
        //调用业务层分页查询方法
       CustomerPage cp = customerService.selectCustomerByPage(currentPage,CustomerPage.PAGE_COUNT);
       //重新将实体类打包回页面
       model.addAttribute("cp",cp);//默认使用request作用域
       return "newspage025";


     }

        @RequestMapping("yuyueselect")
      public String yuyueselect(Long id, String name,Model model){
//            System.out.println(id);
//            System.out.println(name);
            model.addAttribute("id",id);
            model.addAttribute("name", name);
            return "newspage024";
      }




    @RequestMapping("/goIndex01")
    public ModelAndView goIndex01(HttpSession session,Customer customer , ModelAndView mav){


        //由于开启分页查询，所以跳转到首页后不可以在进行全查询
        //1.调用业务层中分页查询方法完成分页查询
        CustomerPage cp = customerService.selectCustomerByPage(1,CustomerPage.PAGE_COUNT);
        System.out.println(cp.getPageList().size());
        //2.将cp对象打包
        mav.addObject("cp",cp);
        mav.setViewName("newspage025");
        session.setAttribute("cp",cp);
        return mav;
    }


}
