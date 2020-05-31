package com.dao;

import com.pojo.Banner;
import org.apache.ibatis.annotations.Param;

import java.util.Date;

public interface BannerDao {
    Banner getBanner();

    void addBanner(@Param("movieid") Integer movieid, @Param("pushdate") Date pushdate);
}
