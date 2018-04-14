package com.scut.psd.provider.service;

import com.scut.psd.api.entity.User;
import com.scut.psd.api.service.UserService;
import com.scut.psd.provider.dao.UserMongodbDaoImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.mongodb.core.query.Criteria;
import org.springframework.data.mongodb.core.query.Query;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service("userService")
public class UserServiceImpl implements UserService{

	@Autowired
	private UserMongodbDaoImpl userMongodbDao;

	/**
	 * 用户注册
	 * @param user
	 * @return
	 * @throws Exception
	 */
	@Override
	public String register(User user) throws Exception{
		/**用户*/
		User userFromDb = userMongodbDao.findById(String.valueOf(user.getId()));
		if(null != userFromDb){
			/**用户已经存在*/
			return "UsernameAlreadyExist";
		}
		/**邮箱*/
		Query query = new Query(Criteria.where("email").is(user.getEmail()));
		userFromDb = userMongodbDao.findOne(query);
		if(null != userFromDb){
			/**邮箱已经存在*/
			return "EmailAlreadyExist";
		}
		/**手机*/
		query = new Query(Criteria.where("mobile").is(user.getMobile()));
		userFromDb = userMongodbDao.findOne(query);
		if(null != userFromDb){
			return "MobileAlreadyExist";
		}
		/**保存*/
		userMongodbDao.save(user);
		return "success";
	}

	/**
	 * 用户登录
	 * @param username
	 * @param password
	 * @return
	 * @throws Exception
	 */
	@Override
	public User login(String username, String password) throws Exception {
		/**根据用户名查询*/
		Query query = new Query(Criteria.where("username").is(username));
		User user = userMongodbDao.findOne(query);
//			if(null == user){
//			/**根据邮箱查询*/
//				query = new Query(Criteria.where("email").is(user.getEmail()));
//				user = userMongodbDao.findOne(new QueryDto(query));
//					if(null == user){
//						/**根据手机查询*/
//						query = new Query(Criteria.where("mobile").is(user.getMobile()));
//						user = userMongodbDao.findOne(new QueryDto(query));
//					}
//			}
		if(null != user && user.getPassword().equals(password)){
			return user;
		}else{ 
			return null;
		}
	}

	/**
	 * 获取用户
	 * @param username
	 * @return
	 */
	@Override
	public User getUserByName(String username){
		Query query = new Query(Criteria.where("username").is(username));
		return userMongodbDao.findOne(query);
	}

}
