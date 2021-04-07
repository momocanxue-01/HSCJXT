package com.neusoft.controller;

import com.neusoft.service.HospitalService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
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


}
