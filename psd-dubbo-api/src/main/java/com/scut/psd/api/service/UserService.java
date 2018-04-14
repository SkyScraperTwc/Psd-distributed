package com.scut.psd.api.service;

import com.scut.psd.api.entity.User;

public interface UserService {

    String register(User user) throws Exception;

    User login(String username, String password) throws Exception;

    User getUserByName(String username);

}
