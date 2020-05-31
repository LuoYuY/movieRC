<%@ page isELIgnored="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<head>
    <!-- basic -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- mobile metas -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="viewport" content="initial-scale=1, maximum-scale=1">
    <!-- site metas -->
    <title>电影</title>
    <meta name="keywords" content="">
    <meta name="description" content="">
    <meta name="author" content="">
    <!-- bootstrap css -->

    <%
        pageContext.setAttribute("APP_PATH", request.getContextPath());
    %>

    <link rel="stylesheet" type="text/css" href="${APP_PATH }/css/bootstrap.min.css">
    <!-- style css -->
    <link rel="stylesheet" type="text/css" href="${APP_PATH }/css/style.css">
    <!-- Responsive-->
    <link rel="stylesheet" href="${APP_PATH }/css/responsive.css">
    <!-- fevicon -->
    <link rel="icon" href="${APP_PATH }/images/fevicon.png" type="image/gif" />
    <!-- Scrollbar Custom CSS -->
    <link rel="stylesheet" href="${APP_PATH }/css/jquery.mCustomScrollbar.min.css">
    <!-- Tweaks for older IEs-->
    <link rel="stylesheet" href="${APP_PATH }/css/font-awesome.css">
    <!-- owl stylesheets -->
    <link rel="stylesheet" href="${APP_PATH }/css/owl.carousel.min.css">
    <link rel="stylesheet" href="${APP_PATH }/css/owl.theme.default.min.css">
    <link rel="stylesheet" href="${APP_PATH }/css/jquery.fancybox.min.css" media="screen">
    <link href="${APP_PATH }/css/gijgo.min.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" href="${APP_PATH }/css/mystyle.css">

</head>
<body>
<!-- header section start -->
<div class="header_section">
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <a class="logo" href="${APP_PATH }/index.jsp"><img src="${APP_PATH }/images/logo.png"></a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav mr-auto">
                <li class="nav-item active">
                    <a class="nav-link" href="${APP_PATH }/index.jsp">主页</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="${APP_PATH }/movie/list">电影</a>
                </li>

            </ul>

            <!--login/user -->
            <div class="search_icon">
                <c:choose>
                    <c:when test="${sessionScope.get('user')!=null}">
                        <a href="${pageContext.request.contextPath }/collect/result?userid=${sessionScope.user.id}"><img src="${APP_PATH }/images/user-icon.png"><span class="padding_left_15">${sessionScope.get('user').username}</span></a>
                    </c:when>
                    <c:otherwise>
                        <a href="${APP_PATH }/login.jsp"><img src="${APP_PATH }/images/user-icon.png"><span class="padding_left_15">登陆</span></a>
                    </c:otherwise>

                </c:choose>

            </div>

            <div class="search_icon"><a href="${APP_PATH }/movie/list"><img src="${APP_PATH }/images/search-icon.png"><span class="padding_left_15">搜索...</span></a></div>
        </div>
    </nav>
</div>
<!-- header section end -->
<!-- newsletter section start -->
<div class="newsletter_section layout_padding" style="padding: 25px 0px 50px 0px;">
    <div class="container">

        <div class="box_main">

            <div class="mail_main">
                <form action="${pageContext.request.contextPath }/movie/searchAll" method="post" style="display: flex;">
                    <input type="text" name="moviename" class="email_text" placeholder="输入电影名" name="Enter Your email">
                    <div class="right_arrow" style="width: 100px">
                        <button type="submit" value="搜索" style="background: #df9911;border: 0px;">搜 索</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
<!-- newsletter section end -->

<div class="cooming_section layout_padding" style="background:url(https://image.tmdb.org/t/p/w600_and_h900_bestv2/${movieinfo.picture}) no-repeat center center; background-size:100%; padding-top: 0px;">
    <div class="container con" style="background: linear-gradient(to right, rgb(94, 52, 28) 150px, rgba(53, 50, 45, 0.84) 100%);max-width: 2000px;padding:90px 350px 90px 350px;">
        <div class="row">

                <c:forEach items="${alllist}" var="movie">
                    <div class="iamge_movies singlemovie">
                        <div class="image_3">

                            <c:choose>
                                <c:when test="${movie.picture !='NO PICTURE'}">
                                    <img src="https://image.tmdb.org/t/p/w300_and_h450_bestv2/${movie.picture}" class="image" style="width:100%">
                                </c:when>
                                <c:otherwise>
                                    <img src="${APP_PATH }/images/img-9.png" class="image" style="width:100%">
                                </c:otherwise>

                            </c:choose>

                            <div class="middle">
                                <div class="playnow_bt"> <a href="${APP_PATH }/movie/detail?movieid=${movie.movieid}">Play Now</a> </div>
                            </div>
                        </div>
                        <h1 class="code_text">${movie.moviename }</h1>
                        <p class="there_text">${movie.typelist } </p>

                    </div>
                </c:forEach>




            </div>
        </div>
    </div>
</div>
<!-- cooming  section end -->


<!-- Javascript files-->
<script src="${APP_PATH }/js/jquery.min.js"></script>
<script src="${APP_PATH }/js/popper.min.js"></script>
<script src="${APP_PATH }/js/bootstrap.bundle.min.js"></script>
<script src="${APP_PATH }/js/jquery-3.0.0.min.js"></script>
<!-- sidebar -->
<script src="${APP_PATH }/js/jquery.mCustomScrollbar.concat.min.js"></script>
<script src="${APP_PATH }/js/custom.js"></script>
<!-- javascript -->
<script src="${APP_PATH }/js/owl.carousel.js"></script>
<script src="${APP_PATH }/js/jquery.fancybox.min.js"></script>
<script src="${APP_PATH }/js/gijgo.min.js" type="text/javascript"></script>

<script src="${APP_PATH }/js/jquery-1.5.1.js" type="text/javascript"></script>
<script src="${APP_PATH }/js/jquery.raty.js" type="text/javascript"></script>
<script>
    $('#datepicker').datepicker({
        uiLibrary: 'bootstrap4'
    });

</script>

<script type="text/javascript">


</script>
</body>
</html>
