package com.scut.psd.provider.dao;

import com.scut.psd.api.entity.User;
import com.scut.psd.common.constant.CollectionConst;
import com.scut.psd.provider.dao.base.AbstractBaseMongodbDao;
import org.springframework.stereotype.Repository;

@Repository("userMongodbDao")
public class UserMongodbDaoImpl extends AbstractBaseMongodbDao<User> {

    @Override
    public Class<User> getEntityClass() {
        return User.class;
    }

    @Override
    public String getCollectionName() {
        return CollectionConst.USER;
    }

}
