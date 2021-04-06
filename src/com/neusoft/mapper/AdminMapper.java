package com.neusoft.mapper;

import com.neusoft.model.Admin;
import com.neusoft.model.Customer;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

@Repository
public interface AdminMapper {


    /*
    * 的定义登录验证的查询
    * */
    @Select("select admin_id id, admin_account account, admin_password password from admin " +
            "where admin_account = #{account} and admin_password = #{password}" )
    Admin login(Admin admin);

    @Insert("insert into admin values(default, #{account}, #{password})")
    int register(Admin admin);

    @Insert("insert into admin values(default, #{tel}, #{password})")
    int doTel(Customer customer);
}
