package com.scut.psd.provider.dao.base;

import com.scut.psd.api.dao.BaseMongodbDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.mongodb.core.MongoTemplate;
import org.springframework.data.mongodb.core.query.Query;
import org.springframework.data.mongodb.core.query.Update;

import java.util.List;

public abstract class AbstractBaseMongodbDao<T> implements BaseMongodbDao<T> {

    @Autowired
    private MongoTemplate mongoTemplate;

    @Override
    public List<T> find(Query query) {
        return mongoTemplate.find(query, this.getEntityClass(), this.getCollectionName());
    }

    @Override
    public T findOne(Query query) {
        return mongoTemplate.findOne(query, this.getEntityClass(), this.getCollectionName());
    }

    @Override
    public T update(Query query, Update update) {
        return mongoTemplate.findAndModify(query, update, this.getEntityClass(), this.getCollectionName());
    }

    @Override
    public void save(T entity) {
        mongoTemplate.insert(entity, this.getCollectionName());
    }

    @Override
    public T findById(String id) {
        return mongoTemplate.findById(id, this.getEntityClass(), this.getCollectionName());
    }

    @Override
    public T remove(Query query) {
         return mongoTemplate.findAndRemove(query, this.getEntityClass(), this.getCollectionName());
    }

    @Override
    public long count(Query query) {
        return mongoTemplate.count(query, this.getEntityClass(), this.getCollectionName());
    }

    @Override
    public List<T> findByPage(int currentPage, int pageSize, Query query) {

        int skipNum = (currentPage - 1) * pageSize;

        /**skip相当于从那条记录开始*/
        query.skip(skipNum);

        /**从skip开始,取PAGE_SIZE条记录*/
        query.limit(pageSize);

        return this.find(query);
    }

}

