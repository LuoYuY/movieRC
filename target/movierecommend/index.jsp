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
    <title>首页</title>
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

    <script>
        function hello() {

            $.ajax({
                url: '${pageContext.request.contextPath }/movie/latest',
                type: 'get',
                data: {},
                dataType: 'json',
                success: function (result) {
                    for(let i in result){ //第一层循环取到各个list
                        if(i==0)
                        {
                            $('#picture1').css("background-image","url(https://image.tmdb.org/t/p/w300_and_h450_bestv2/"+result[i].picture+")");

                            $('#moviename').html(result[i].moviename);
                            $('#description').html('类型：'+result[i].typelist);
                            $('#numrating').html(result[i].numrating+"人已打分");
                            $('#averating').html('均分'+result[i].numrating);
                            $('#latestlink').attr("href","${APP_PATH }/movie/detail?movieid="+result[i].movieid);
                            $('#name1').html(result[i].moviename);
                            $('#type1').html(result[i].typelist);
                        }
                        if(i==1)
                        {
                            $('#picture2').css("background-image","url(https://image.tmdb.org/t/p/w300_and_h450_bestv2/"+result[i].picture+")");
                            $('#name2').html(result[i].moviename);
                            $('#type2').html(result[i].typelist);
                        }

                    }
                }
            });


            $.ajax({
                url: '${pageContext.request.contextPath }/movie/banner',
                type: 'get',
                data: {},
                dataType: 'json',
                success: function (result) {
                    $('#bannerMovieName').html(result.moviename);
                    $('#BannerMovieDes').html(result.description);
                    $('#bannersec').css("background","linear-gradient(110deg, #3c0e0e 55%, rgba(60, 90, 90, 0) 55%), url(https://image.tmdb.org/t/p/w600_and_h900_bestv2/"+result.picture+")");

                    $('#href1').attr("href","${APP_PATH }/movie/detail?movieid="+result.movieid);
                    $('#href2').attr("href","${APP_PATH }/movie/detail?movieid="+result.movieid);
                }
            });


            let userid ="${sessionScope.user.id}";
            $.ajax({
                url: '${pageContext.request.contextPath }/recommend/result',
                type: 'get',
                data: {userid: userid,},
                dataType: 'json',
                async: false,
                success: function (result) {

                    let str = "";

                    for(let i in result){ //第一层循环取到各个list

                        let picture;
                        if(result[i].picture=="NO PICTURE")
                        {
                            picture = "${APP_PATH }/images/img-9.png";
                        }
                        else
                        {
                            picture = "https://image.tmdb.org/t/p/w300_and_h450_bestv2/"+result[i].picture;
                        }



                        str += "<div class=\"iamge_movies\" style=\"width: 17%;\"><div class=\"image_3\"><img src=\""+picture+
                            "\" class=\"image\" style=\"width:100%\"><div class=\"middle\"><div class=\"playnow_bt\"> <a href=\"http://localhost:8080/movie/movie/detail?movieid="+result[i].movieid+
                            "\">Play Now</a></div></div></div><h1 class=\"code_text\">"+result[i].moviename+
                            "</h1> <p class=\"there_text\">"+result[i].typelist+
                            "</p></div>"
                    }
                    $('#recommendlist').html(str);



                    /*
                    $('#bannerMovieName').html(result.moviename);
                    $('#BannerMovieDes').html(result.description);
                    $('#bannersec').css("background","linear-gradient(110deg, #3c0e0e 55%, rgba(60, 90, 90, 0) 55%), url(https://image.tmdb.org/t/p/w600_and_h900_bestv2/"+result.picture+")");

                    $('#href1').attr("href","${APP_PATH }/movie/detail?movieid="+result.movieid);
                    $('#href2').attr("href","${APP_PATH }/movie/detail?movieid="+result.movieid);
                    */
                }
            });

        }
    </script>
</head>
<body onload="hello()">
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




<!-- banner section end -->
<div class="banner_section layout_padding" id="bannersec">
    <div class="container">
        <div class="row">
            <div class="col-md-6">
                <div class="banner_taital" id="bannerMovieName">Toy story</div>
                <p class="banner_text" id="BannerMovieDes">Lorem Ipsum is simply dummy text of the printing and typesetting industry. </p>
                <div class="see_bt"><a id="href1" href="${APP_PATH }/#">See More</a></div>
            </div>
            <div class="col-md-6">
                <div class="play_icon"><a  id="href2"  href="${APP_PATH }/#"><img src="${APP_PATH }/images/play-icon.png"></a></div>
            </div>
        </div>
    </div>
</div>
<!-- banner section end -->




<!-- arrival section start -->
<div class="arrival_section layout_padding">
    <div class="container">
        <div class="row">
            <div class="col-sm-6 col-lg-4">
                <div id="picture1" class="image_1">
                    <h2 id="name1" class="jesusroch_text"></h2>
                    <p id="type1" class="movie_text"></p>
                </div>
            </div>
            <div class="col-sm-6 col-lg-4">
                <div id="picture2" class="image_2">
                    <h2 id="name2" class="jesusroch_text"></h2>
                    <p id="type2" class="movie_text"></p>
                </div>
            </div>
            <div class="col-sm-8 col-lg-4">
                <h1 class="arrival_text">最新上映</h1>
                <div class="movie_main">

                    <div id="moviename" style="font-size: 35px;" class="mins_text"></div>

                </div>
                <p id="description" class="long_text"></p>
                <div class="rating_main">
                    <div class="row">
                        <div class="col-sm-6 col-lg-6">
                            <div class="icon_2"><img src="${APP_PATH }/images/icon-2.png"><span id="numrating" class="padding_10"></span></div>
                        </div>
                        <div class="col-sm-6 col-lg-6">
                            <div class="icon_2"><img src="${APP_PATH }/images/icon-2.png"><span id="averating" class="padding_10"></span></div>
                        </div>
                    </div>
                </div>
                <div class="paly_bt"><a id="latestlink" href="${APP_PATH }/#" target="_blank">详 情</a></div>
            </div>
        </div>
    </div>
</div>
<!-- arrival section end -->
<!-- movies section start -->
<div class="movies_section layout_padding" style="padding-top: 0px;">
    <div class="container">
        <div class="movies_section_2 layout_padding">
            <h2 class="letest_text">为你推荐</h2>
            <div class="seemore_bt"><a href="${pageContext.request.contextPath }/movie/list">更多</a></div>
            <div class="movies_main">
                <div id="recommendlist" style="flex-flow: row wrap;" class="iamge_movies_main">
                    <c:forEach items="${sessionScope.movies}" var="movie" varStatus="vs" begin="1" end="4" step="1">
                    <div class="iamge_movies" style="width: 17%;">
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
</div>
<!-- movies section end -->
<!-- newsletter section start -->
<div class="newsletter_section layout_padding">
    <div class="container">
        <h1 class="newsletter_text">Subscribe Our Newsletter</h1>
        <div class="box_main">
            <p class="dummy_text">It is a long established fact that a reader will be distracted by the readable content of a page when looking</p>
            <div class="mail_main">
                <input type="text" class="email_text" placeholder="Enter Your email" name="Enter Your email">
                <div class="right_arrow">
                    <a href="${APP_PATH }/#"><img src="${APP_PATH }/images/right-arrow.png"></a>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- newsletter section end -->

<!-- footer  section start -->
<div class="footer_section layout_padding">
    <div class="container">
        <div class="footer_menu">
            <ul>
                <li><a href="${APP_PATH }/index.html">Home</a></li>
                <li><a href="${APP_PATH }/movies.html">Movies</a></li>
                <li><a href="${APP_PATH }/tv.html">TV</a></li>
                <li><a href="${APP_PATH }/celebs.html">Celebs</a></li>
                <li><a href="${APP_PATH }/#">Sports</a></li>
                <li><a href="${APP_PATH }/#">News</a></li>
            </ul>
        </div>
        <div class="social_icon">
            <ul>
                <li><a href="${APP_PATH }/#"><img src="${APP_PATH }/images/fb-icon.png"></a></li>
                <li><a href="${APP_PATH }/#"><img src="${APP_PATH }/images/twitter-icon.png"></a></li>
                <li><a href="${APP_PATH }/#"><img src="${APP_PATH }/images/linkedin-icon.png"></a></li>
                <li><a href="${APP_PATH }/#"><img src="${APP_PATH }/images/instagram-icon.png"></a></li>
            </ul>
        </div>
    </div>
</div>
<!-- footer  section end -->
<!-- copyright section start -->
<div class="copyright_section">
    <div class="container">
        <div class="copyright_text">Copyright &copy; 2020.Company name All rights reserved.<a target="_blank" href="${APP_PATH }/http://sc.chinaz.com/moban/">&#x7F51;&#x9875;&#x6A21;&#x677F;</a></div>
    </div>
</div>
<!-- copyright section end -->
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
<script>
    $('#datepicker').datepicker({
        uiLibrary: 'bootstrap4'
    });

</script>


</body>
</html>