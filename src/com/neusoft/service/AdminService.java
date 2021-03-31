package com.neusoft.service;

import com.neusoft.model.Admin;
import com.neusoft.model.Customer;

public interface AdminService {

    //声明登录验证查询方法
/*
* admin 参数中含有登录的数据（账号 + 密码）
* @return 表示查询的到的最终结果 不为空表示登录成功
* */
    Admin Login(Admin admin);


    //声明注册成功
    boolean doLogin(Admin admin);

    //将手机号添加为登录账号
    boolean doTel(Customer customer);

}
