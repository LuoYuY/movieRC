package com.service.impl;

import com.dao.CollectDao;
import com.dao.MovieinfoDao;
import com.dao.PersonalratingsDao;
import com.pojo.Movieinfo;
import com.pojo.Personalratings;
import com.req.AddMovieReq;
import com.service.MovieService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;


@Service
public class MovieServiceImpl implements MovieService {
    @Autowired
    private MovieinfoDao movieinfoDao;

    @Autowired
    private CollectDao collectDao;

    @Autowired
    private PersonalratingsDao personalratingsDao;


    @Override
    public Movieinfo queryMovieInfo(Integer movieid) {
        Movieinfo m  = movieinfoDao.queryMovie(movieid).get(0);
        return m;
    }

    @Override
    public List<Movieinfo> queryCollectResult(Integer userid) {
        List<Integer> movieidList = new ArrayList<>();
        List<Movieinfo> result = new ArrayList<>();
        movieidList = collectDao.getResult(userid);
        for(Integer i : movieidList)
        {
            Movieinfo movie = new Movieinfo();
            result.add(movieinfoDao.queryMovie(i).get(0));
        }
        return result;
    }

    @Override
    public Integer queryPersonalRating(Integer id, Integer movieid) {
        List<Personalratings> list = personalratingsDao.find(id,movieid);

        if(list!=null&&list.size()>0)
        {
            return list.get(0).getRating();
        }
        else return 0;
    }

    @Override
    public List<Movieinfo> getMovieinfo() {
        List<Movieinfo> list = movieinfoDao.getAll(0,40);
        return list;
    }

    @Override
    public List<Movieinfo> searchMovies(String moviename) {
        List<Movieinfo> result = new ArrayList<>();
        result = movieinfoDao.queryMovieByName(moviename);
        return result;
    }

    @Override
    public void addMovie(AddMovieReq addMovieReq) {
        boolean flag = false;
        Movieinfo movieinfo = new Movieinfo();
        movieinfo.setDescription(addMovieReq.getDescription());
        movieinfo.setDirector(addMovieReq.getDirector());
        movieinfo.setLeadactors(addMovieReq.getLeadactors());
        movieinfo.setMoviename(addMovieReq.getMoviename());
        movieinfo.setReleasetime(addMovieReq.getReleasetime());

        movieinfo.setPicture("NO PICTURE");
        movieinfo.setNumrating(0);
        movieinfo.setAverating(0.0);


        String[] str = addMovieReq.getTypelist();
        StringBuffer str2 = new StringBuffer();
        //循环遍历数组
        for (int i = 0; i < str.length; i++) {
            //用append()方法拼接
            str2.append(str[i] + ",");
        }
        //用substring()方法截取掉最后一个 ","
        String str3 = str2.substring(0, str2.length() - 1);

        movieinfo.setTypelist(str3);

        movieinfoDao.save(movieinfo);

    }

    @Override
    public List<Movieinfo> getLatestMovies() {

        SimpleDateFormat dateFormat = new SimpleDateFormat(" yyyy-MM-dd ");
        String currentDate =   dateFormat.format( new Date() );

        List<Movieinfo> list = new ArrayList<>();

        Movieinfo movie1  = new Movieinfo();
        movie1 = checkNull(movieinfoDao.getMax(currentDate));

        Movieinfo movie2  = new Movieinfo();
        movie2 = checkNull( movieinfoDao.getMax2(currentDate));


        list.add(movie1);
        list.add(movie2);
        return list;
    }

    @Override
    public void deleteMovie(Integer movieid) {

        movieinfoDao.delete(movieid);

    }

    private Movieinfo checkNull(Movieinfo movie) {

        if(movie.getMoviename() == null ) movie.setMoviename("");
        if(movie.getAverating() == null ) movie.setAverating(0.0);
        if(movie.getDescription() == null ) movie.setDescription("");
        if(movie.getDirector() == null ) movie.setDirector("");
        if(movie.getNumrating() == null) movie.setNumrating(0);
        if(movie.getPicture() == null ) movie.setPicture("NO PICTURE");
        if(movie.getLeadactors()==null) movie.setLeadactors("");
        if(movie.getReleasetime() == null) movie.setLeadactors("");
        if(movie.getTypelist() ==null) movie.setTypelist("");
        return movie;
    }
}
