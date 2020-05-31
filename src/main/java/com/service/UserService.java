package com.service;

import com.pojo.User;

import java.util.List;


public interface UserService {


    List<User> queryAllUser();
    List<User> queryUser(String username,String pwd);

    boolean collect(Integer userid, Integer movieid);
    boolean check(Integer userid,Integer movieid);

    boolean uncollect(Integer userid, Integer movieid);

    boolean rate(Integer userid, Integer movieid, Integer score);

    void update(User user);
}