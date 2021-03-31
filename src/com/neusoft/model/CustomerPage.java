package com.neusoft.model;

import org.springframework.stereotype.Component;

import java.util.List;

@Component
public class CustomerPage {
    //分页实体类
    //分页实体类，作用将发送到画面的所有数据压缩，打包！

    private List<Customer> pageList;//表示装有当前页数据的集合

    private int totalPage;//装有总页数

    private int currentPage;//装有当前页码

    public static final int PAGE_COUNT = 10;//每页显示条数(常量)

    public List<Customer> getPageList() {
        return pageList;
    }

    public void setPageList(List<Customer> pageList) {
        this.pageList = pageList;
    }

    public int getTotalPage() {
        return totalPage;
    }

    public void setTotalPage(int totalPage) {
        this.totalPage = totalPage;
    }

    public int getCurrentPage() {
        return currentPage;
    }

    public void setCurrentPage(int currentPage) {
        this.currentPage = currentPage;
    }
}
