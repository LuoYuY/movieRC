package com;

import com.dao.UserDao;
import com.pojo.User;
import org.springframework.beans.factory.annotation.Autowired;

import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

public class Test {
    @Autowired
    private UserDao userDao;

    public static void main(String[] args)
    {

    }

}
