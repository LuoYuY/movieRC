package com.dao;


import com.pojo.User;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface UserDao {

    List<User> queryAllUser();
    List<User> queryUser(@Param("username")String username, @Param("password")String password);

    void update(User user);
}