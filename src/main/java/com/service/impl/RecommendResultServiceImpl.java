package com.service.impl;

import com.dao.MovieinfoDao;
import com.dao.RecommendResultDao;
import com.pojo.Movieinfo;
import com.pojo.RecommendResult;
import com.service.RecommendResultService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;


@Service
public class RecommendResultServiceImpl implements RecommendResultService {


    @Autowired
    private RecommendResultDao recommendResultDao;


    @Autowired
    private MovieinfoDao movieinfoDao;


    @Override
    public List<Movieinfo> queryRecommendResult(String userid) {
        List<RecommendResult> results = recommendResultDao.queryResult(userid);
        List<Movieinfo> movies = new ArrayList<>();
        for(RecommendResult re : results)
        {
            movies.add(movieinfoDao.queryMovie(re.getMovieid()).get(0));
        }
        return  movies;
    }
}
