<%@ page isELIgnored="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
    <title>${movieinfo.moviename }</title>
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
    <link rel="icon" href="${APP_PATH }/images/fevicon.png" type="image/gif"/>
    <!-- Scrollbar Custom CSS -->
    <link rel="stylesheet" href="${APP_PATH }/css/jquery.mCustomScrollbar.min.css">
    <!-- Tweaks for older IEs-->
    <link rel="stylesheet" href="${APP_PATH }/css/font-awesome.css">
    <!-- owl stylesheets -->
    <link rel="stylesheet" href="${APP_PATH }/css/owl.carousel.min.css">
    <link rel="stylesheet" href="${APP_PATH }/css/owl.theme.default.min.css">
    <link rel="stylesheet" href="${APP_PATH }/css/jquery.fancybox.min.css" media="screen">
    <link href="${APP_PATH }/css/gijgo.min.css" rel="stylesheet" type="text/css"/>
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
<!-- cooming  section start -->
<div class="cooming_section layout_padding"
     style="background:url(https://image.tmdb.org/t/p/w600_and_h900_bestv2/${movieinfo.picture}) no-repeat center center; background-size:100%; padding-top: 0px;">
    <div class="container "
         style="background: linear-gradient(to right, rgb(94, 52, 28) 150px, rgba(53, 50, 45, 0.84) 100%);max-width: 2000px;padding:90px 350px 90px 350px;">
        <div class="row">
            <div class="col-md-6" style="flex:0 0;">
                <div class="image_17">
                    <div class="image_17"><img style="max-width:320px"
                                               src="https://image.tmdb.org/t/p/w600_and_h900_bestv2/${movieinfo.picture}">
                    </div>
                </div>
            </div>
            <div class="detaildiv">
                <div class="detaildata">
                <h1 class="Cooming_soon_taital">${movieinfo.moviename}</h1>
                </div>
                <div class="detaildata">
                    <label>类型</label>
                    <p class="long_text_1" style="color: white;">${movieinfo.typelist}</p>
                </div>
                <div class="detaildata">
                    <label>上映时间</label>
                    <p class="long_text_1" style="color: white;">${movieinfo.releasetime}</p>
                </div>

                <div class="detaildata">
                    <label>简介</label>
                    <p class="long_text_1" style="color: white;">${movieinfo.description}</p>
                </div>

                <div class="detaildata">
                    <label>导演</label>
                    <p class="long_text_1" style="color: white;">${movieinfo.director}</p>
                </div>

                <div class="detaildata">
                    <label>均分</label>
                    <p class="long_text_1" style="color: white;">${movieinfo.averating}</p>
                    <label>评分人数</label>
                    <p class="long_text_1" style="color: white;">${movieinfo.numrating}</p>
                </div>

                <div class="detaildata">
                    <label>主演</label>
                    <p class="long_text_1" style="color: white;">${movieinfo.leadactors}</p>
                </div>

                <!--<h1 class="number_text">01</h1> -->

                <div class="detaildata">
                    <c:choose>
                        <c:when test="${flag != 1}">
                            <div class="zan detaildata">
                                <div><a href="javascript:dz()"><img id="zan" src="${APP_PATH }/images/star.png"
                                                                    style="width: 50px;margin: 20px 20px 20px 40px;"/></a></div>
                            </div>
                        </c:when>
                        <c:otherwise>
                            <div class="zan">
                                <div><a href="javascript:dz()"><img id="zan" src="${APP_PATH }/images/unstar.png"
                                                                    style="width: 50px;margin: 20px 20px 20px 40px;"/></a></div>
                            </div>
                        </c:otherwise>
                    </c:choose>


                    <label for="star2" style="margin-top: 32px;">我的评分:</label>
                    <div id="star2" style="width: 140px;cursor: pointer;margin-top: 30px;"></div>
                    <div id="result2"></div>
                </div>

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


    let flag = '${flag}';

    function dz() {
        if ('${sessionScope.user}' != null && '${sessionScope.user.id}' != "") {
            if (flag == 1) { //已赞
                collect('${sessionScope.user.id}', '${movieinfo.movieid}', 1);
            } else {
                collect('${sessionScope.user.id}', '${movieinfo.movieid}', 0);
            }
        } else {
            alert("请先登录！");
            return;
        }
    }

    function collect(userid, movieid, f) {
        if ('${sessionScope.user}' == null || '${sessionScope.user.id}' == "")
        {
            alert("请先登录!");
            return;
        }
            $.ajax({
            url: '${pageContext.request.contextPath }/user/collect',
            type: 'post',
            data: {userid: userid, movieid: movieid, flag: f},
            dataType: 'json',
            success: function (result) {
                if (result == 0) {
                    if (f == 1) {
                        flag = 0;
                        document.getElementById('zan').src = '${APP_PATH }/images/star.png';

                    } else if (f == 0) {
                        document.getElementById('zan').src = '${APP_PATH }/images/unstar.png';
                        flag = 1;
                    }
                }
            }
        });
    }


    rat('star2', 'result2', 1);

    function rat(star, result, m) {

        star = '#' + star;
        result = '#' + result;
        $(result).hide();//将结果DIV隐藏

        $(star).raty({
            hints: ['1', '2', '3', '4', '5'],
            path: "${APP_PATH }/images",
            starOff: 'star-off-big.png',
            starOn: 'star-on-big.png',
            size: 24,
            start: 40,
            score:${rating},
            showHalf: true,
            target: result,
            targetKeep: true,//targetKeep 属性设置为true，用户的选择值才会被保持在目标DIV中，否则只是鼠标悬停时有值，而鼠标离开后这个值就会消失
            click: function (score, evt) {
                registerRate('${sessionScope.user.id}', '${movieinfo.movieid}', score);
            }
        });

    }

    function registerRate(userid, movieid, score) {

        if ('${sessionScope.user}' == null || '${sessionScope.user.id}' == "")
        {
            alert("请先登录!");
            return;
        }
        $.ajax({
            url: '${pageContext.request.contextPath }/user/rate',
            type: 'post',
            data: {userid: userid, movieid: movieid, score: score},
            dataType: 'json',
            success: function (result) {
                if (result == 0) {
                    alert('评分成功');
                }
            }
        });
    }
</script>
</body>
</html>

