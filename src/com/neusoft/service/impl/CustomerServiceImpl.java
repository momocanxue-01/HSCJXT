package com.neusoft.service.impl;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.neusoft.mapper.CustomerMapper;
import com.neusoft.model.Customer;
import com.neusoft.model.CustomerPage;
import com.neusoft.service.CustomerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CustomerServiceImpl implements CustomerService {

    @Autowired
    CustomerMapper customerMapper;
//持久层代理对象已经在配置文件中配置好了，对象已经在IOC容器中生成
    @Autowired
    CustomerPage cp;


    @Override
    public boolean updateCustomer(Customer customer) {
       //先不编写修改代码
        return false;
    }

    @Override
    public boolean deleteCustomer(int id) {
        //先不编写删除代码
        return false;
    }

    @Override
    public List<Customer> selectCustomer() {
        //这个！！！！！！！！
        //调用mapper层中全查询方法完成具体查询功能
        System.out.println("这里是Service" + customerMapper.selectCustomer());
        return customerMapper.selectCustomer();
    }

    @Override
    public CustomerPage selectCustomerByPage(int currentPage, int pageCount) {
        //使用pageHelper插件完成具体的分页查询功能
        //有了该插件SQL语句无需使用limit，该怎么查就怎么查
        //1.开启pageHelper分页拦截功能准备开始分页
        PageHelper.startPage(currentPage, pageCount);
        //第一个形参：表示展示第几页数据
        //第二个形参：每页展示多少条数据

        //2. 直接正常调用mapper层中的查询方法即可
        //原理：虽然mapper中查询方法是全查询，但是由于开启分页拦截，所有
        //该全查询方法返回的集合数据就是当前页集合的数据信息
        List<Customer> pageList = customerMapper.selectCustomer();
        //pageList返回值其实只包含当前页的集合数据，即当前页集合

        //3.获取总页数(通过PageInfo类中的方法即可获取当前数据库数据总页数)
        PageInfo<Customer> pi = new PageInfo<>(pageList);
        //参数需要将当前页集合传递进去，对象中会根据当前页集合自动计算总页数
        int totalPage = pi.getPages();//该方法表示返回总页数
        //4.将所有已知数据打包进分页实体类对象中
        cp.setPageList(pageList);
        cp.setCurrentPage(currentPage);
        cp.setTotalPage(totalPage);
        //5.返回分页实体类对象
        return cp;
    }

    @Override
    public boolean inesertCustomer(Customer customer) {
        //调用mapper层完成数据添加
        int result = customerMapper.inesertCustomer(customer);
        return result>0;
    }
}
