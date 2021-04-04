package com.neusoft.mapper;

import com.neusoft.model.Permission;

import java.util.List;

public interface PermissionMapper {

    //声明鉴权SQL
    List<Permission> checkPermission(int adminId);

}
