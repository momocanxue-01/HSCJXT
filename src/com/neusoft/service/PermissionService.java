package com.neusoft.service;

import com.neusoft.model.Permission;
import org.springframework.stereotype.Service;

import java.util.List;


public interface PermissionService {

    //声明鉴权的抽象方法
    List<Permission> checkPermission(int adminId);
}
