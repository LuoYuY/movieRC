package com.controller;


import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.serializer.SerializerFeature;
import com.pojo.Movieinfo;
import com.service.RecommendResultService;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;



@Controller
@RequestMapping("/recommend")
public class RecommendResultController {

    @Autowired
    private RecommendResultService recommendResultService;



    @GetMapping("/result")
    public void login(@Param("userid")String userid, HttpSession session, Model model, HttpServletResponse response) throws IOException {
        if(userid==null||userid=="")
        {
            userid = "1";
        }
        List<Movieinfo> list = recommendResultService.queryRecommendResult(userid);
        System.out.println("resultnum"+list.size()+" "+list.get(0).getMoviename());

        JSON.DEFFAULT_DATE_FORMAT = "yyyy-MM-dd";
        String result = JSON.toJSONString(list, SerializerFeature.WriteDateUseDateFormat);

        response.setContentType("text/html;charset=utf-8");
        response.getWriter().write(result);

    }


}