package com.dao;

import com.pojo.Collect;
import org.apache.ibatis.annotations.Param;

import java.util.Collection;
import java.util.List;

public interface CollectDao {
    Integer add(Collect collect);
    List<Collect> find(@Param("userid")Integer userid, @Param("movieid")Integer movieid);
    void delete(@Param("userid")Integer userid,  @Param("movieid")Integer movieid);
    List<Integer> getResult(@Param("userid")Integer userid);
}
