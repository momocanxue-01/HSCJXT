package com.neusoft.service;

import com.neusoft.model.Customer;
import com.neusoft.model.CustomerPage;

import java.util.List;

public interface CustomerService {


    //Customer业务层接口，声明抽象方法为控制层服务

    //声明修改方法
    boolean updateCustomer(Customer customer);

    //声明删除方法
    boolean deleteCustomer(int id);

    //声明全查询抽象方法
    List<Customer> selectCustomer();

    //声明分页查询的抽象方法
    //currentPage:当前页页码
    //pageCount:每页显示多少条数据
    CustomerPage selectCustomerByPage(int currentPage, int pageCount);

    boolean inesertCustomer(Customer customer);

    //暂时这么多，，，，，


}
