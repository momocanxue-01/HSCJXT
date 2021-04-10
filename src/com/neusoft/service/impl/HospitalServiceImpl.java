package com.neusoft.service.impl;

import com.neusoft.mapper.HospitalMapper;
import com.neusoft.model.Hospital;
import com.neusoft.service.HospitalService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class HospitalServiceImpl implements HospitalService {

    @Autowired
    HospitalMapper hospitalMapper;

    @Override
    public List<Hospital> selectHospital() {
        //调用mapper中的全查询方法
        return hospitalMapper.selectHospital();
    }

    @Override
    public int deleteHospital(int id) {
        return hospitalMapper.deleteHospital(id);
    }

    @Override
    public int insertHospital(Hospital hospital) {
        return hospitalMapper.insertHospital(hospital);
    }
}
