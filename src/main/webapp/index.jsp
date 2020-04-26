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
    <title>DBI</title>
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
</head>
<body>
<!-- header section start -->
<div class="header_section">
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <a class="logo" href="${APP_PATH }/index.html"><img src="${APP_PATH }/images/logp.png"></a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav mr-auto">
                <li class="nav-item active">
                    <a class="nav-link" href="${APP_PATH }/index.html">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="${APP_PATH }/movies.html">Movies</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="${APP_PATH }/tv.html">TV</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="${APP_PATH }/celebs.html">Celebs</a>
                </li>
            </ul>
            <div class="search_icon"><a href="${APP_PATH }/#"><img src="${APP_PATH }/images/notification-icon.png"><span class="padding_left_15">Notificastion</span></a></div>
            <div class="search_icon"><a href="${APP_PATH }/#"><img src="${APP_PATH }/images/eye-icon.png"><span class="padding_left_15">Viwe</span></a></div>


            <!--login/user -->
            <div class="search_icon">
                <c:choose>
                    <c:when test="${sessionScope.get('user')!=null}">
                        <a href="${APP_PATH }/home.jsp"><img src="${APP_PATH }/images/user-icon.png"><span class="padding_left_15">${sessionScope.get('user').username}</span></a>
                    </c:when>
                    <c:otherwise>
                        <a href="${APP_PATH }/login.jsp"><img src="${APP_PATH }/images/user-icon.png"><span class="padding_left_15">login</span></a>
                    </c:otherwise>

                </c:choose>

            </div>



            <div class="search_icon"><a href="${APP_PATH }/#"><img src="${APP_PATH }/images/search-icon.png"><span class="padding_left_15">Search...</span></a></div>
        </div>
    </nav>
</div>
<!-- header section end -->
<!-- banner section end -->
<div class="banner_section layout_padding">
    <div class="container">
        <div class="row">
            <div class="col-md-6">
                <div class="banner_taital">Enjoy <br>The movies Shows And Songs</div>
                <p class="banner_text">Lorem Ipsum is simply dummy text of the printing and typesetting industry. </p>
                <div class="see_bt"><a href="${APP_PATH }/#">See More</a></div>
            </div>
            <div class="col-md-6">
                <div class="play_icon"><a href="${APP_PATH }/#"><img src="${APP_PATH }/images/play-icon.png"></a></div>
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
                <div class="image_1">
                    <h2 class="jesusroch_text">J E S U S R O C H</h2>
                    <p class="movie_text">Hollywood Movie</p>
                </div>
            </div>
            <div class="col-sm-6 col-lg-4">
                <div class="image_2">
                    <h2 class="jesusroch_text">J E S U S R O C H</h2>
                    <p class="movie_text">Hollywood Movie</p>
                </div>
            </div>
            <div class="col-sm-8 col-lg-4">
                <h1 class="arrival_text">A r r i v a l</h1>
                <div class="movie_main">
                    <div class="mins_text_1">150 mins</div>
                    <div class="mins_text">Actions Movie</div>
                    <div class="mins_text"><img src="${APP_PATH }/images/icon-1.png"><span class="icon_1">Watchlist</span></div>
                </div>
                <p class="long_text">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem</p>
                <div class="rating_main">
                    <div class="row">
                        <div class="col-sm-6 col-lg-6">
                            <div class="icon_2"><img src="${APP_PATH }/images/icon-2.png"><span class="padding_10">4.6 Revieweed</span></div>
                        </div>
                        <div class="col-sm-6 col-lg-6">
                            <div class="icon_2"><img src="${APP_PATH }/images/icon-2.png"><span class="padding_10">Your Rateing</span></div>
                        </div>
                    </div>
                </div>
                <div class="paly_bt"><a href="${APP_PATH }/#">Play Now</a></div>
            </div>
        </div>
    </div>
</div>
<!-- arrival section end -->
<!-- movies section start -->
<div class="movies_section layout_padding">
    <div class="container">
        <div class="movies_menu">
            <ul>
                <li class="active"><a href="${APP_PATH }/#">Overview</a></li>
                <li><a href="${APP_PATH }/tv.html">TV</a></li>
                <li><a href="${APP_PATH }/movies.html">Movies</a></li>
                <li><a href="${APP_PATH }/#">Show</a></li>
                <li><a href="${APP_PATH }/celebs.html">Celeb</a></li>
                <li><a href="${APP_PATH }/#">Sports</a></li>
                <li><a href="${APP_PATH }/#">News</a></li>
                <li><a href="${APP_PATH }/#">Cartoon</a></li>
            </ul>
        </div>
        <div class="movies_section_2 layout_padding">
            <h2 class="letest_text">Letest Movies</h2>
            <div class="seemore_bt"><a href="${APP_PATH }/#">See More</a></div>
            <div class="movies_main">
                <div class="iamge_movies_main">
                    <div class="iamge_movies">
                        <div class="image_3">
                            <img src="${APP_PATH }/images/img-3.png" class="image" style="width:100%">
                            <div class="middle">
                                <div class="playnow_bt">Play Now</div>
                            </div>
                        </div>
                        <h1 class="code_text">CADE Prlor</h1>
                        <p class="there_text">There are many variations </p>
                        <div class="star_icon">
                            <ul>
                                <li><a href="${APP_PATH }/#"><img src="${APP_PATH }/images/star-icon.png"></a></li>
                                <li><a href="${APP_PATH }/#"><img src="${APP_PATH }/images/star-icon.png"></a></li>
                                <li><a href="${APP_PATH }/#"><img src="${APP_PATH }/images/star-icon.png"></a></li>
                                <li><a href="${APP_PATH }/#"><img src="${APP_PATH }/images/star-icon.png"></a></li>
                                <li><a href="${APP_PATH }/#"><img src="${APP_PATH }/images/star-icon.png"></a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="iamge_movies">
                        <div class="image_3">
                            <img src="${APP_PATH }/images/img-4.png" class="image" style="width:100%">
                            <div class="middle">
                                <div class="playnow_bt">Play Now</div>
                            </div>
                        </div>
                        <h1 class="code_text">Bradon</h1>
                        <p class="there_text">There are many variations </p>
                        <div class="star_icon">
                            <ul>
                                <li><a href="${APP_PATH }/#"><img src="${APP_PATH }/images/star-icon.png"></a></li>
                                <li><a href="${APP_PATH }/#"><img src="${APP_PATH }/images/star-icon.png"></a></li>
                                <li><a href="${APP_PATH }/#"><img src="${APP_PATH }/images/star-icon.png"></a></li>
                                <li><a href="${APP_PATH }/#"><img src="${APP_PATH }/images/star-icon.png"></a></li>
                                <li><a href="${APP_PATH }/#"><img src="${APP_PATH }/images/star-icon.png"></a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="iamge_movies">
                        <div class="image_3">
                            <img src="${APP_PATH }/images/img-5.png" class="image" style="width:100%">
                            <div class="middle">
                                <div class="playnow_bt">Play Now</div>
                            </div>
                        </div>
                        <h1 class="code_text">Anton Levin</h1>
                        <p class="there_text">There are many variations </p>
                        <div class="star_icon">
                            <ul>
                                <li><a href="${APP_PATH }/#"><img src="${APP_PATH }/images/star-icon.png"></a></li>
                                <li><a href="${APP_PATH }/#"><img src="${APP_PATH }/images/star-icon.png"></a></li>
                                <li><a href="${APP_PATH }/#"><img src="${APP_PATH }/images/star-icon.png"></a></li>
                                <li><a href="${APP_PATH }/#"><img src="${APP_PATH }/images/star-icon.png"></a></li>
                                <li><a href="${APP_PATH }/#"><img src="${APP_PATH }/images/star-icon.png"></a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="iamge_movies">
                        <div class="image_3">
                            <img src="${APP_PATH }/images/img-6.png" class="image" style="width:100%">
                            <div class="middle">
                                <div class="playnow_bt">Play Now</div>
                            </div>
                        </div>
                        <h1 class="code_text">Sacha Styles</h1>
                        <p class="there_text">There are many variations </p>
                        <div class="star_icon">
                            <ul>
                                <li><a href="${APP_PATH }/#"><img src="${APP_PATH }/images/star-icon.png"></a></li>
                                <li><a href="${APP_PATH }/#"><img src="${APP_PATH }/images/star-icon.png"></a></li>
                                <li><a href="${APP_PATH }/#"><img src="${APP_PATH }/images/star-icon.png"></a></li>
                                <li><a href="${APP_PATH }/#"><img src="${APP_PATH }/images/star-icon.png"></a></li>
                                <li><a href="${APP_PATH }/#"><img src="${APP_PATH }/images/star-icon.png"></a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="iamge_movies">
                        <div class="image_3">
                            <img src="${APP_PATH }/images/img-7.png" class="image" style="width:100%">
                            <div class="middle">
                                <div class="playnow_bt">Play Now</div>
                            </div>
                        </div>
                        <h1 class="code_text">Katledrazdu</h1>
                        <p class="there_text">There are many variations </p>
                        <div class="star_icon">
                            <ul>
                                <li><a href="${APP_PATH }/#"><img src="${APP_PATH }/images/star-icon.png"></a></li>
                                <li><a href="${APP_PATH }/#"><img src="${APP_PATH }/images/star-icon.png"></a></li>
                                <li><a href="${APP_PATH }/#"><img src="${APP_PATH }/images/star-icon.png"></a></li>
                                <li><a href="${APP_PATH }/#"><img src="${APP_PATH }/images/star-icon.png"></a></li>
                                <li><a href="${APP_PATH }/#"><img src="${APP_PATH }/images/star-icon.png"></a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="movies_section_2 layout_padding">
            <h2 class="letest_text">TV Shows</h2>
            <div class="seemore_bt"><a href="${APP_PATH }/#">See More</a></div>
            <div class="movies_main">
                <div class="iamge_movies_main">
                    <div class="iamge_movies">
                        <div class="image_3">
                            <img src="${APP_PATH }/images/img-8.png" class="image" style="width:100%">
                            <div class="middle">
                                <div class="playnow_bt">Play Now</div>
                            </div>
                        </div>
                        <h1 class="code_text">CADE Prlor</h1>
                        <p class="there_text">There are many variations </p>
                        <div class="star_icon">
                            <ul>
                                <li><a href="${APP_PATH }/#"><img src="${APP_PATH }/images/star-icon.png"></a></li>
                                <li><a href="${APP_PATH }/#"><img src="${APP_PATH }/images/star-icon.png"></a></li>
                                <li><a href="${APP_PATH }/#"><img src="${APP_PATH }/images/star-icon.png"></a></li>
                                <li><a href="${APP_PATH }/#"><img src="${APP_PATH }/images/star-icon.png"></a></li>
                                <li><a href="${APP_PATH }/#"><img src="${APP_PATH }/images/star-icon.png"></a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="iamge_movies">
                        <div class="image_3">
                            <img src="${APP_PATH }/images/img-9.png" class="image" style="width:100%">
                            <div class="middle">
                                <div class="playnow_bt">Play Now</div>
                            </div>
                        </div>
                        <h1 class="code_text">Bradon</h1>
                        <p class="there_text">There are many variations </p>
                        <div class="star_icon">
                            <ul>
                                <li><a href="${APP_PATH }/#"><img src="${APP_PATH }/images/star-icon.png"></a></li>
                                <li><a href="${APP_PATH }/#"><img src="${APP_PATH }/images/star-icon.png"></a></li>
                                <li><a href="${APP_PATH }/#"><img src="${APP_PATH }/images/star-icon.png"></a></li>
                                <li><a href="${APP_PATH }/#"><img src="${APP_PATH }/images/star-icon.png"></a></li>
                                <li><a href="${APP_PATH }/#"><img src="${APP_PATH }/images/star-icon.png"></a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="iamge_movies">
                        <div class="image_3">
                            <img src="${APP_PATH }/images/img-10.png" class="image" style="width:100%">
                            <div class="middle">
                                <div class="playnow_bt">Play Now</div>
                            </div>
                        </div>
                        <h1 class="code_text">Anton Levin</h1>
                        <p class="there_text">There are many variations </p>
                        <div class="star_icon">
                            <ul>
                                <li><a href="${APP_PATH }/#"><img src="${APP_PATH }/images/star-icon.png"></a></li>
                                <li><a href="${APP_PATH }/#"><img src="${APP_PATH }/images/star-icon.png"></a></li>
                                <li><a href="${APP_PATH }/#"><img src="${APP_PATH }/images/star-icon.png"></a></li>
                                <li><a href="${APP_PATH }/#"><img src="${APP_PATH }/images/star-icon.png"></a></li>
                                <li><a href="${APP_PATH }/#"><img src="${APP_PATH }/images/star-icon.png"></a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="iamge_movies">
                        <div class="image_3">
                            <img src="${APP_PATH }/images/img-11.png" class="image" style="width:100%">
                            <div class="middle">
                                <div class="playnow_bt">Play Now</div>
                            </div>
                        </div>
                        <h1 class="code_text">Sacha Styles</h1>
                        <p class="there_text">There are many variations </p>
                        <div class="star_icon">
                            <ul>
                                <li><a href="${APP_PATH }/#"><img src="${APP_PATH }/images/star-icon.png"></a></li>
                                <li><a href="${APP_PATH }/#"><img src="${APP_PATH }/images/star-icon.png"></a></li>
                                <li><a href="${APP_PATH }/#"><img src="${APP_PATH }/images/star-icon.png"></a></li>
                                <li><a href="${APP_PATH }/#"><img src="${APP_PATH }/images/star-icon.png"></a></li>
                                <li><a href="${APP_PATH }/#"><img src="${APP_PATH }/images/star-icon.png"></a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="iamge_movies">
                        <div class="image_3">
                            <img src="${APP_PATH }/images/img-12.png" class="image" style="width:100%">
                            <div class="middle">
                                <div class="playnow_bt">Play Now</div>
                            </div>
                        </div>
                        <h1 class="code_text">Katledrazdu</h1>
                        <p class="there_text">There are many variations </p>
                        <div class="star_icon">
                            <ul>
                                <li><a href="${APP_PATH }/#"><img src="${APP_PATH }/images/star-icon.png"></a></li>
                                <li><a href="${APP_PATH }/#"><img src="${APP_PATH }/images/star-icon.png"></a></li>
                                <li><a href="${APP_PATH }/#"><img src="${APP_PATH }/images/star-icon.png"></a></li>
                                <li><a href="${APP_PATH }/#"><img src="${APP_PATH }/images/star-icon.png"></a></li>
                                <li><a href="${APP_PATH }/#"><img src="${APP_PATH }/images/star-icon.png"></a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="movies_section_2 layout_padding">
            <h2 class="letest_text">Sports</h2>
            <div class="seemore_bt"><a href="${APP_PATH }/#">See More</a></div>
            <div class="movies_main">
                <div class="iamge_movies_main">
                    <div class="iamge_movies">
                        <div class="image_3">
                            <img src="${APP_PATH }/images/img-13.png" class="image" style="width:100%">
                            <div class="middle">
                                <div class="playnow_bt">Play Now</div>
                            </div>
                        </div>
                        <h1 class="code_text">CADE Prlor</h1>
                        <p class="there_text">There are many variations </p>
                        <div class="star_icon">
                            <ul>
                                <li><a href="${APP_PATH }/#"><img src="${APP_PATH }/images/star-icon.png"></a></li>
                                <li><a href="${APP_PATH }/#"><img src="${APP_PATH }/images/star-icon.png"></a></li>
                                <li><a href="${APP_PATH }/#"><img src="${APP_PATH }/images/star-icon.png"></a></li>
                                <li><a href="${APP_PATH }/#"><img src="${APP_PATH }/images/star-icon.png"></a></li>
                                <li><a href="${APP_PATH }/#"><img src="${APP_PATH }/images/star-icon.png"></a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="iamge_movies">
                        <div class="image_3">
                            <img src="${APP_PATH }/images/img-14.png" class="image" style="width:100%">
                            <div class="middle">
                                <div class="playnow_bt">Play Now</div>
                            </div>
                        </div>
                        <h1 class="code_text">Bradon</h1>
                        <p class="there_text">There are many variations </p>
                        <div class="star_icon">
                            <ul>
                                <li><a href="${APP_PATH }/#"><img src="${APP_PATH }/images/star-icon.png"></a></li>
                                <li><a href="${APP_PATH }/#"><img src="${APP_PATH }/images/star-icon.png"></a></li>
                                <li><a href="${APP_PATH }/#"><img src="${APP_PATH }/images/star-icon.png"></a></li>
                                <li><a href="${APP_PATH }/#"><img src="${APP_PATH }/images/star-icon.png"></a></li>
                                <li><a href="${APP_PATH }/#"><img src="${APP_PATH }/images/star-icon.png"></a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="iamge_movies">
                        <div class="image_3">
                            <img src="${APP_PATH }/images/img-15.png" class="image" style="width:100%">
                            <div class="middle">
                                <div class="playnow_bt">Play Now</div>
                            </div>
                        </div>
                        <h1 class="code_text">Anton Levin</h1>
                        <p class="there_text">There are many variations </p>
                        <div class="star_icon">
                            <ul>
                                <li><a href="${APP_PATH }/#"><img src="${APP_PATH }/images/star-icon.png"></a></li>
                                <li><a href="${APP_PATH }/#"><img src="${APP_PATH }/images/star-icon.png"></a></li>
                                <li><a href="${APP_PATH }/#"><img src="${APP_PATH }/images/star-icon.png"></a></li>
                                <li><a href="${APP_PATH }/#"><img src="${APP_PATH }/images/star-icon.png"></a></li>
                                <li><a href="${APP_PATH }/#"><img src="${APP_PATH }/images/star-icon.png"></a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="iamge_movies">
                        <div class="image_3">
                            <img src="${APP_PATH }/images/img-16.png" class="image" style="width:100%">
                            <div class="middle">
                                <div class="playnow_bt">Play Now</div>
                            </div>
                        </div>
                        <h1 class="code_text">Sacha Styles</h1>
                        <p class="there_text">There are many variations </p>
                        <div class="star_icon">
                            <ul>
                                <li><a href="${APP_PATH }/#"><img src="${APP_PATH }/images/star-icon.png"></a></li>
                                <li><a href="${APP_PATH }/#"><img src="${APP_PATH }/images/star-icon.png"></a></li>
                                <li><a href="${APP_PATH }/#"><img src="${APP_PATH }/images/star-icon.png"></a></li>
                                <li><a href="${APP_PATH }/#"><img src="${APP_PATH }/images/star-icon.png"></a></li>
                                <li><a href="${APP_PATH }/#"><img src="${APP_PATH }/images/star-icon.png"></a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="iamge_movies">
                        <div class="image_3">
                            <img src="${APP_PATH }/images/img-7.png" class="image" style="width:100%">
                            <div class="middle">
                                <div class="playnow_bt">Play Now</div>
                            </div>
                        </div>
                        <h1 class="code_text">Katledrazdu</h1>
                        <p class="there_text">There are many variations </p>
                        <div class="star_icon">
                            <ul>
                                <li><a href="${APP_PATH }/#"><img src="${APP_PATH }/images/star-icon.png"></a></li>
                                <li><a href="${APP_PATH }/#"><img src="${APP_PATH }/images/star-icon.png"></a></li>
                                <li><a href="${APP_PATH }/#"><img src="${APP_PATH }/images/star-icon.png"></a></li>
                                <li><a href="${APP_PATH }/#"><img src="${APP_PATH }/images/star-icon.png"></a></li>
                                <li><a href="${APP_PATH }/#"><img src="${APP_PATH }/images/star-icon.png"></a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="seebt_1"><a href="${APP_PATH }/#">See More</a></div>
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
<!-- cooming  section start -->
<div class="cooming_section layout_padding">
    <div class="container">
        <div class="row">
            <div class="col-md-6">
                <div class="image_17">
                    <div class="image_17"><img src="${APP_PATH }/images/img-17.png"></div>
                </div>
            </div>
            <div class="col-md-6">
                <h1 class="number_text">01</h1>
                <h1 class="Cooming_soon_taital">Cooming soon</h1>
                <p class="long_text_1">It is a long established fact that a reader will be distracted by the readable content of a page when looking</p>
                <div class="paly_bt"><a href="${APP_PATH }/#">Play Now</a></div>
            </div>
        </div>
    </div>
</div>
<!-- cooming  section end -->
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