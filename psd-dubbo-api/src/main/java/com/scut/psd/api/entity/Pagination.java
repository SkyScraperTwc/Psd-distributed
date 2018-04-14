package com.scut.psd.api.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;
import java.util.List;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Pagination<T> implements Serializable{

    private static final long serialVersionUID = 4716833020060165478L;

    /**
     * 总记录数
     */
    private int totalRecords;
    /**
     * 当前第几页
     */
    private int currentPage;
    /**
     * 总页数
     */
    private int totalPages;
    /**
     * 每一页记录数
     */
    private int pageSize;
    /**
     * 要展示的列表数据
     */
    private List<T> dataList;

    public Pagination(int totalRecords, int currentPage, int pageSize, List<T> dataList) {
        this.totalRecords = totalRecords;
        this.currentPage = currentPage;
        this.pageSize = pageSize;
        this.dataList = dataList;
        this.init();
    }

    public void init(){
        if(totalRecords % pageSize == 0){
            this.totalPages = totalRecords / pageSize;
        }else{
            this.totalPages = totalRecords / pageSize + 1;
        }
    }

    public int getFirst(){

        return 1;
    }
    public int getPre(){
        if(currentPage-1 > 0){
            return currentPage - 1;
        }else{
            return 1;
        }
    }

    public int getNext(){
        if(currentPage+1 <= totalPages){
            return currentPage + 1;
        }else{
            return totalPages;
        }
    }

    public int getLast(){
        return totalPages;
    }

}
