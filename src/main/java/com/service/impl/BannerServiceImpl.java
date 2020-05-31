package com.service.impl;


import com.dao.BannerDao;
import com.dao.MovieinfoDao;
import com.pojo.Movieinfo;
import com.service.BannerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

@Service
public class BannerServiceImpl implements BannerService {
    @Autowired
    private MovieinfoDao movieinfoDao;

    @Autowired
    private BannerDao bannerDao;


    @Override
    public Movieinfo getBanner() {
        Integer movieid = bannerDao.getBanner().getMovieid();
        Movieinfo movieinfo = movieinfoDao.queryMovie(movieid).get(0);
        return movieinfo;
    }

    @Override
    public void updateBanner(Integer movieid) throws ParseException {
        //Date pushdate = new Date();
        SimpleDateFormat sp = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
        Date pushdate = sp.parse(sp.format(new Date()));
        bannerDao.addBanner(movieid,pushdate);
    }
}
