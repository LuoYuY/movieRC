package com.controller;


import com.pojo.Movieinfo;
import com.pojo.User;
import com.req.LoginReq;
import com.service.RecommendResultService;
import com.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;
import java.util.List;



@Controller
@RequestMapping("/recommend")
public class RecommendResultController {

    @Autowired
    private RecommendResultService recommendResultService;



    @GetMapping("/result")
    public String login(String userid, HttpSession session, Model model) {
        List<Movieinfo> list = recommendResultService.queryRecommendResult(userid);
        System.out.println("resultnum"+list.size()+" "+list.get(0).getMoviename());

        session.setAttribute("movies",list);
        model.addAttribute("movies", list);
        return "index";
    }


}