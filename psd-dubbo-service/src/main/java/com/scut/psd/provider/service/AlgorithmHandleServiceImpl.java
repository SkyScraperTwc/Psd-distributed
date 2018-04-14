package com.scut.psd.provider.service;

import com.mongodb.BasicDBObject;
import com.mongodb.DBObject;
import com.scut.psd.api.algorithm.MatlabComputeService;
import com.scut.psd.api.entity.CalculateData;
import com.scut.psd.api.entity.Pagination;
import com.scut.psd.api.entity.User;
import com.scut.psd.api.request.Algorithm;
import com.scut.psd.api.request.LaunchSignal;
import com.scut.psd.api.service.AlgorithmHandleService;
import com.scut.psd.common.utils.DateFormatutils;
import com.scut.psd.common.utils.LocalCache;
import com.scut.psd.provider.dao.AlgorithmHandleMongodbDaoImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.mongodb.core.query.BasicQuery;
import org.springframework.data.mongodb.core.query.Query;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.Date;
import java.util.List;
import java.util.Map;

@Service("algorithmHandleService")
public class AlgorithmHandleServiceImpl implements AlgorithmHandleService {

    @Resource
    private MatlabComputeService matlabComputeService;

    @Autowired
    private AlgorithmHandleMongodbDaoImpl algorithmHandleMongodbDao;

    /**
     * 画图与计算
     * @param launchSignal
     * @param algorithm
     * @return
     */
    @Override
    public Map<String,List<String>> calculateAndDraw(LaunchSignal launchSignal, Algorithm algorithm){
        return matlabComputeService.compute(launchSignal, algorithm);
    }

    /**
     * 保存数据
     * @param calculateData
     */
    @Override
    public void saveData(CalculateData calculateData, User user){

        calculateData.setUser(user);
        calculateData.setCreateTime(DateFormatutils.transform(new Date()));
        algorithmHandleMongodbDao.save(calculateData);

        /**移除缓存*/
        LocalCache.removeCache(LocalCache.buildKey(user.getUsername()));
    }

    /**
     * 获取数据列表
     * @param currentPage
     * @param pageSize
     * @return
     */
    @Override
    public Pagination<CalculateData> getPagination(int currentPage, int pageSize, User user) {

        /**查询条件*/
        DBObject queryObject = new BasicDBObject();
        queryObject.put("user", user);

        /**指定返回的字段*/
        DBObject fieldsObject = new BasicDBObject();
        fieldsObject.put("id", true);
        fieldsObject.put("algorithm", true);
        fieldsObject.put("createTime", true);
        Query query = new BasicQuery(queryObject, fieldsObject);

        /**获取总条数*/
        int totalRecords = (int) algorithmHandleMongodbDao.count(query);

        /**获取总条数*/
        List<CalculateData> calculateDataList = algorithmHandleMongodbDao.findByPage(currentPage, pageSize, query);

        return new Pagination<>(totalRecords, currentPage, pageSize, calculateDataList);

    }

    /**
     * 获取数据详情
     * @param calculateDataId
     * @return
     */
    @Override
    public CalculateData getById(String calculateDataId) {
        return algorithmHandleMongodbDao.findById(calculateDataId);
    }

    /**
     * 删除数据
     * @param calculateDataId
     * @return
     */
    @Override
    public void remove(String calculateDataId) {
        DBObject queryObject = new BasicDBObject();
        queryObject.put("id", calculateDataId);

        Query query = new BasicQuery(queryObject);
        algorithmHandleMongodbDao.remove(query);
    }
}
