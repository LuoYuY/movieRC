package com.service.impl;


import com.dao.UserDao;
import com.pojo.User;
import com.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserServiceImpl implements UserService {

    @Autowired
    private UserDao userDao;

    @Override
    public List<User> queryAllUser() {
        List<User> l = userDao.queryAllUser();

        return l;
    }

    @Override
    public List<User> queryUser(String username, String password) {
        List<User> l = userDao.queryUser(username,password);
        return l;
    }
}