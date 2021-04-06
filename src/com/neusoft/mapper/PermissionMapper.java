package com.neusoft.mapper;

import com.neusoft.model.Permission;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface PermissionMapper {

    //声明鉴权SQL
    List<Permission> checkPermission(int adminId);

}
