package com.neusoft.mapper;

import com.neusoft.model.Customer;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface CustomerMapper {



    //声明全查询SQL
    @Select("select customer_id as id, customer_name as name, customer_score as score, customer_cfrom as cfrom , customer_tel as tel, customer_radio as radio from customer")
    List<Customer> selectCustomer();

    //select customer_id, customer_name , customer_score , customer_from , customer_tel , customer_password from customer

    @Insert("insert into customer values(default, #{name}, #{score}, #{cfrom}, #{tel}, #{radio})")
    int inesertCustomer(Customer customer);


    int deleteCustomer(int id);

}
