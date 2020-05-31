package com.controller;


import com.Utils.AjaxUtils;
import com.pojo.User;
import com.req.LoginReq;
import com.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("/user")
public class UserController {

    @Autowired
    private UserService userService;

    @RequestMapping("/allUser")
    public String list(Model model) {

        List<User> list = userService.queryAllUser();
        model.addAttribute("list", list);
        return "jsp/addUser";
    }

    @RequestMapping("/login")
    public String login(LoginReq loginReq, HttpSession session, Model model) {
        List<User> list = userService.queryUser(loginReq.getUsername(),loginReq.getPassword());

        if(list!=null&&list.size()>0){
            model.addAttribute("user", list.get(0));
            session.setAttribute("user" ,list.get(0));
            return "index";
        }else {
            model.addAttribute("msg","账户或者密码错误！！！");
            return "login";
        }
    }


    @RequestMapping("/collect")
    public void collect(Integer userid, Integer movieid, Integer flag,HttpSession session, Model model, HttpServletResponse response) {


        if(flag==0)
        {
            userService.collect(userid,movieid);
        }
        else
        {
            userService.uncollect(userid,movieid);
        }
        model.addAttribute("movieid",movieid);
        model.addAttribute(flag);
        AjaxUtils.ajaxResponse(response,"0");
    }


    @RequestMapping("/update")
    public void collect(Integer id, String username, String password,String email,String phone,HttpSession session, Model model,HttpServletResponse response) {

        User user = new User();
        user.setId(id);
        user.setUsername(username);
        user.setPassword(password);
        user.setEmail(email);
        user.setPhone(phone);


        userService.update(user);

        AjaxUtils.ajaxResponse(response,"0");
    }



    @RequestMapping("/rate")
    public void rate(Integer userid, Integer movieid, Integer score,HttpSession session, Model model, HttpServletResponse response) {


        userService.rate(userid,movieid,score);

        model.addAttribute("movieid",movieid);
        model.addAttribute("score",score);
        AjaxUtils.ajaxResponse(response,"0");
    }

}