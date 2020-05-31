package com.service;

import com.pojo.Movieinfo;
import com.req.AddMovieReq;

import java.util.List;

public interface MovieService {

    Movieinfo queryMovieInfo(Integer movieid);

    List<Movieinfo> queryCollectResult(Integer userid);

    Integer queryPersonalRating(Integer id, Integer movieid);

    List<Movieinfo> getMovieinfo();

    List<Movieinfo> searchMovies(String moviename);

    void addMovie(AddMovieReq addMovieReq);

    List<Movieinfo> getLatestMovies();

    void deleteMovie(Integer movieid);
}