package com.waishe.domain;

import java.util.ArrayList;
import java.util.List;

/**
 * 分页实体类
 * @param <T>
 */
public class PageBean<T> {
    private Integer currentPage;//当前页
    private Integer totalPage;//总页数
    private Integer count;//每页的数据条数
    private Integer totalCount;//总的数据数
    private List<T> list = new ArrayList<T>();//当前页的用户总数

    public PageBean(){
    }

    public Integer getCurrentPage() {
        return currentPage;
    }

    public void setCurrentPage(Integer currentPage) {
        this.currentPage = currentPage;
    }

    public Integer getTotalPage() {
        return totalPage;
    }

    public void setTotalPage(Integer totalPage) {
        this.totalPage = totalPage;
    }

    public Integer getCount() {
        return count;
    }

    public void setCount(Integer count) {
        this.count = count;
    }

    public Integer getTotalCount() {
        return totalCount;
    }

    public void setTotalCount(Integer totalCount) {
        this.totalCount = totalCount;
    }

    public List<T> getList() {
        return list;
    }

    public void setList(List<T> list) {
        this.list = list;
    }
}
