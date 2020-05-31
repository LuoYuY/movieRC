package com.dao;

import com.pojo.Movieinfo;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface MovieinfoDao {
    List<Movieinfo> queryMovie(@Param("movieid")Integer movieid);

    List<Movieinfo> getAll(@Param("offset") Integer offset,@Param("limit") Integer limit);

    List<Movieinfo> queryMovieByName(@Param("moviename")String moviename);

    void save(Movieinfo movieinfo);

    Movieinfo getMax(@Param("currentDate")String currentDate);

    Movieinfo getMax2(@Param("currentDate")String currentDate);

    void delete(@Param("movieid")Integer movieid);
}
