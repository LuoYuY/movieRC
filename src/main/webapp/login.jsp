<%--
  Created by IntelliJ IDEA.
  User: hadoop
  Date: 2020/4/24
  Time: 下午6:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page isELIgnored="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<head>
    <title>登陆</title>

    <%
        pageContext.setAttribute("APP_PATH", request.getContextPath());
    %>

    <link href="${APP_PATH }/css/loginstyle.css" rel="stylesheet" type="text/css" media="all"/>
    <!-- Custom Theme files -->
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="keywords" content="后台登录" />
</head>
<body>
<div class="login-form">
    <div class="top-login">
        <span><img src="${APP_PATH }/images/group.png" alt=""/></span>
    </div>
    <h1>登录</h1>


    <div class="login-top">
        <form action="${pageContext.request.contextPath }/user/login" method="post">
            <div class="login-ic">
                <i ></i>
                <input type="text"  name="username" onFocus="this.value = '';" onBlur="if (this.value == '') {this.value = 'User name';}"/>
                <div class="clear"> </div>
            </div>
            <div class="login-ic">
                <i class="icon"></i>
                <input type="password"  name="password"  onFocus="this.value = '';" onBlur="if (this.value == '') {this.value = 'password';}"/>
                <div class="clear"> </div>
            </div>

            <div class="log-bwn">
                <input type="submit"  value="Login" >
            </div>
        </form>
    </div>
    <p class="copy">© 2020 LuoYuY</p>
</div>
</body>
</html>
