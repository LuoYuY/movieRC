package com.dao;

import com.pojo.RecommendResult;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface RecommendResultDao {
    List<RecommendResult> queryResult(@Param("userid")String userid);
}
