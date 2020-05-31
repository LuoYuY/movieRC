package com.controller;

import com.pojo.Movieinfo;
import com.service.MovieService;
import com.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller

public class CollectController {

    @Autowired
    private MovieService movieService;

    @Autowired
    private UserService userService;

    @GetMapping("/collect/result")
    public String result(Integer userid, HttpSession session, HttpServletRequest request, HttpServletResponse response) {
        List<Movieinfo> collects = movieService.queryCollectResult(userid);
        System.out.println("resultnum"+collects.size()+" "+collects.get(0).getMoviename());

       // request.setAttribute("collects", collects);
        request.setAttribute("test","hello");
        session.setAttribute("collects", collects);
        return "user";
    }




}