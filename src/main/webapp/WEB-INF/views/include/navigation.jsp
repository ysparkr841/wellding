<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/taglib.jsp" %>

    <!-- ***** 맨뒤 HEader ***** -->
    <div class="pre-header">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 col-sm-6">
                    <span><span>♥</span>Welcome Wellding! &nbsp;&nbsp;<span>♥</span>웰딩에 오신 여러분 환영합니다!</span>
                </div>
                <div class="col-lg-6 col-sm-6">
                    <div class="text-button ourperson">

                        <a>회원가입</a>
                        <a href="/board/login">로그인</a>

                    </div>
                </div>
            </div>
        </div>
    </div>
    
    <!-- ***** 보현수정 Header Area Start ***** -->
    <header class="header-area header-sticky">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <nav class="main-nav">
                        <!-- ***** Logo Start ***** -->
                        <h1 class="logo">
                            <a href="#"><img src="/resources/images/logob.png" width="auto" height="40px"></a>
                        </h1>
                        <!-- ***** Logo End ***** -->
                        <!-- ***** Menu Start ***** -->
                        <ul class="nav">
                            <li class="sub1"><a class="suba" href="index.html">Home</a></li> <!-- 보현수정: class="active"뺌 -->
                            <li class="sub1"><a class="suba" href="about.html">About</a></li>
                            <li class="sub1"><a class="suba" href="#">Wedding Hall</a></li>
                            <li class="sub1">
                                <a class="suba" href="#">Wedding Collection</a>
                                <ul>
                                    <li class="subul"><a href="/hsdm/studio" class="sub">Studio</a></li>
                                    <li class="subul"><a href="rent-venue.html" class="sub">MakeUp</a></li>
                                    <li class="subul"><a href="rent-venue.html" class="sub">Dress</a></li>
                                </ul>
                            </li>
                            <li class="sub1">
                                <a class="suba" href="#">What's New</a>
                                <ul>
                                    <li class="subul"><a href="shows-events.html" class="sub">Event</a></li>
                                    <li class="subul"><a href="/board/nBoard" class="sub">Notice</a></li>
                                </ul>
                            </li> 
                            <li class="sub1">
                                <a class="suba" href="#">Community</a>
                                <ul>
                                    <li class="subul"><a href="/board/fBoard" class="sub">Reviews</a></li>
                                    <li class="subul"><a href="tickets.html" class="sub">노하우공유</a></li>
                                    <li class="subul"><a href="tickets.html" class="sub">전문가 매칭</a></li>
                                </ul>
                            </li> 
                        </ul>        
                        <a class='menu-trigger'>
                            <span>Menu</span>
                        </a>
                        <!-- ***** Menu End ***** -->
                    </nav>
                </div>
            </div>
        </div>
    </header>
    <!-- ***** Header Area End ***** -->