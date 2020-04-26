package com.service;

import com.pojo.User;

import java.util.List;


public interface UserService {


    List<User> queryAllUser();
    List<User> queryUser(String username,String pwd);
}