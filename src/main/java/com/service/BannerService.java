package com.service;

import com.pojo.Movieinfo;

import java.text.ParseException;

public interface BannerService {
    Movieinfo getBanner();

    void updateBanner(Integer movieid) throws ParseException;
}
