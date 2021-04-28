package com.neusoft.controller;


import com.neusoft.model.Hospital;
import com.neusoft.model.HospitalPage;
import com.neusoft.service.HospitalService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;


@Controller
@RequestMapping("/HospitalController")
public class HospitalController {

    @Autowired
    HospitalService hospitalService;

    /**
     *按序号删除医院
     * @param id 要删除的用户
     */
    @RequestMapping("/hospitalDelete")
    public String hospitalDelete(int id){
        hospitalService.deleteHospital(id);
        //
        return "redirect:/HospitalController/hospitalIndex01";
    }


    //已开启分页查询，此方法废弃
    /**
     * 管理员添加医院信息
     * @param hospital 医院实体类
     */
    @RequestMapping("/hospitalInsert")
    public String hospitalInsert(Hospital hospital){
        hospitalService.insertHospital(hospital);
        return "redirect:/AdminController/login";
    }

    /**
     * 跳转到添加画面ss
     * @return 添加画面
     */
    @RequestMapping("/addhospital")
    public String addHospital(){
        return "addhospital";
    }

    ///////医院分页查询开始/////////
    @RequestMapping("/hospitalIndex")
    public ModelAndView hospitalIndex(Hospital hospital,ModelAndView mav) {
        //调用业务层添加方法，添加医院
        hospitalService.insertHospital(hospital);
        //由于开启分页查询，所以跳转到首页后不可以在进行全查询
        //1.调用业务层中分页查询方法完成分页查询
        HospitalPage hp = hospitalService.selectHospitalByPage(1,HospitalPage.PAGE_COUNT);
        //2.将hp对象打包
        mav.addObject("hp", hp);
        mav.setViewName("newspage023");
        return mav;
    }


    @RequestMapping("/hospitalPaging")
    public String hospitalPaging(int currentPage, Model model){
        //专门用于分页查询的方法
        // 接取画面传递的参数-->当前页码，画面显示参数
        //调用业务层分页查询方法
        HospitalPage hp = hospitalService.selectHospitalByPage(currentPage,HospitalPage.PAGE_COUNT);
        //重新将实体类打包回页面
        model.addAttribute("hp",hp);//默认使用request作用域
        return "newspage023";
    }

    //login页面点击预约进入分页查询
    @RequestMapping("/hospitalIndex01")
    public ModelAndView goIndex01(HttpSession session, ModelAndView mav){


        //由于开启分页查询，所以跳转到首页后不可以在进行全查询
        //1.调用业务层中分页查询方法完成分页查询
        HospitalPage hp = hospitalService.selectHospitalByPage(1,HospitalPage.PAGE_COUNT);
        //2.将cp对象打包
        mav.addObject("hp",hp);
        mav.setViewName("newspage023");
        session.setAttribute("hp",hp);
        return mav;
    }

    /////医院分页查询结束///////


}
