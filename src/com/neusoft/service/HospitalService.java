package com.neusoft.service;

import com.neusoft.model.Hospital;
import com.neusoft.model.HospitalPage;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface HospitalService {

    //声明医院的全查询
    List<Hospital> selectHospital();

    //声明医院的删除方法
    int deleteHospital(int id);

    //声明管理员添加医院的方法
    int insertHospital(Hospital hospital);

    /**
     * //声明分页查询方法
     * @param currentPage 当前页码
     * @param PageCount 每页的数据
     * @return
     */
    HospitalPage selectHospitalByPage(int currentPage, int pageCount);

}
