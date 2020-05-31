package com.controller;

import com.Utils.AjaxUtils;
import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.serializer.SerializerFeature;
import com.pojo.Movieinfo;
import com.pojo.User;
import com.req.AddMovieReq;
import com.service.BannerService;
import com.service.MovieService;
import com.service.RecommendResultService;
import com.service.UserService;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.text.ParseException;
import java.util.List;

@Controller
@RequestMapping("/movie")
public class MovieController {

    @Autowired
    private MovieService movieService;


    @Autowired
    private UserService userService;

    @Autowired
    private BannerService bannerService;



    @GetMapping("/detail")
    public String login(Integer movieid, HttpSession session, Model model) {
        Movieinfo movieinfo = movieService.queryMovieInfo(movieid);
        User user = (User)session.getAttribute("user");
        Boolean result = userService.check(user.getId(),movieid);
        Integer rating = movieService.queryPersonalRating(user.getId(),movieinfo.getMovieid());
        Integer flag = null;
        if(result) flag = 1;
        else flag = 0;

        System.out.println("movieinfo"+movieinfo.getMoviename());

        model.addAttribute("movieinfo", movieinfo);
        model.addAttribute("flag",flag);
        model.addAttribute("rating",rating);
        return "detail";
    }

    @GetMapping("/detailForAdmin")
    public String getDetail(Integer movieid, HttpSession session, Model model) {
        Movieinfo movieinfo = movieService.queryMovieInfo(movieid);

        model.addAttribute("movieinfo", movieinfo);

        return "detail";
    }


    @PostMapping("/all")
    public String showAll(HttpSession session, Model model) {
        List<Movieinfo> list = movieService.getMovieinfo();
        model.addAttribute("movielist",list);
        //session.setAttribute("allmovies",list);
        return "admin";
    }

    @PostMapping("/search")
    public String search(@Param("moviename")String moviename, HttpSession session, Model model) {
        List<Movieinfo> list = movieService.searchMovies(moviename);
        model.addAttribute("movielist",list);
        //session.setAttribute("allmovies",list);
        return "admin";
    }

    @GetMapping("/searchForBanner")
    public void searchForBanner(@Param("moviename")String moviename,HttpSession session, Model model, HttpServletResponse response) throws IOException {
        List<Movieinfo> latestList = movieService.searchMovies(moviename);


        // Movieinfo max1 = new Movieinfo();
        // max1 = latestList.get(0);
        // AjaxUtils.ajaxJSONResponse(response,"hello","hello");
        //AjaxUtils.ajaxJSONResponse(response,"max1",	JSON.toJSONString(max1));
        //AjaxUtils.ajaxJSONResponse(response,"max2",	JSON.toJSONString(latestList.get(1)));

        //AjaxUtils.ajaxJSONResponse(response,"max2",latestList.get(1));

        JSON.DEFFAULT_DATE_FORMAT = "yyyy-MM-dd";
        String result = JSON.toJSONString(latestList, SerializerFeature.WriteDateUseDateFormat);

        response.setContentType("text/html;charset=utf-8");
        response.getWriter().write(result);


    }



    @PostMapping("/searchAll")
    public String searchAll(@Param("moviename")String moviename, HttpSession session, Model model) {
        List<Movieinfo> list = movieService.searchMovies(moviename);
        model.addAttribute("alllist",list);
        //session.setAttribute("allmovies",list);
        return "list";
    }


    @PostMapping("/add")
    public String addMovie(AddMovieReq addMovieReq, HttpSession session, Model model) {

        movieService.addMovie(addMovieReq);
        return "admin";
    }


    @PostMapping("/delete")
    public void deleteMovie(Integer movieid, HttpSession session, Model model,HttpServletResponse response) {
        movieService.deleteMovie(movieid);
        AjaxUtils.ajaxResponse(response,"0");
    }

    @GetMapping("/list")
    public String listAll(HttpSession session, Model model) {
        List<Movieinfo> list = movieService.getMovieinfo();
        model.addAttribute("alllist",list);
        //session.setAttribute("allmovies",list);
        return "list";
    }

    @GetMapping("/latest")
    public void getLatest(HttpSession session, Model model, HttpServletResponse response) throws IOException {
        List<Movieinfo> latestList = movieService.getLatestMovies();


       // Movieinfo max1 = new Movieinfo();
       // max1 = latestList.get(0);
       // AjaxUtils.ajaxJSONResponse(response,"hello","hello");
        //AjaxUtils.ajaxJSONResponse(response,"max1",	JSON.toJSONString(max1));
        //AjaxUtils.ajaxJSONResponse(response,"max2",	JSON.toJSONString(latestList.get(1)));

        //AjaxUtils.ajaxJSONResponse(response,"max2",latestList.get(1));

        String result = JSON.toJSONString(latestList);
        response.setContentType("text/html;charset=utf-8");
        response.getWriter().write(result);


    }



    @GetMapping("/banner")
    public void getBanner(Integer movieid, HttpSession session, Model model,HttpServletResponse response) throws IOException {

        Movieinfo banner = bannerService.getBanner();
        JSON.DEFFAULT_DATE_FORMAT = "yyyy-MM-dd";
        String result = JSON.toJSONString(banner, SerializerFeature.WriteDateUseDateFormat);
        response.setContentType("text/html;charset=utf-8");
        response.getWriter().write(result);
    }

    @PostMapping("/updateBanner")
    public void updateBanner(Integer movieid, HttpSession session, Model model,HttpServletResponse response) throws IOException, ParseException {

        bannerService.updateBanner(movieid);
        Movieinfo banner = movieService.queryMovieInfo(movieid);
        JSON.DEFFAULT_DATE_FORMAT = "yyyy-MM-dd";
        String result = JSON.toJSONString(banner, SerializerFeature.WriteDateUseDateFormat);
        response.setContentType("text/html;charset=utf-8");
        response.getWriter().write(result);
    }



}