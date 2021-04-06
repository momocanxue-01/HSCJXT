package com.neusoft.mapper;

import com.neusoft.model.Hospital;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface HospitalMapper {

    //定义医院的全查询方法
    @Select("select hospital_id as id,hospital_province as province,hospital_city as city," +
            "hospital_name as name from hospital")
    List<Hospital> selectHospital();

    //根据医院id删除医院信息
    @Delete("delete from hospital where hospital_id =#{id}")
    int deleteHospital(int id);

}
