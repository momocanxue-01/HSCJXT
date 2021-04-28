package com.neusoft.model;

import org.springframework.stereotype.Component;

import java.util.List;

@Component
public class HospitalPage {

    /**
     * 医院的分页实体类
     */
    private int currentPage;//当前页码
    private int totalPage;//总页码
    private List<Hospital> pageList;//表示装有当前页数据的集合
    public static final int PAGE_COUNT=10;

    public int getCurrentPage() {
        return currentPage;
    }

    public void setCurrentPage(int currentPage) {
        this.currentPage = currentPage;
    }

    public int getTotalPage() {
        return totalPage;
    }

    public void setTotalPage(int totalPage) {
        this.totalPage = totalPage;
    }

    public List<Hospital> getPageList() {
        return pageList;
    }

    public void setPageList(List<Hospital> pageList) {
        this.pageList = pageList;
    }

    public static int getPageCount() {
        return PAGE_COUNT;
    }
}
