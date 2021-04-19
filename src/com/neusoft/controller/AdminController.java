package com.neusoft.controller;

import com.neusoft.model.*;
import com.neusoft.service.AdminService;
import com.neusoft.service.HospitalService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("/AdminController")
@SessionAttributes("result")
public class AdminController {

    @Autowired(required = false)
    AdminPermission adminPermission;

    @Autowired
    AdminService adminService;

    @Autowired
    HospitalService hospitalService;

    @RequestMapping("/goLogin")
    public String goLogin(){
        return "gologing";
    }


    /**
     * 利用查询方法查询到全部的医院信息,并将医院信息返回到医院管理页面
     * @param mav
     * @return 医院管理页面
     */
    @RequestMapping("/login")
    public ModelAndView login(ModelAndView mav){
        //将医院信息装入List集合中,并展示到页面
        List<Hospital> hospital = hospitalService.selectHospital();

        mav.addObject("hospital",hospital);
        mav.setViewName("newspage023");
        return mav;

    }

//--------------------


    @RequestMapping("/doLogin")
    public String doLogin(Admin admin, Model model, HttpSession session){
        //1.接取参数
        //2.校验
        //2.1非空校验
        if ("".equals(admin.getAccount())){
            //说明：账号数据为空
            model.addAttribute("error", "账号不能为空");
            //跳转登录画面，无需继续下去
            return "gologing";
        }
        if ("".equals(admin.getPassword())){
            model.addAttribute("error","密码不能为空");
            return "gologing";
        }
        //2.2.格式校验
        //账号数字11位
        //密码数字11位
//        String accountReg = "[0-9]{11}"; //账号正则
//        String passwordReg = "[0-9]{11}";  //密码正则
//        if (!admin.getAccount().matches(accountReg)){
//            //账号格式错误
//            model.addAttribute("error","账号格式错误");
//            return "gologing";
//        }
//        if (!admin.getPassword().matches(passwordReg)){
//            model.addAttribute("error","密码格式错误");
//            return "gologing";
//        }
        //2.3有效性校验
        //校验账号密码是否正确-->调用业务层方法
        Admin result = adminService.Login(admin);
        if (result == null){
            //登录失败
            model.addAttribute("error","账号或密码错误");
            return "gologing";
        }


        //如果以上判断都不成立，执行此处登录成功
        //为了后续画面中都能够展示出来用户的账号信息所以我们将账号存放到session作用域中
        //SpringMVC 默认装值都是使用request作用域
        session.setAttribute("result",result);//使用session作用域
        model.addAttribute("result", result);
//        return "login";





        //执行到此，证明登录成功！开始进行鉴权操作！
        //鉴权操作主要是permission表
        //跳转到PermissionController中进行鉴权操作！
        //注意：跳转到PermissionController的同时需要发送一个admin_id的参数！
        return "forward:../PermissionController/checkPermission?adminId="+result.getId();

        //从AdminController跳转到CustomerController中进行全查询并跳转首页
        //return "forward:../CustomerController/goIndex";
    }





        @RequestMapping("/doLoging")
        public String doLoging(){
        //此方法跳转到注册页面
            return "dologing023";
        }

        @RequestMapping("/doRegister")
        public String doRegister(Admin admin, Model model){
        //此方法执行注册校验
           //非空校验
            if ("".equals(admin.getAccount())){
                model.addAttribute("error","账号不能为空");
                return "dologing023";
            }
            if ("".equals(admin.getPassword())){
                model.addAttribute("error","密码不能为空");
                return "dologing023";
            }


        //此处省略其余非空校验
        //
            //格式校验
         //此处省略格式校验(需要定义正则 进行全部格式校验)

            //注册信息成功
            //调用业务层接口
            boolean result = adminService.doLogin(admin);
            if (result != true){
                model.addAttribute("error", "注册失败");
                return "dologing023";
            }
            if (result == true){
                model.addAttribute("error", "注册成功");
                return "dologing023";
            }

            
            //注册信息成功
//           boolean result = adminService.doLogin(customer);
////            if (result != true){
////                model.addAttribute("error", "注册失败");
////                return "dologing";
////            }
////            //将手机号和密码添加成为账号和密码
////            boolean result1 = adminService.doTel(customer);
////            if (result1 == true){
////                model.addAttribute("error", "账号注册成功");
////                return "dologing";
////            }




           return null;
        }


}
