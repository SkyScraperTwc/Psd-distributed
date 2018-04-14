package com.scut.psd.api.dao;

import org.springframework.data.mongodb.core.query.Query;
import org.springframework.data.mongodb.core.query.Update;

import java.util.List;

public interface BaseMongodbDao<T> {
    /**
     * 通过条件查询实体(集合)
     */
    List<T> find(Query query);
    /**
     * 通过一定的条件查询一个实体
     */
    T findOne(Query query);
    /**
     * 通过条件查询更新数据
     */
    T update(Query query, Update update);

    /**
     * 保存一个对象到mongodb
     */
    void save(T entity);

    /**
     * 通过ID获取记录
     */
    T findById(String id);

    /**
     * 通过ID删除记录
     */
    T remove(Query query);

    /**
     * 分页查询
     */
    List<T> findByPage(int currentPage, int pageSize, Query query);

    /**
     * 求数据总和
     */
    long count(Query query);

    /**
     * getEntityClass()是T所对应的class对象
     */
    Class<T> getEntityClass();

    /**
     * 获取需要操作的集合collectionName名字
     */
    String getCollectionName();
}
