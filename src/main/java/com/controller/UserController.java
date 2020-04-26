package com.controller;


import com.pojo.User;
import com.req.LoginReq;
import com.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
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


}