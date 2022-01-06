<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/taglib.jsp" %>

<%
   if(com.icia.web.util.CookieUtil.getCookie(request, (String)request.getAttribute("AUTH_COOKIE_NAME")) != null)
   {
%>
<script>
function openPop(){
   var popup = window.open("/board/Coupon", 'pop', 'width=1000px,height=600px,scrollbars=yes');
}
</script>
   <c:set var = "name" value="${param.userName }" />

    <!-- ***** 맨뒤 HEader ***** -->
    <div class="pre-header">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 col-sm-6">
                    <span><span>♥</span>Welcome Wellding! &nbsp;&nbsp;<span>♥</span>웰딩에 오신 ${name }님 환영합니다!</span>
                </div>
                <div class="col-lg-6 col-sm-6">
                    <div class="text-button ourperson">

                        <a href="/user/myPage">마이페이지</a>
                        <a href="/loginOut">로그아웃</a>
                        <a href="javascript:void(0)" target="_blank" onclick="openPop()">내 쿠폰</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
<%
   }
   else
   {
%>
    <!-- ***** 맨뒤 HEader ***** -->

    <div class="pre-header">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 col-sm-6">
                    <span><span>♥</span>Welcome Wellding! &nbsp;&nbsp;<span>♥</span>웰딩에 오신 여러분 환영합니다!</span>
                </div>
                <div class="col-lg-6 col-sm-6">
                    <div class="text-button ourperson">

                        <a href="/board/regform">회원가입</a>
                        <a href="/board/login">로그인</a>

                    </div>
                </div>
            </div>
        </div>
    </div>

<%
   }
%>

    <!-- ***** 보현수정 Header Area Start ***** -->
    <header class="header-area header-sticky">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <nav class="main-nav">
                        <!-- ***** Logo Start ***** -->
                        <h1 class="logo">
                            <a href="/"><img class="imgNav" src="/resources/images/icons/theWellding2.png" width="auto" height="40px"></a>
                        </h1>
                        <!-- ***** Logo End ***** -->
                        <!-- ***** Menu Start ***** -->
                        <ul class="nav">
                            <li class="sub1"><a class="suba" href="/">Home</a></li> <!-- 보현수정: class="active"뺌 -->
                            <li class="sub1"><a class="suba" href="/about">About</a></li>
                            <li class="sub1"><a class="suba" href="/hsdm/halllist">Wedding Hall</a></li>
                            <li class="sub1">
                                <a class="suba" href="#">Wedding Collection</a>
                                <ul>
                                    <li class="subul"><a href="/hsdm/studio" class="sub">Studio</a></li>
                                    <li class="subul"><a href="/hsdm/dress" class="sub">Dress</a></li>
                                    <li class="subul"><a href="/hsdm/makeUp" class="sub">MakeUp</a></li>
                                </ul>
                            </li>
                            <li class="sub1">
                                <a class="suba" href="#">What's New</a>
                                <ul>

                                    <li class="subul"><a href="/board/eBoard" class="sub">Event</a></li>
                                    <li class="subul"><a href="/board/nBoard" class="sub">Notice</a></li>
                                </ul>
                            </li> 
                            <li class="sub1">
                                <a class="suba" href="#">Community</a>
                                <ul>
                                    <li class="subul"><a href="/board/reviews" class="sub">Reviews</a></li>
                                    <li class="subul"><a href="/board/fBoard" class="sub">노하우공유</a></li>
                                    <li class="subul"><a href="/board/specialist" class="sub">전문가 매칭</a></li>
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