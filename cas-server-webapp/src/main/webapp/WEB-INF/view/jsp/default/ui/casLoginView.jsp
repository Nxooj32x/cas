<%--

    Licensed to Apereo under one or more contributor license
    agreements. See the NOTICE file distributed with this work
    for additional information regarding copyright ownership.
    Apereo licenses this file to you under the Apache License,
    Version 2.0 (the "License"); you may not use this file
    except in compliance with the License.  You may obtain a
    copy of the License at the following location:

      http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing,
    software distributed under the License is distributed on an
    "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
    KIND, either express or implied.  See the License for the
    specific language governing permissions and limitations
    under the License.

--%>
<!DOCTYPE html>
<%@ page pageEncoding="UTF-8" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->
<!--[if !IE]><!--> <html lang="en"> <!--<![endif]-->
<head>
    <title>Login SSO Website</title>

    <!-- Meta -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <!-- Favicon -->
    <link rel="shortcut icon" href="favicon.ico">

    <!-- Web Fonts -->
    <link rel='stylesheet' type='text/css' href='//fonts.googleapis.com/css?family=Open+Sans:400,300,600&amp;subset=cyrillic,latin'>

    <!-- CSS Global Compulsory -->
    <link rel="stylesheet" href="assets/plugins/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/css/shop.style.css">

    <!-- CSS Header and Footer -->
    <link rel="stylesheet" href="assets/css/headers/header-v5.css">
    <link rel="stylesheet" href="assets/css/footers/footer-v4.css">

    <!-- CSS Implementing Plugins -->
    <link rel="stylesheet" href="assets/plugins/animate.css">
    <link rel="stylesheet" href="assets/plugins/line-icons/line-icons.css">
    <link rel="stylesheet" href="assets/plugins/font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="assets/plugins/scrollbar/css/jquery.mCustomScrollbar.css">

    <!-- CSS Page Style -->
    <link rel="stylesheet" href="assets/css/pages/log-reg-v3.css">

    <style type="text/css">
        .errmsg{
            display: block;
            color: #ee9393;
            padding: 0 1px;
            font-size: 11px;
            margin-top: 6px;
            line-height: 15px;
            font-style: normal;
        }
        .hide{
            display: none;
        }
        .show{
            display: block;
        }
    </style>
</head>

<body class="header-fixed">
<div class="wrapper">
    <!--=== Header v5 ===-->
    <div class="header-v5 header-static">
        <!-- Topbar v3 -->
        <div class="topbar-v3">
            <div class="search-open">
                <div class="container">
                    <input type="text" class="form-control" placeholder="Search">
                    <div class="search-close"><i class="icon-close"></i></div>
                </div>
            </div>

            <div class="container">
                <div class="row">
                    <div class="col-sm-6">
                        <!-- Topbar Navigation -->
                        <ul class="left-topbar">
                            <li>
                                <a>Currency (USD)</a>
                                <ul class="currency">
                                    <li class="active">
                                        <a href="#">USD <i class="fa fa-check"></i></a>
                                    </li>
                                    <li><a href="#">Euro</a></li>
                                    <li><a href="#">Pound</a></li>
                                </ul>
                            </li>
                            <li>
                                <a>Language (EN)</a>
                                <ul class="language">
                                    <li class="active">
                                        <a href="#">English (EN)<i class="fa fa-check"></i></a>
                                    </li>
                                    <li><a href="#">Spanish (SPN)</a></li>
                                    <li><a href="#">Russian (RUS)</a></li>
                                    <li><a href="#">German (GRM)</a></li>
                                </ul>
                            </li>
                        </ul><!--/end left-topbar-->
                    </div>
                    <div class="col-sm-6">
                        <ul class="list-inline right-topbar pull-right">
                            <li><a href="#">Account</a></li>
                            <li><a href="">Wishlist (0)</a></li>
                            <li><a href="">Login</a> | <a href="">Register</a></li>
                            <li><i class="search fa fa-search search-button"></i></li>
                        </ul>
                    </div>
                </div>
            </div><!--/container-->
        </div>
        <!-- End Topbar v3 -->

        <!-- Navbar -->
        <div class="navbar navbar-default mega-menu" role="navigation">
            <div class="container">
                <!-- Brand and toggle get grouped for better mobile display -->
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-responsive-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="">
                        <img id="logo-header" src="assets/img/logo.png" alt="Logo">
                    </a>
                </div>

                <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="collapse navbar-collapse navbar-responsive-collapse">
                    <!-- Nav Menu -->
                    <ul class="nav navbar-nav">
                        <!-- Pages -->
                        <li class="dropdown active">
                            <a href="javascript:void(0);" class="dropdown-toggle" data-hover="dropdown" data-toggle="dropdown">
                                Pages
                            </a>
                        </li>
                        <!-- End Pages -->

                        <!-- Promotion -->
                        <li class="dropdown">
                            <a href="javascript:void(0);" class="dropdown-toggle" data-hover="dropdown" data-toggle="dropdown">
                                Promotion
                            </a>
                        </li>
                        <!-- End Promotion -->

                        <!-- Gifts -->
                        <li class="dropdown mega-menu-fullwidth">
                            <a href="javascript:void(0);" class="dropdown-toggle" data-hover="dropdown" data-toggle="dropdown">
                                Gifts
                            </a>
                        </li>
                        <!-- End Gifts -->

                        <!-- Books -->
                        <li class="dropdown mega-menu-fullwidth">
                            <a href="javascript:void(0);" class="dropdown-toggle" data-hover="dropdown" data-toggle="dropdown">
                                Books
                            </a>
                        </li>
                        <!-- End Books -->

                        <!-- Clothes -->
                        <li class="dropdown">
                            <a href="javascript:void(0);" class="dropdown-toggle" data-hover="dropdown" data-toggle="dropdown" data-delay="1000">
                                Clothes
                            </a>
                        </li>
                        <!-- End Clothes -->

                        <!-- Main Demo -->
                        <li><a href="">Main Demo</a></li>
                        <!-- Main Demo -->
                    </ul>
                    <!-- End Nav Menu -->
                </div>
            </div>
        </div>
        <!-- End Navbar -->
    </div>
    <!--=== End Header v5 ===-->

    <!--=== Breadcrumbs v4 ===-->
    <div class="breadcrumbs-v4">
        <div class="container">
            <span class="page-name">Log In</span>
            <h1>Maecenas <span class="shop-green">enim</span> sapien</h1>
            <ul class="breadcrumb-v4-in">
                <li><a href="">Home</a></li>
                <li><a href="">Product</a></li>
                <li class="active">Log In</li>
            </ul>
        </div><!--/end container-->
    </div>
    <!--=== End Breadcrumbs v4 ===-->

    <!--=== Login ===-->
    <div class="log-reg-v3 content-md">
        <div class="container">
            <div class="row">
                <div class="col-md-7 md-margin-bottom-50">
                    <h2 class="welcome-title">Welcome to Unify</h2>
                    <p>Suspendisse et tincidunt ipsum, et dignissim urna. Vestibulum nisl tortor, gravida at magna et, suscipit vehicula massa.</p><br>
                    <div class="info-block-v2">
                        <i class="icon icon-layers"></i>
                        <div class="info-block-in">
                            <h3>Pellentesque vulputate</h3>
                            <p>Vestibulum non ex volutpat, sodales diam sit amet, semper nunc. Integer sed nibh commodo, tincidunt nisi.</p>
                        </div>
                    </div>
                    <div class="info-block-v2">
                        <i class="icon icon-settings"></i>
                        <div class="info-block-in">
                            <h3>Curabitur tincidunt</h3>
                            <p>Vestibulum non ex volutpat, sodales diam sit amet, semper nunc. Integer sed nibh commodo, tincidunt nisi.</p>
                        </div>
                    </div>
                    <div class="info-block-v2">
                        <i class="icon icon-paper-plane"></i>
                        <div class="info-block-in">
                            <h3>Aenean condimentum</h3>
                            <p>Vestibulum non ex volutpat, sodales diam sit amet, semper nunc. Integer sed nibh commodo, tincidunt nisi.</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-5">
                    <form:form method="post" id="fm1" class="log-reg-block sky-form" commandName="${commandName}" htmlEscape="true">
                        <h2>Log in to your account</h2>
                        <form:errors path="*" id="msg" cssClass="errmsg" element="div" htmlEscape="false" />
                        <section>
                            <label class="input login-input">
                                <div class="input-group">
                                    <span class="input-group-addon"><i class="fa fa-user"></i></span>
                                    <c:choose>
                                        <c:when test="${not empty sessionScope.openIdLocalId}">
                                            <strong><c:out value="${sessionScope.openIdLocalId}" /></strong>
                                            <input type="hidden" class="form-control" id="username" name="username" value="<c:out value="${sessionScope.openIdLocalId}" />" />
                                        </c:when>
                                        <c:otherwise>
                                            <spring:message code="screen.welcome.label.netid.accesskey" var="userNameAccessKey" />
                                            <form:input  placeholder="Enter UserName" class="form-control" cssErrorClass="form-control" size="25" tabindex="1" accesskey="${userNameAccessKey}" path="username" autocomplete="off" htmlEscape="true" />
                                        </c:otherwise>
                                    </c:choose>
                                </div>
                                <form:errors path="username" id="usernamemsg" cssClass="errmsg" element="div" htmlEscape="false" />
                            </label>
                        </section>

                        <section>
                            <label class="input login-input no-border-top">
                                <div class="input-group">
                                    <span class="input-group-addon"><i class="fa fa-lock"></i></span>
                                    <spring:message code="screen.welcome.label.password.accesskey" var="passwordAccessKey" />
                                    <form:password class="form-control" placeholder="Password" cssErrorClass="form-control" id="password" size="25" tabindex="2" path="password"  accesskey="${passwordAccessKey}" htmlEscape="true" autocomplete="off" />
                                    <span id="capslock-on" style="display:none;"><p><img src="images/warning.png" valign="top"> <spring:message code="screen.capslock.on" /></p></span>
                                </div>
                                <form:errors path="password" id="passwordmsg" cssClass="errmsg" element="div" htmlEscape="false" />
                            </label>
                        </section>

                        <div class="row margin-bottom-5">
                            <div class="col-xs-6">
                                <label class="checkbox">
                                    <input type="checkbox" name="rememberMe" id="rememberMe" value="true"/>
                                    <i></i>
                                    Remember me
                                </label>
                            </div>
                            <div class="col-xs-6 text-right">
                                <a href="#">Forget your Password?</a>
                            </div>
                        </div>
                        <input type="hidden" name="lt" value="${loginTicket}" />
                        <input type="hidden" name="execution" value="${flowExecutionKey}" />
                        <input type="hidden" name="_eventId" value="submit" />
                        <input class="btn-u btn-u-sea-shop btn-block margin-bottom-20" name="submit" accesskey="l" value="<spring:message code="screen.welcome.button.login" />" tabindex="6" type="submit" />
                        <div class="border-wings">
                            <span>or</span>
                        </div>

                        <div class="row columns-space-removes">
                            <div class="col-lg-6 margin-bottom-10">
                                <button type="button" class="btn-u btn-u-md btn-u-fb btn-block"><i class="fa fa-facebook"></i> Facebook Log In</button>
                            </div>
                            <div class="col-lg-6">
                                <button type="button" class="btn-u btn-u-md btn-u-tw btn-block"><i class="fa fa-twitter"></i> Twitter Log In</button>
                            </div>
                        </div>
                    </form:form>
                    <div class="margin-bottom-20"></div>
                    <p class="text-center">Don't have account yet? Learn more and <a href="">Sign Up</a></p>
                </div>
            </div><!--/end row-->
        </div><!--/end container-->
    </div>
    <!--=== End Login ===-->

    <!--=== Shop Suvbscribe ===-->
    <div class="shop-subscribe">
        <div class="container">
            <div class="row">
                <div class="col-md-8 md-margin-bottom-20">
                    <h2>subscribe to our weekly <strong>newsletter</strong></h2>
                </div>
                <div class="col-md-4">
                    <div class="input-group">
                        <input type="text" class="form-control" placeholder="Email your email...">
                        <span class="input-group-btn">
                            <button class="btn" type="button"><i class="fa fa-envelope-o"></i></button>
                        </span>
                    </div>
                </div>
            </div>
        </div><!--/end container-->
    </div>
    <!--=== End Shop Suvbscribe ===-->

    <!--=== Footer v4 ===-->
    <div class="footer-v4">
        <div class="copyright">
            <div class="container">
                <div class="row">
                    <div class="col-md-6">
                        <p>
                            2014 &copy; Unify. ALL Rights Reserved.
                            <a target="_blank" href="">Htmlstream</a> | <a href="#">Privacy Policy</a> | <a href="#">Terms of Service</a>
                        </p>
                    </div>
                    <div class="col-md-6">
                        <ul class="list-inline sponsors-icons pull-right">
                            <li><a href="#"><i class="fa fa-cc-paypal"></i></a></li>
                            <li><a href="#"><i class="fa fa-cc-visa"></i></a></li>
                            <li><a href="#"><i class="fa fa-cc-mastercard"></i></a></li>
                            <li><a href="#"><i class="fa fa-cc-discover"></i></a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div><!--/copyright-->
    </div>
    <!--=== End Footer v4 ===-->
</div><!--/wrapper-->

<!-- JS Global Compulsory -->
<script src="assets/plugins/jquery/jquery.min.js"></script>
<script src="assets/plugins/jquery/jquery-migrate.min.js"></script>
<script src="assets/plugins/bootstrap/js/bootstrap.min.js"></script>
<!-- JS Implementing Plugins -->
<script src="assets/plugins/back-to-top.js"></script>
<script src="assets/plugins/smoothScroll.js"></script>
<script src="assets/plugins/scrollbar/js/jquery.mCustomScrollbar.concat.min.js"></script>
<script src="assets/plugins/sky-forms-pro/skyforms/js/jquery.form.min.js"></script>
<script src="assets/plugins/sky-forms-pro/skyforms/js/jquery.validate.min.js"></script>

<!-- JS Page Level -->
<script src="assets/js/shop.app.js"></script>
<script src="assets/js/forms/page_contact_form.js"></script>
<script>
    jQuery(document).ready(function() {
        var username = $("#usernamemsg");
        var password = $("#passwordmsg");

        var msg = $("#msg");
        $("#msg").addClass('hide');
        if(username.length == 0 && password.length == 0 ){
            $("#msg").addClass('show');
        }
    });
</script>
<!--[if lt IE 9]>
<script src="assets/plugins/respond.js"></script>
<script src="assets/plugins/html5shiv.js"></script>
<script src="assets/js/plugins/placeholder-IE-fixes.js"></script>
<script src="assets/plugins/sky-forms-pro/skyforms/js/sky-forms-ie8.js"></script>
<![endif]-->
<!--[if lt IE 10]>
<script src="assets/plugins/sky-forms-pro/skyforms/js/jquery.placeholder.min.js"></script>
<![endif]-->

</body>
</html>