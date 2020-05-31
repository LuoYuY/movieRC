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
    <title>个人主页</title>
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
<div class="movies_section layout_padding">
    <div class="container" style="max-width: 1600px;">

        <div class="movies_section_2 layout_padding" style="padding: 0px;">
            <h2 class="letest_text">个人信息</h2>
            <div class="modifyform">

                <form id="modifyform" action="${pageContext.request.contextPath }/user/update">

                    <div class="formdata">
                        <label for="id">id</label>
                        <input name="id" id="id" type="text" name="username" value="${sessionScope.user.id}" readonly="true">
                    </div>

                    <div class="formdata">
                        <label for="username">用户名</label>
                        <input name="username" id="username" type="text" name="username" value="${sessionScope.user.username}" readonly="true">
                    </div>

                    <div class="formdata">
                        <label for="password">密码</label>
                        <input name="password" id="password" type="password" name="username" value="${sessionScope.user.password}" readonly="true">
                    </div>

                    <div class="formdata">
                        <label for="email">邮箱</label>
                        <input name="email" id="email" type="text" name="username" value="${sessionScope.user.email}" readonly="true">
                    </div>

                    <div class="formdata">
                        <label for="phone">电话</label>
                        <input name="phone" id="phone" type="text" name="username" value="${sessionScope.user.phone}" readonly="true">
                    </div>
                </form>
                <input id="formbutton" class="formbutton" type="button" onclick="modify()"  value="修改"> </div>
            </div>
        </div>
        <div class="movies_section_2 layout_padding">
            <h2 class="letest_text" style="margin-left: 130px;">我的收藏</h2>

            <div class="movies_main">
                <div class="box">
                    <c:forEach items="${sessionScope.collects}" var="movie" >
                        <div class="item">
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
                            <div class="star_icon">
                                <ul>
                                    ${movie.averating}
                                    <c:forEach begin="1" end="${movie.averating}" step="1">
                                        <li><a href="${APP_PATH }/#"><img src="${APP_PATH }/images/star-icon.png"></a></li>
                                    </c:forEach>
                                </ul>
                            </div>
                        </div>
                    </c:forEach>
                </div>
            </div>
        </div>

        <div class="movies_section_2 layout_padding">
            <h2 class="letest_text" style="margin-left: 130px;">我的收藏</h2>

            <div class="movies_main">
                <div class="box">
                    <c:forEach items="${sessionScope.collects}" var="movie" >
                        <div class="item">
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
                            <div class="star_icon">
                                <ul>
                                        ${movie.averating}
                                    <c:forEach begin="1" end="${movie.averating}" step="1">
                                        <li><a href="${APP_PATH }/#"><img src="${APP_PATH }/images/star-icon.png"></a></li>
                                    </c:forEach>
                                </ul>
                            </div>
                        </div>
                    </c:forEach>
                </div>
            </div>
        </div>
    </div>
</div>





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






<script>

    $(document).ready(function() {
        let xhr = new XMLHttpRequest();
        xhr.open('GET', '${pageContext.request.contextPath }/collect/result?userid='+${sessionScope.user.id} ,true);
        xhr.send();
    })

    function modify() {
        if($('#formbutton').val()==='修改')
        {
            $('#formbutton').val("保存");
            $('#username').attr("readonly",false);
            $('#password').attr("readonly",false);
            $('#email').attr("readonly",false);
            $('#phone').attr("readonly",false);
        }
        else
        {


            $.ajax({
                url:'${pageContext.request.contextPath }/user/update',
                type:'post',
                data:$('#modifyform').serialize(),
                dataType:'json',
                success:function(result){
                    if(result == 0){
                        alert('保存成功');
                    }

                    $('#username').attr("readonly",true);
                    $('#password').attr("readonly",true);
                    $('#email').attr("readonly",true);
                    $('#phone').attr("readonly",true);

                }
            });

            $('#formbutton').val("修改");
        }







    }
</script>
</body>
</html>
