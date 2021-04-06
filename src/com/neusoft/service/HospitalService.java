package com.neusoft.service;

import com.neusoft.model.Hospital;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface HospitalService {

    //声明医院的全查询
    List<Hospital> selectHospital();

    //声明医院的删除方法
    int deleteHospital(int id);

}
