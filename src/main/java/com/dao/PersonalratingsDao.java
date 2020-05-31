package com.dao;

import com.pojo.Collect;
import com.pojo.Personalratings;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface PersonalratingsDao {
    List<Personalratings> find(@Param("userid") Integer userid,@Param("movieid") Integer movieid);
    void add(Personalratings personalratings);
    void update(Personalratings personalratings);
}
