package com.service;

import com.pojo.Movieinfo;

import java.util.List;

public interface RecommendResultService {


    List<Movieinfo> queryRecommendResult(String id);
}