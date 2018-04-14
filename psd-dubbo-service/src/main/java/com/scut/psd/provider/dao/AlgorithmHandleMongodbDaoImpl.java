package com.scut.psd.provider.dao;

import com.scut.psd.api.entity.CalculateData;
import com.scut.psd.common.constant.CollectionConst;
import com.scut.psd.provider.dao.base.AbstractBaseMongodbDao;
import org.springframework.stereotype.Repository;

@Repository("algorithmHandleMongodbDao")
public class AlgorithmHandleMongodbDaoImpl extends AbstractBaseMongodbDao<CalculateData> {

    @Override
    public Class<CalculateData> getEntityClass() {
        return CalculateData.class;
    }

    @Override
    public String getCollectionName() {
        return CollectionConst.CALCULATEDATA;
    }
    
}
