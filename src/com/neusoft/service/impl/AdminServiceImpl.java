package com.neusoft.service.impl;

import com.neusoft.mapper.AdminMapper;
import com.neusoft.model.Admin;
import com.neusoft.model.Customer;
import com.neusoft.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class AdminServiceImpl implements AdminService {

    @Autowired
    AdminMapper adminMapper;

    @Override
    public Admin Login(Admin admin) {
        //调用持久层mapper方法完成SQL查询

        return adminMapper.login(admin);
    }

    @Override
    public boolean doLogin(Admin admin) {
        //调用持久层mapper方法完成SQL添加

       int result = adminMapper.register(admin);
        return result>0;
    }

    @Override
    public boolean doTel(Customer customer) {
        //调用持久层mapper层方法
        int result = adminMapper.doTel(customer);
        return result>0;
    }
}
