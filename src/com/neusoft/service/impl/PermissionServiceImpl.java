package com.neusoft.service.impl;

import com.neusoft.mapper.PermissionMapper;
import com.neusoft.model.Permission;
import com.neusoft.service.PermissionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class PermissionServiceImpl implements PermissionService {

    @Autowired
    PermissionMapper permissionMapper;

    @Override
    public List<Permission> checkPermission(int adminId) {
        //调用持久层根据adminId鉴权的SQL

        return permissionMapper.checkPermission(adminId);
    }
}
