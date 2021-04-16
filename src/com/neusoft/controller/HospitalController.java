package com.neusoft.controller;

import com.neusoft.model.Hospital;
import com.neusoft.service.HospitalService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

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
        return "redirect:/AdminController/login";
    }

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


}
