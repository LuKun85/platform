<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>欣客支付</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/style.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/loader-style.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/assets/css/bootstrap.css">

    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/assets/js/progress-bar/number-pb.css">


    <style type="text/css">
        canvas#canvas4 {
            position: relative;
            top: 20px;
        }
    </style>

    <!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
    <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->
    <!-- Fav and touch icons -->
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/resources/assets/ico/minus.png">
</head>

<body> 
    <!-- Preloader -->
    <div id="preloader">
        <div id="status">&nbsp;</div>
    </div>
    <!-- TOP NAVBAR -->
    <nav role="navigation" class="navbar navbar-static-top">
        <div class="container-fluid">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button data-target="#bs-example-navbar-collapse-1" data-toggle="collapse" class="navbar-toggle" type="button">
                    <span class="entypo-menu"></span>
                </button>
                <button class="navbar-toggle toggle-menu-mobile toggle-left" type="button">
                    <span class="entypo-list-add"></span>
                </button>

                <div id="mobileLogo" class="visible-xs">
                   <h1>WEB管理<span>v1.2</span></h1>
                </div>

            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div id="bs-example-navbar-collapse-1" class="collapse navbar-collapse">
                <ul class="nav navbar-nav">

                    <li class="dropdown">

                        <a data-toggle="dropdown" class="dropdown-toggle" href="#"><i style="font-size:20px;" class="icon-conversation"></i><div class="noft-red">23</div></a>


                        <ul style="margin: 11px 0 0 9px;" role="menu" class="dropdown-menu dropdown-wrap">
                            <li>
                                <a href="#">
                                    <img alt="" class="img-msg img-circle" src="http://api.randomuser.me/portraits/thumb/men/1.jpg">Jhon Doe <b>Just Now</b>
                                </a>
                            </li>
                            <li class="divider"></li>
                            <li>
                                <a href="#">
                                    <img alt="" class="img-msg img-circle" src="http://api.randomuser.me/portraits/thumb/women/1.jpg">Jeniffer <b>3 Min Ago</b>
                                </a>
                            </li>
                            <li class="divider"></li>
                            <li>
                                <a href="#">
                                    <img alt="" class="img-msg img-circle" src="http://api.randomuser.me/portraits/thumb/men/2.jpg">Dave <b>2 Hours Ago</b>
                                </a>
                            </li>
                            <li class="divider"></li>
                            <li>
                                <a href="#">
                                    <img alt="" class="img-msg img-circle" src="http://api.randomuser.me/portraits/thumb/men/3.jpg"><i>Keanu</i>  <b>1 Day Ago</b>
                                </a>
                            </li>
                            <li class="divider"></li>
                            <li>
                                <a href="#">
                                    <img alt="" class="img-msg img-circle" src="http://api.randomuser.me/portraits/thumb/men/4.jpg"><i>Masashi</i>  <b>2 Mounth Ago</b>
                                </a>
                            </li>
                            <li class="divider"></li>
                            <li>
                                <div>See All Messege</div>
                            </li>
                        </ul>
                    </li>
                    <li>

                        <a data-toggle="dropdown" class="dropdown-toggle" href="#"><i style="font-size:19px;" class="icon-warning tooltitle"></i><div class="noft-green">5</div></a>
                        <ul style="margin: 12px 0 0 0;" role="menu" class="dropdown-menu dropdown-wrap">
                            <li>
                                <a href="#">
                                    <span style="background:#DF2135" class="noft-icon maki-bus"></span><i>From Station</i>  <b>01B</b>
                                </a>
                            </li>
                            <li class="divider"></li>
                            <li>
                                <a href="#">
                                    <span style="background:#AB6DB0" class="noft-icon maki-ferry"></span><i>Departing at</i>  <b>9:00 AM</b>
                                </a>
                            </li>
                            <li class="divider"></li>
                            <li>
                                <a href="#">
                                    <span style="background:#FFA200" class="noft-icon maki-aboveground-rail"></span><i>Delay for</i>  <b>09 Min</b>
                                </a>
                            </li>
                            <li class="divider"></li>
                            <li>
                                <a href="#">
                                    <span style="background:#86C440" class="noft-icon maki-airport"></span><i>Take of</i>  <b>08:30 AM</b>
                                </a>
                            </li>
                            <li class="divider"></li>
                            <li>
                                <a href="#">
                                    <span style="background:#0DB8DF" class="noft-icon maki-bicycle"></span><i>Take of</i>  <b>08:30 AM</b>
                                </a>
                            </li>
                            <li class="divider"></li>
                            <li>
                                <div>See All Notification</div>
                            </li>
                        </ul>
                    </li>
                    <li><a href="#"><i data-toggle="tooltip" data-placement="bottom" title="Help" style="font-size:20px;" class="icon-help tooltitle"></i></a>
                    </li>

                </ul>
                <div id="nt-title-container" class="navbar-left running-text visible-lg">
                    <ul class="date-top">
                        <li class="entypo-calendar" style="margin-right:5px"></li>
                        <li id="Date"></li>


                    </ul>

                    <ul id="digital-clock" class="digital">
                        <li class="entypo-clock" style="margin-right:5px"></li>
                        <li class="hour"></li>
                        <li>:</li>
                        <li class="min"></li>
                        <li>:</li>
                        <li class="sec"></li>
                        <li class="meridiem"></li>
                    </ul>
                    <ul id="nt-title">
                        <li><i class="wi-day-lightning"></i>&#160;&#160;Berlin&#160;
                            <b>85</b><i class="wi-fahrenheit"></i>&#160;; 15km/h
                        </li>
                        <li><i class="wi-day-lightning"></i>&#160;&#160;Yogyakarta&#160;
                            <b>85</b><i class="wi-fahrenheit"></i>&#160;; Tonight- 72 °F (22.2 °C)
                        </li>

                        <li><i class="wi-day-lightning"></i>&#160;&#160;Sttugart&#160;
                            <b>85</b><i class="wi-fahrenheit"></i>&#160;; 15km/h
                        </li>

                        <li><i class="wi-day-lightning"></i>&#160;&#160;Muchen&#160;
                            <b>85</b><i class="wi-fahrenheit"></i>&#160;; 15km/h
                        </li>

                        <li><i class="wi-day-lightning"></i>&#160;&#160;Frankurt&#160;
                            <b>85</b><i class="wi-fahrenheit"></i>&#160;; 15km/h
                        </li>

                    </ul>
                </div>

                <ul style="margin-right:0;" class="nav navbar-nav navbar-right">
                    <li>
                        <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                            <img alt="" class="admin-pic img-circle" src="http://api.randomuser.me/portraits/thumb/men/10.jpg">Hi, Dave Mattew <b class="caret"></b>
                        </a>
                        <ul style="margin-top:14px;" role="menu" class="dropdown-setting dropdown-menu">
                            <li>
                                <a href="#">
                                    <span class="entypo-user"></span>&#160;&#160;My Profile</a>
                            </li>
                            <li>
                                <a href="#">
                                    <span class="entypo-vcard"></span>&#160;&#160;Account Setting</a>
                            </li>
                            <li>
                                <a href="#">
                                    <span class="entypo-lifebuoy"></span>&#160;&#160;Help</a>
                            </li>
                            <li class="divider"></li>
                            <li>
                                <a href="http://themeforest.net/item/apricot-navigation-admin-dashboard-template/7664475?WT.ac=category_item&WT.z_author=themesmile">
                                    <span class="entypo-basket"></span>&#160;&#160; Purchase</a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                            <span class="icon-gear"></span>&#160;&#160;Setting</a>
                        <ul role="menu" class="dropdown-setting dropdown-menu">

                            <li class="theme-bg">
                                <div id="button-bg"></div>
                                <div id="button-bg2"></div>
                                <div id="button-bg3"></div>
                                <div id="button-bg5"></div>
                                <div id="button-bg6"></div>
                                <div id="button-bg7"></div>
                                <div id="button-bg8"></div>
                                <div id="button-bg9"></div>
                                <div id="button-bg10"></div>
                                <div id="button-bg11"></div>
                                <div id="button-bg12"></div>
                                <div id="button-bg13"></div>
                            </li>
                        </ul>
                    </li>
                    <li class="hidden-xs">
                        <a class="toggle-left" href="#">
                            <span style="font-size:20px;" class="entypo-list-add"></span>
                        </a>
                    </li>
                </ul>

            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container-fluid -->
    </nav>

    <!-- /END OF TOP NAVBAR -->



    <!-- LEFT SIDE MENU 左侧边栏 -->
    <div id="left-side-menu">
        <div id="companyLogo">
         <h1>欣客支付<span>v1.0</span></h1>
        </div>
        <%--收起左边框--%>
        <a id="toggle">
            <span class="entypo-menu"></span>
        </a>

        <%--菜单查找--%>
        <div class="dark">
            <form action="#">
                <span>
                    <input type="text" name="search" value="" class="search rounded id_search" placeholder="Search Menu..." autofocus="">
                </span>
            </form>
        </div>

        <div class="search-hover">
            <form id="demo-2">
                <input type="search" placeholder="Search Menu..." class="id_search">
            </form>
        </div>

        <%--显示侧边栏的菜单--%>
        <div class="skin-part">
            <div id="tree-wrap">
                <div class="side-bar">
                    <%--显示配置--%>
                    <c:forEach items="${menuBOList}" var="m">
                        <ul class="topnav menu-left-nest">
                            <li>
                                <a href="#" style="border-left:0px solid!important;" class="title-menu-left">
                                    <span>${m.funcName}</span>
                                    <i data-toggle="tooltip" class="entypo-cog pull-right config-wrap"></i>
                                </a>
                            </li>

                            <c:forEach items="${m.childMenuBOList}" var="sm">
                                <li>
                                    <a class="tooltip-tip ajax-load" href="#" title="Blog App">
                                        <i class="icon-document-edit"></i>
                                        <span>${sm.funcName}</span>
                                    </a>
                                    <ul>
                                        <c:forEach items="${sm.childMenuBOList}" var="tm">
                                            <li>
                                                <a class="tooltip-tip2 ajax-load"
                                                   href="${pageContext.request.contextPath}${tm.funcUrl}"
                                                   title="Blog List"
                                                   data-options="{id:'a${tm.funcId}', faicon:'${tm.funcIcon}'}"><i
                                                        class="entypo-doc-text"></i><span>${tm.funcName}</span></a>
                                            </li>
                                        </c:forEach>
                                    </ul>
                                </li>
                            </c:forEach>
                        </ul>
                    </c:forEach>

                    <%--左侧边栏的dashboard--%>
                    <div class="side-dash">
                        <h3>
                            <span>用户新增</span>
                        </h3>
                        <ul class="side-dashh-list">
                            <li>POS
                                <span>25k<i style="color:#44BBC1;" class="fa fa-arrow-circle-up"></i>
                                </span>
                            </li>
                            <li>51公众号
                                <span>80%<i style="color:#AB6DB0;" class="fa fa-arrow-circle-down"></i>
                                </span>
                            </li>
                            <li>无卡APP
                                <span>13m<i style="color:#19A1F9;" class="fa fa-arrow-circle-up"></i>
                                </span>
                            </li>
                        </ul>
                        <h3>
                            <span>Traffic</span>
                        </h3>
                        <ul class="side-bar-list">
                            <li>Avg. Traffic
                                <div class="linebar">5,7,8,9,3,5,3,8,5</div>
                            </li>
                            <li>Visitors
                                <div class="linebar2">9,7,8,9,5,9,6,8,7</div>
                            </li>
                            <li>Convertion Rate
                                <div class="linebar3">5,7,8,9,3,5,3,8,5</div>
                            </li>
                        </ul>
                        <h3>
                            <span>Visitors</span>
                        </h3>
                        <div id="g1" style="height:180px" class="gauge"></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- END OF 显示侧边栏的菜单 -->


    <!--  右侧标签显示区 -->
    <div class="wrap-fluid">
        <div class="container-fluid paper-wrap bevel tlbr">

            <!-- 右侧标签显示区 -->
            <!--右侧标签显示区 tip -->
            <div class="row">
                <div id="paper-top">
                    <div class="col-lg-3">
                        <h2 class="tittle-content-header">
                            <i class="icon-window"></i> 
                            <span>你好!
                            </span>
                        </h2>
                    </div>

                    <div class="col-lg-7">
                        <div class="devider-vertical visible-lg"></div>
                        <div class="tittle-middle-header">

                            <div class="alert">
                                <button type="button" class="close" data-dismiss="alert">×</button>
                                <span class="tittle-alert entypo-info-circled"></span>
                                Welcome back,&nbsp;
                                <strong>Dave mattew!</strong>&nbsp;&nbsp;Your last sig in at Yesterday, 16:54 PM
                            </div>
                        </div>

                    </div>
                    <div class="col-lg-2">
                        <div class="devider-vertical visible-lg"></div>
                        <div class="btn-group btn-wigdet pull-right visible-lg">
                            <div class="btn">
                                Widget</div>
                            <button data-toggle="dropdown" class="btn dropdown-toggle" type="button">
                                <span class="caret"></span>
                                <span class="sr-only">Toggle Dropdown</span>
                            </button>
                            <ul role="menu" class="dropdown-menu">
                                <li>
                                    <a href="#">
                                        <span class="entypo-plus-circled margin-iconic"></span>Add New</a>
                                </li>
                                <li>
                                    <a href="#">
                                        <span class="entypo-heart margin-iconic"></span>Favorite</a>
                                </li>
                                <li>
                                    <a href="#">
                                        <span class="entypo-cog margin-iconic"></span>Setting</a>
                                </li>
                            </ul>
                        </div>


                    </div>
                </div>
            </div>
            <!--END 右侧标签显示区 tip -->

            <!-- 右侧标签显示区 subject -->
            <ul id="breadcrumb">
                <li>
                    <span class="entypo-home"></span>
                </li>
                <li><i class="fa fa-lg fa-angle-right"></i>
                </li>
                <li><a href="#" title="Sample page 1">Home</a>
                </li>
                <li><i class="fa fa-lg fa-angle-right"></i>
                </li>
                <li><a href="#" title="Sample page 1">Dashboard</a>
                </li>
                <li class="pull-right">
                    <div class="input-group input-widget">

                        <input style="border-radius:15px" type="text" placeholder="Search..." class="form-control">
                    </div>
                </li>
            </ul>
            <!-- END 右侧标签显示区 subject -->

            <!-- 右侧标签显示区 content -->
            <div id="paper-middle">
                <div id="mapContainer"></div>
            </div>

            <!--  DEVICE MANAGER -->
            <div class="content-wrap">
                <div class="row">
                    <div class="col-lg-3">
                        <div class="profit" id="profitClose">
                            <div class="headline ">
                                <h3>
                                    <span>
                                        <i class="maki-ferry"></i>&#160;&#160;Ferry Arrival</span>
                                </h3>
                                <div class="titleClose">
                                    <a href="#profitClose" class="gone">
                                        <span class="entypo-cancel"></span>
                                    </a>
                                </div>
                            </div>

                            <div class="value">
                                <span class="pull-left"><i class="entypo-clock clock-position"></i>
                                </span>
                                <div id="getting-started">
                                    <span>%M</span>

                                    <span>%S</span>
                                </div>


                            </div>

                            <div class="progress-tinny">
                                <div style="width: 50%" class="bar"></div>
                            </div>
                            <div class="profit-line">
                                <i class="fa fa-caret-up fa-lg"></i>&#160;&#160; 50% &#160;From Last Hour</div>
                        </div>
                    </div>
                    <div class="col-lg-3">
                        <div class="revenue" id="revenueClose">
                            <div class="headline ">

                                <h3>
                                    <span>
                                        <i class="maki-aboveground-rail"></i>&#160;&#160;Train Speed</span>
                                </h3>

                                <div class="titleClose">
                                    <a href="#revenueClose" class="gone">
                                        <span class="entypo-cancel"></span>
                                    </a>
                                </div>
                            </div>
                            <div class="value">
                                <span class="pull-left"><i class="entypo-gauge gauge-position"></i>
                                </span>
                                <canvas id="canvas4" width="70" height="70"></canvas>
                                <i class="pull-right">/Km</i>

                            </div>








                            <div class="progress-tinny">
                                <div style="width: 25%" class="bar"></div>
                            </div>
                            <div class="profit-line">
                                <i class="fa fa-caret-down fa-lg"></i>&#160;&#160;Rate : 20 km/Hour</div>
                        </div>
                    </div>
                    <div class="col-lg-3">
                        <div class="order" id="orderClose">
                            <div class="headline ">
                                <h3>
                                    <span>
                                        <i class="maki-airport"></i>&#160;&#160;AIR PORT TRAFFIC</span>
                                </h3>
                                <div class="titleClose">
                                    <a href="#orderClose" class="gone">
                                        <span class="entypo-cancel"></span>
                                    </a>
                                </div>
                            </div>
                            <div class="value">
                                <span><i class="fa fa-plane fa-2x"></i>
                                </span><b id="speed"></b><b>Take Off</b>

                            </div>

                            <div class="progress-tinny">
                                <div style="width: 10%" class="bar"></div>
                            </div>
                            <div class="profit-line">
                                <i class="fa fa-caret-down fa-lg"></i>&#160;&#160;Rate : 20 Plane/Hour</div>
                        </div>
                    </div>
                    <div class="col-lg-3">
                        <div class=" member" id="memberClose">
                            <div class="headline ">
                                <h3>
                                    <span>
                                        <i class="fa fa-truck"></i>
                                        &#160;&#160;CARGO
                                    </span>
                                </h3>
                                <div class="titleClose">
                                    <a href="#memberClose" class="gone">
                                        <span class="entypo-cancel"></span>
                                    </a>
                                </div>
                            </div>
                            <div class="value">
                                <span><i class="maki-warehouse"></i>
                                </span>45<b>Sent</b>

                            </div>
                            <div class="progress-tinny">
                                <div style="width: 50%" class="bar"></div>
                            </div>
                            <div class="profit-line">
                                <span class="entypo-down-circled"></span>&#160;50% From Last Month</div>
                        </div>
                    </div>
                </div>
            </div>
            <!--  / DEVICE MANAGER -->

            <div class="content-wrap">
                <div class="row">
                    <div class="col-lg-8">
                        <div id="siteClose" class="nest">
                            <div class="title-alt">
                                <h6>
                                    <span class="fontawesome-truck"></span>&nbsp;Destination</h6>
                                <div class="titleClose">
                                    <a class="gone" href="#siteClose">
                                        <span class="entypo-cancel"></span>
                                    </a>
                                </div>
                                <div class="titleToggle">
                                    <a class="nav-toggle-alt" href="#site">
                                        <span class="entypo-up-open"></span>
                                    </a>
                                </div>
                            </div>
                            <div id="site" class="body-nest" style="min-height:296px;">
                                <div class="table-responsive">
                                    <table class="table">
                                        <thead>
                                            <tr>
                                                <th></th>
                                                <th></th>
                                                <th></th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td class="armada-devider">
                                                    <div class="armada">
                                                        <span style="background:#65C3DF">
                                                            <span class="maki-bus"></span>&nbsp;&nbsp;Trans Berlin</span>
                                                        <p>
                                                            <span class="entypo-gauge"></span>&nbsp;12 Km/<i>Hours</i>
                                                        </p>
                                                    </div>
                                                </td>
                                                <td class="driver-devider">
                                                    <img class="armada-pic img-circle" alt="" src="http://api.randomuser.me/portraits/thumb/men/14.jpg">
                                                    <h3>Mark Zukenbeirg</h3>
                                                    <br>
                                                    <p>Driver</p>
                                                </td>
                                                <td class="progress-devider">


                                                    <section id="basic">
                                                        <article>

                                                            <div class="number-pb">
                                                                <div class="number-pb-shown"></div>
                                                                <div class="number-pb-num">0</div>
                                                            </div>
                                                        </article>
                                                    </section>
                                                    <span class="label pull-left">Berlin</span>
                                                    <span class="label pull-right">Muchen</span>

                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="armada-devider">
                                                    <div class="armada">
                                                        <span style="background:#45B6B0">
                                                            <span class="fontawesome-plane"></span>&nbsp;&nbsp;Fly Airlines</span>
                                                        <p>
                                                            <span class="entypo-gauge"></span>&nbsp;600 Km/<i>Hours</i>
                                                        </p>
                                                    </div>
                                                </td>
                                                <td class="driver-devider">
                                                    <img class="armada-pic img-circle" alt="" src="http://api.randomuser.me/portraits/thumb/men/38.jpg">
                                                    <h3>Marko Freytag</h3>
                                                    <br>
                                                    <p>Pilot</p>
                                                </td>
                                                <td class="progress-devider">


                                                    <section id="percentage">
                                                        <article>
                                                            <div class="number-pb">
                                                                <div class="number-pb-shown dream"></div>
                                                                <div class="number-pb-num">0%</div>
                                                            </div>
                                                        </article>
                                                    </section>


                                                    <span class="label pull-left">Berlin</span>
                                                    <span class="label pull-right">London</span>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="armada-devider">
                                                    <div class="armada">
                                                        <span style="background:#FF6B6B">
                                                            <span class="maki-aboveground-rail"></span>&nbsp;&nbsp;Fazttrain</span>
                                                        <p>
                                                            <span class="entypo-gauge"></span>&nbsp;40 Km/<i>Hours</i>
                                                        </p>
                                                    </div>
                                                </td>
                                                <td class="driver-devider">
                                                    <img class="armada-pic img-circle" alt="" src="http://api.randomuser.me/portraits/thumb/men/39.jpg">
                                                    <h3>Dieter Gruenewald</h3>
                                                    <br>
                                                    <p>machinist</p>
                                                </td>
                                                <td class="progress-devider">

                                                    <section id="step">
                                                        <article>

                                                            <div class="number-pb">
                                                                <div class="number-pb-shown sun"></div>
                                                                <div class="number-pb-num">0/0</div>
                                                            </div>
                                                        </article>
                                                    </section>

                                                    <span class="label pull-left">Berlin</span>
                                                    <span class="label pull-right">Dortmund</span>
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4">
                        <div id="RealTimeClose" class="nest">
                            <div class="title-alt">
                                <h6>
                                    <span class="fontawesome-resize-horizontal"></span>&nbsp;Direction</h6>
                                <div class="titleClose">
                                    <a class="gone" href="#RealTimeClose">
                                        <span class="entypo-cancel"></span>
                                    </a>
                                </div>
                                <div class="titleToggle">
                                    <a class="nav-toggle-alt" href="#RealTime">
                                        <span class="entypo-up-open"></span>
                                    </a>
                                </div>
                            </div>
                            <div id="RealTime" style="min-height:296px;padding-top:20px;" class="body-nest">
                                <ul class="direction">
                                    <li>
                                        <span class="direction-icon maki-fuel" style="background:#FF6B6B"></span>
                                        <h3>
                                            <span>Gas Station</span>
                                        </h3>
                                        <p>5 Km Foward&nbsp;&nbsp;<i class="fa fa-arrow-circle-up"></i>
                                        </p>
                                        <p><i>Estimated time </i>:&nbsp;<i class="fa fa-clock-o"></i>&nbsp;&nbsp;20 Min</p>
                                    </li>
                                    <li class="divider"></li>
                                    <li>
                                        <span class="direction-icon maki-fast-food" style="background:#65C3DF"></span>
                                        <h3>
                                            <span>Restourant</span>
                                        </h3>
                                        <p>1 Km Turn Left&nbsp;&nbsp;<i class="fa fa-reply"></i>
                                        </p>
                                        <p><i>Estimated time </i>:&nbsp;<i class="fa fa-clock-o"></i>&nbsp;&nbsp;20 Min</p>
                                    </li>
                                    <li class="divider"></li>
                                    <li>
                                        <span class="direction-icon maki-giraffe" style="background:#45B6B0"></span>
                                        <h3>
                                            <span>Zoo</span>
                                        </h3>
                                        <p>3 Km Turn Right &nbsp;&nbsp;<i class="fa fa-share"></i>
                                        </p>
                                        <p><i>Estimated time </i>:&nbsp;<i class="fa fa-clock-o"></i>&nbsp;&nbsp;20 Min</p>
                                    </li>
                                    <li class="divider"></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="content-wrap">
                <div class="row">
                    <div class="col-lg-6">
                        <div class="chart-wrap">
                            <div class="chart-dash">
                                <!-- <div id="sparkline"></div> -->
                                <div id="placeholder" style="width:100%;height:200px;"></div>
                            </div>
                            <div class="row">
                                <div class="col-lg-8">
                                    <div class="speed">
                                        <h2>Speed Avarage</h2>
                                        <h1>74
                                            <span>Km / hours</span>
                                        </h1>
                                    </div>
                                </div>
                                <div class="col-lg-4">
                                    <div class="traffic">
                                        <h2>Traffic per day</h2>
                                        <h1>2.5874</h1>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-lg-4">
                                    <div class="traffic-rates">
                                        <h4>Traffic Rates</h4>
                                        <h1>76 %
                                            <span>-1,2 %</span>
                                        </h1>
                                    </div>
                                </div>
                                <div class="col-lg-4">
                                    <div class="traffic-rates">
                                        <h4>Traffic Rates</h4>
                                        <h1>25 %
                                            <span>-1,8 %</span>
                                        </h1>
                                    </div>
                                </div>
                                <div class="col-lg-4">
                                    <div class="traffic-rates">
                                        <h4>Traffic Rates</h4>
                                        <h1>83 %
                                            <span>-1,9 %</span>
                                        </h1>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <div class="weather-wrap">
                            <div class="row">
                                <div class="col-lg-12">
                                    <div class="temperature"><b>Monday</b>, 07:30 AM
                                        <span>F</span>
                                        <span><b>C</b>
                                        </span>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-lg-4">
                                    <div class="weather-icon">
                                        <i class="wi-day-lightning"></i>
                                    </div>
                                </div>
                                <div class="col-lg-8">
                                    <div class="weather-text">
                                        <h2>Berlin
                                            <br><i>Day Lightning</i>
                                        </h2>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-lg-12">
                                    <div class="weather-text">
                                        <h3><i class="wi-thermometer"></i>18<i class="wi-celcius"></i>
                                        </h3>
                                    </div>
                                </div>
                            </div>
                            <div class="weather-dash">
                                <div class="row">
                                    <div class="col-lg-2">
                                        <div class="daily-weather">
                                            <h2>Mon</h2>
                                            <h3>85
                                                <span><i class="wi-fahrenheit"></i>
                                                </span>
                                            </h3>
                                            <h4>
                                                <span><i class="wi-day-lightning"></i>
                                                </span>
                                            </h4>
                                            <h5>15
                                                <i>km/h</i>
                                            </h5>
                                        </div>
                                    </div>
                                    <div class="col-lg-2">
                                        <div class="daily-weather">
                                            <h2>Tue</h2>
                                            <h3>81
                                                <span><i class="wi-fahrenheit"></i>
                                                </span>
                                            </h3>
                                            <h4><i class="wi-day-cloudy"></i>
                                            </h4>
                                            <h5>12
                                                <i>km/h</i>
                                            </h5>
                                        </div>
                                    </div>
                                    <div class="col-lg-2">
                                        <div class="daily-weather">
                                            <h2>Wed</h2>
                                            <h3>83
                                                <span><i class="wi-fahrenheit"></i>
                                                </span>
                                            </h3>
                                            <h4><i class="wi-rain-mix"></i>
                                            </h4>
                                            <h5>14
                                                <i>km/h</i>
                                            </h5>
                                        </div>
                                    </div>
                                    <div class="col-lg-2">
                                        <div class="daily-weather">
                                            <h2>Thu</h2>
                                            <h3>80
                                                <span><i class="wi-fahrenheit"></i>
                                                </span>
                                            </h3>
                                            <h4><i class="wi-day-sunny"></i>
                                            </h4>
                                            <h5>15
                                                <i>km/h</i>
                                            </h5>
                                        </div>
                                    </div>
                                    <div class="col-lg-2">
                                        <div class="daily-weather">
                                            <h2>Fri</h2>
                                            <h3>79
                                                <span><i class="wi-fahrenheit"></i>
                                                </span>
                                            </h3>
                                            <h4><i class="wi-day-storm-showers"></i>
                                            </h4>
                                            <h5>11
                                                <i>km/h</i>
                                            </h5>
                                        </div>
                                    </div>
                                    <div class="col-lg-2">
                                        <div class="daily-weather">
                                            <h2>Sat</h2>
                                            <h3>82
                                                <span><i class="wi-fahrenheit"></i>
                                                </span>
                                            </h3>
                                            <h4><i class="wi-cloudy"></i>
                                            </h4>
                                            <h5>10
                                                <i>km/h</i>
                                            </h5>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- /END OF CONTENT -->



                <!-- FOOTER -->
                <div class="footer-space"></div>
                <div id="footer">
                    <div class="devider-footer-left"></div>
                    <div class="time">
                        <p id="spanDate">
                        <p id="clock">
                    </div>
                    <div class="copyright">Make with Love
                        <span class="entypo-heart"></span><a href="http://xk-mall.com" title="欣客商务" target="_blank">欣客商务</a> All Rights Reserved</div>
                    <div class="devider-footer"></div>


                </div>
                <!-- / END OF FOOTER -->


            </div>
        </div>
    </div>
    <!--  END OF PAPER WRAP -->

    <!-- 屏幕右侧菜单 -->
    <div class="sb-slidebar sb-right">
        <div class="right-wrapper">
            <div class="row">
                <h3>
                    <span><i class="entypo-gauge"></i>&nbsp;&nbsp;MAIN WIDGET</span>
                </h3>
                <div class="col-lg-12">

                    <div class="widget-knob">
                        <span class="chart" style="position:relative" data-percent="86">
                            <span class="percent"></span>
                        </span>
                    </div>
                    <div class="widget-def">
                        <b>Distance traveled</b>
                        <br>
                        <i>86% to the check point</i>
                    </div>

                    <div class="widget-knob">
                        <span class="speed-car" style="position:relative" data-percent="60">
                            <span class="percent2"></span>
                        </span>
                    </div>
                    <div class="widget-def">
                        <b>The average speed</b>
                        <br>
                        <i>30KM/h avarage speed</i>
                    </div>


                    <div class="widget-knob">
                        <span class="overall" style="position:relative" data-percent="25">
                            <span class="percent3"></span>
                        </span>
                    </div>
                    <div class="widget-def">
                        <b>Overall result</b>
                        <br>
                        <i>30KM/h avarage Result</i>
                    </div>
                </div>
            </div>
        </div>

        <div style="margin-top:0;" class="right-wrapper">
            <div class="row">
                <h3>
                    <span><i class="entypo-chat"></i>&nbsp;&nbsp;CHAT</span>
                </h3>
                <div class="col-lg-12">
                    <span class="label label-warning label-chat">Online</span>
                    <ul class="chat">
                        <li>
                            <a href="#">
                                <span>
                                    <img alt="" class="img-chat img-circle" src="http://api.randomuser.me/portraits/thumb/men/20.jpg">
                                </span><b>Dave Junior</b>
                                <br><i>Last seen : 08:00 PM</i>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <span>
                                    <img alt="" class="img-chat img-circle" src="http://api.randomuser.me/portraits/thumb/men/21.jpg">
                                </span><b>Kenneth Lucas</b>
                                <br><i>Last seen : 07:21 PM</i>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <span>
                                    <img alt="" class="img-chat img-circle" src="http://api.randomuser.me/portraits/thumb/men/22.jpg">
                                </span><b>Heidi Perez</b>
                                <br><i>Last seen : 05:43 PM</i>
                            </a>
                        </li>


                    </ul>

                    <span class="label label-chat">Offline</span>
                    <ul class="chat">
                        <li>
                            <a href="#">
                                <span>
                                    <img alt="" class="img-chat img-offline img-circle" src="http://api.randomuser.me/portraits/thumb/men/23.jpg">
                                </span><b>Dave Junior</b>
                                <br><i>Last seen : 08:00 PM</i>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <span>
                                    <img alt="" class="img-chat img-offline img-circle" src="http://api.randomuser.me/portraits/thumb/women/24.jpg">
                                </span><b>Kenneth Lucas</b>
                                <br><i>Last seen : 07:21 PM</i>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <span>
                                    <img alt="" class="img-chat img-offline img-circle" src="http://api.randomuser.me/portraits/thumb/men/25.jpg">
                                </span><b>Heidi Perez</b>
                                <br><i>Last seen : 05:43 PM</i>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <span>
                                    <img alt="" class="img-chat img-offline img-circle" src="http://api.randomuser.me/portraits/thumb/women/25.jpg">
                                </span><b>Kenneth Lucas</b>
                                <br><i>Last seen : 07:21 PM</i>
                            </a>
                        </li>
                        <li>
                            <a href="#">
                                <span>
                                    <img alt="" class="img-chat img-offline img-circle" src="http://api.randomuser.me/portraits/thumb/men/26.jpg">
                                </span><b>Heidi Perez</b>
                                <br><i>Last seen : 05:43 PM</i>
                            </a>
                        </li>

                    </ul>
                </div>
            </div>
        </div>
    </div>
    <!-- END - 屏幕右侧菜单-->
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/assets/js/jquery.js"></script>
    <script src="${pageContext.request.contextPath}/resources/assets/js/progress-bar/src/jquery.velocity.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/assets/js/progress-bar/number-pb.js"></script>
    <script src="${pageContext.request.contextPath}/resources/assets/js/progress-bar/progress-app.js"></script>


    <!-- MAIN EFFECT -->
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/assets/js/preloader.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/assets/js/bootstrap.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/assets/js/app.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/assets/js/load.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/assets/js/main.js"></script>

    <!-- GAGE -->
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/assets/js/chart/jquery.flot.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/assets/js/chart/jquery.flot.resize.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/assets/js/chart/realTime.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/assets/js/speed/canvasgauge-coustom.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/assets/js/countdown/jquery.countdown.js"></script>

    <script src="${pageContext.request.contextPath}/resources/assets/js/jhere-custom.js"></script>

    <script>
        var gauge4 = new Gauge("canvas4", {
            'mode': 'needle',
            'range': {
                'min': 0,
                'max': 90
            }
        });
        gauge4.draw(Math.floor(Math.random() * 90));
        var run = setInterval(function () {
            gauge4.draw(Math.floor(Math.random() * 90));
        }, 3500);
    </script>


    <script type="text/javascript">
    /* Javascript
     *
     * See http://jhere.net/docs.html for full documentation
     */
    $(window).on('load', function() {
        $('#mapContainer').jHERE({
            center: [52.500556, 13.398889],
            type: 'smart',
            zoom: 10
        }).jHERE('marker', [52.500556, 13.338889], {
            icon: '${pageContext.request.contextPath}/resources/assets/img/marker.png',
            anchor: {
                x: 12,
                y: 32
            },
            click: function() {
                alert('Hallo from Berlin!');
            }
        })
            .jHERE('route', [52.711, 13.011], [52.514, 13.453], {
                color: '#FFA200',
                marker: {
                    fill: '#86c440',
                    text: '#'
                }
            });
    });
    </script>
    <script type="text/javascript">
    var output, started, duration, desired;

    // Constants
    duration = 5000;
    desired = '50';

    // Initial setup
    output = $('#speed');
    started = new Date().getTime();

    // Animate!
    animationTimer = setInterval(function() {
        // If the value is what we want, stop animating
        // or if the duration has been exceeded, stop animating
        if (output.text().trim() === desired || new Date().getTime() - started > duration) {
            console.log('animating');
            // Generate a random string to use for the next animation step
            output.text('' + Math.floor(Math.random() * 60)

            );

        } else {
            console.log('animating');
            // Generate a random string to use for the next animation step
            output.text('' + Math.floor(Math.random() * 120)

            );
        }
    }, 5000);
    </script>
    <script type="text/javascript">
    $('#getting-started').countdown('2015/01/01', function(event) {
        $(this).html(event.strftime(

            '<span>%M</span>' + '<span class="start-min">:</span>' + '<span class="start-min">%S</span>'));
    });
    </script>

<div style="text-align:center;">
<p><a href="www.xk-mall.com" target="_blank" title="欣客电子商户">欣客电子商户</a></p>
</div>
</body>

</html>
