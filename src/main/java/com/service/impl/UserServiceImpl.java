package com.service.impl;


import com.dao.CollectDao;
import com.dao.PersonalratingsDao;
import com.dao.UserDao;
import com.pojo.Collect;
import com.pojo.Personalratings;
import com.pojo.User;
import com.service.UserService;
import com.sun.org.apache.xpath.internal.operations.Bool;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserServiceImpl implements UserService {

    @Autowired
    private UserDao userDao;

    @Autowired
    private CollectDao collectDao;

    @Autowired
    private PersonalratingsDao personalratingsDao;

    @Override
    public List<User> queryAllUser() {
        List<User> l = userDao.queryAllUser();

        return l;
    }

    @Override
    public List<User> queryUser(String username, String password) {
        List<User> l = userDao.queryUser(username, password);
        return l;
    }

    @Override
    public boolean collect(Integer userid, Integer movieid) {
        Collect c = new Collect();
        c.setMovieid(movieid);
        c.setUserid(userid);

        Integer re = collectDao.add(c);
        if (re != null) return true;
        else return false;
    }

    @Override
    public boolean check(Integer userid, Integer movieid) {

        if(collectDao.find(userid,movieid).size()>0)
        {
            return true;
        }
        else return false;
    }

    @Override
    public boolean uncollect(Integer userid, Integer movieid) {
        collectDao.delete(userid,movieid);
        return true;
    }

    @Override
    public boolean rate(Integer userid, Integer movieid, Integer score) {
        Personalratings personalratings = new Personalratings();

        long timeStampSec = System.currentTimeMillis()/1000;
        String timestamp = String.format("%010d", timeStampSec);

        personalratings.setMovieid(movieid);
        personalratings.setUserid(userid);
        personalratings.setRating(score);
        personalratings.setTimestamp(timestamp);

        if(personalratingsDao.find(userid,movieid).size() > 0)
        {
            personalratingsDao.update(personalratings);
        }
        else
            personalratingsDao.add(personalratings);
        return true;
    }

    @Override
    public void update(User user) {

        userDao.update(user);
    }
}