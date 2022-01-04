 <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/taglib.jsp" %>
<!DOCTYPE html>
<html>
    <head>
       <%@ include file="/WEB-INF/views/include/head.jsp" %>
       <title>이벤트</title>
<style>
a:hover h1{transform: scale(1.2); transition: all 0.2s linear; color:red;}

.hover_effect_box {
    overflow: hidden;
    position: relative;
    text-align: center;
    -webkit-box-shadow: 1px 1px 2px #e6e6e6;
    -moz-box-shadow: 1px 1px 2px #e6e6e6;
    box-shadow: 1px 1px 2px #e6e6e6;
    cursor: default;
    background: #fff;
    box-sizing: initial;
 }
 .hover_effect_box * {
    box-sizing: initial;
 }

 .hover_effect_box .caption
 , .hover_effect_box .mask  {
 
    position: absolute;
    overflow: hidden;
    top: 0;
    left: 0;
 }
 .hover_effect_box .content_bg {
    display: block;
    position: relative;
 }
 .hover_effect_box .caption_title {
    text-transform: uppercase;
    color: #fff;
    text-align: center;
    position: relative;
    font-size: 28px;
    padding: 10px;
    background: rgba(0, 0, 0, 0.8);
    margin: 20px 0 0 0;
 }
 .hover_effect_box .caption_desc {
    font-size: 0.9em;
    line-height: 1.5;
    position: relative;
    color: #fff;
    padding: 30px 20px 40px;
    text-align: center;
    font-size: 20px;
 }
 .hover_effect_box .caption_link {
    display: inline-block;
    text-decoration: none;
    padding: 7px 14px;
    background: #000;
    color: #fff;
    text-transform: uppercase;
    -webkit-box-shadow: 0 0 1px #000;
    -moz-box-shadow: 0 0 1px #000;
    box-shadow: 0 0 1px #000;
 }
 .hover_effect_box .caption_link:hover {
    -webkit-box-shadow: 0 0 5px #000;
    -moz-box-shadow: 0 0 5px #000;
    box-shadow: 0 0 5px #000;
 }
 
 .hover_effect_1 .content_bg {
    -webkit-transition: all 0.2s linear;
    -moz-transition: all 0.2s linear;
    -o-transition: all 0.2s linear;
    -ms-transition: all 0.2s linear;
    transition: all 0.2s linear;
 }
.hover_effect_3 .content_bg {
    -webkit-transition: all 0.4s ease-in-out 0.5s;
    -moz-transition: all 0.4s ease-in-out 0.5s;
    -o-transition: all 0.4s ease-in-out 0.5s;
    -ms-transition: all 0.4s ease-in-out 0.5s;
    transition: all 0.4s ease-in-out 0.5s;
 }
 .hover_effect_3 .caption {
    background-color: rgba(146,96,91,0.5);
    -ms-filter: "progid: DXImageTransform.Microsoft.Alpha(Opacity=0)";
    filter: alpha(opacity=0);
    opacity: 0;
    -webkit-transition: all 0.3s ease-in 0.4s;
    -moz-transition: all 0.3s ease-in 0.4s;
    -o-transition: all 0.3s ease-in 0.4s;
    -ms-transition: all 0.3s ease-in 0.4s;
    transition: all 0.3s ease-in 0.4s;
 }
 .hover_effect_3 .caption_title {
    -ms-filter: "progid: DXImageTransform.Microsoft.Alpha(Opacity=0)";
    filter: alpha(opacity=0);
    opacity: 0;
    border-bottom: 1px solid rgba(0, 0, 0, 0.3);
    background: transparent;
    margin: 20px 40px 0px 40px;
    -webkit-transform: scale(10);
    -moz-transform: scale(10);
    -o-transform: scale(10);
    -ms-transform: scale(10);
    transform: scale(10);
    -webkit-transition: all 0.3s ease-in-out 0.1s;
    -moz-transition: all 0.3s ease-in-out 0.1s;
    -o-transition: all 0.3s ease-in-out 0.1s;
    -ms-transition: all 0.3s ease-in-out 0.1s;
    transition: all 0.3s ease-in-out 0.1s;
 }
 .hover_effect_3 .caption_desc {
    -ms-filter: "progid: DXImageTransform.Microsoft.Alpha(Opacity=0)";
    filter: alpha(opacity=0);
    opacity: 0;
    -webkit-transform: scale(10);
    -moz-transform: scale(10);
    -o-transform: scale(10);
    -ms-transform: scale(10);
    transform: scale(10);
    -webkit-transition: all 0.3s ease-in-out 0.2s;
    -moz-transition: all 0.3s ease-in-out 0.2s;
    -o-transition: all 0.3s ease-in-out 0.2s;
    -ms-transition: all 0.3s ease-in-out 0.2s;
    transition: all 0.3s ease-in-out 0.2s;
    padding: 20px 20px 30px;
 }
 .hover_effect_3 .caption_link {
    -ms-filter: "progid: DXImageTransform.Microsoft.Alpha(Opacity=0)";
    filter: alpha(opacity=0);
    opacity: 0;
    -webkit-transform: translateY(100px);
    -moz-transform: translateY(100px);
    -o-transform: translateY(100px);
    -ms-transform: translateY(100px);
    transform: translateY(100px);
    -webkit-transition: all 0.3s ease-in-out 0.1s;
    -moz-transition: all 0.3s ease-in-out 0.1s;
    -o-transition: all 0.3s ease-in-out 0.1s;
    -ms-transition: all 0.3s ease-in-out 0.1s;
    transition: all 0.3s ease-in-out 0.1s;
 }
 .hover_effect_3:hover .caption {
    -ms-filter: "progid: DXImageTransform.Microsoft.Alpha(Opacity=100)";
    filter: alpha(opacity=100);
    opacity: 1;
    -webkit-transition-delay: 0s;
    -moz-transition-delay: 0s;
    -o-transition-delay: 0s;
    -ms-transition-delay: 0s;
    transition-delay: 0s;
 }
 .hover_effect_3:hover .content_bg {
    -webkit-transition-delay: 0s;
    -moz-transition-delay: 0s;
    -o-transition-delay: 0s;
    -ms-transition-delay: 0s;
    transition-delay: 0s;
 }
 .hover_effect_3:hover .caption_title {
    -ms-filter: "progid: DXImageTransform.Microsoft.Alpha(Opacity=100)";
    filter: alpha(opacity=100);
    opacity: 1;
    -webkit-transform: scale(1);
    -moz-transform: scale(1);
    -o-transform: scale(1);
    -ms-transform: scale(1);
    transform: scale(1);
    -webkit-transition-delay: 0.1s;
    -moz-transition-delay: 0.1s;
    -o-transition-delay: 0.1s;
    -ms-transition-delay: 0.1s;
    transition-delay: 0.1s;
 }
 .hover_effect_3:hover .caption_desc {
    -ms-filter: "progid: DXImageTransform.Microsoft.Alpha(Opacity=100)";
    filter: alpha(opacity=100);
    opacity: 1;
    -webkit-transform: scale(1);
    -moz-transform: scale(1);
    -o-transform: scale(1);
    -ms-transform: scale(1);
    transform: scale(1);
    -webkit-transition-delay: 0.2s;
    -moz-transition-delay: 0.2s;
    -o-transition-delay: 0.2s;
    -ms-transition-delay: 0.2s;
    transition-delay: 0.2s;
 }
 .hover_effect_3:hover .caption_link {
    -ms-filter: "progid: DXImageTransform.Microsoft.Alpha(Opacity=100)";
    filter: alpha(opacity=100);
    opacity: 1;
    -webkit-transform: translateY(0px);
    -moz-transform: translateY(0px);
    -o-transform: translateY(0px);
    -ms-transform: translateY(0px);
    transform: translateY(0px);
    -webkit-transition-delay: 0.3s;
    -moz-transition-delay: 0.3s;
    -o-transition-delay: 0.3s;
    -ms-transition-delay: 0.3s;
    transition-delay: 0.3s; 
 }

</style>
<script>   
$(document).ready(function(){
	$("#btnSearch").on("click", function(){
	  fn_search();
   });
	
	/* $("_searchValue").on("keypress", function(e){
		
		if(e.which == 13)
		{	
			fn_search();
		} */
});

function fn_search(){
	
	if($.trim($("#_searchValue").val()).length <= 0)
	{
		alert("조회값을 입력하세요.");
		$("#_searchValue").focus();
		return;
	}
	 document.eBoardForm.eBSeq.value = "" ; 
     document.eBoardForm.searchType.value = $("#_searchType").val();
     document.eBoardForm.searchValue.value = $("#_searchValue").val();
     document.eBoardForm.curPage.value = 1;
     document.eBoardForm.action = "/board/eBoard";
     document.eBoardForm.submit(); 
}

function fn_list(curPage)
{
	document.eBoardForm.eBSeq.value = "";
	document.eBoardForm.curPage.value = curPage;
	document.eBoardForm.action = "/board/eBoard";
	document.eBoardForm.submit();
}

function fn_view(eBSeq)
{
	document.eBoardForm.eBSeq.value = eBSeq;
	document.eBoardForm.action = "/board/eView";
	document.eBoardForm.submit();
}
</script>
<style>@import url('https://fonts.googleapis.com/css2?family=Jua&display=swap');</style>
    </head>
    <body>
       <%@ include file="/WEB-INF/views/include/navigation.jsp" %>

<section class="top">
	<div class="back"></div>
</section>

    <!-- ***** About Us Page ***** -->
    <div class="page-heading-shows-events5">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <h2>Event</h2>
                    <!-- span>Check out upcoming and past shows & events and grab your ticket right now.</span -->
                </div>
            </div>
        </div>
    </div>   

	<div class="tickets-page">
        <div class="container">
            <div class="row">
                <div class="col-lg-12" id="search-box">
                    <div class="search-box">
                        <form id="subscribe" action="" method="get">
                            <div class="row">
                                <div class="col-lg-5">
                                    <div class="search-heading">
                                        <h4>이벤트를 검색합니다</h4>
                                    </div>
                                </div>
                                <div class="col-lg-7">
                                    <div class="row">
                                        <div class="col-lg-3">
                                            <select value="searchType" name="_searchType" id="_searchType">
                                            	<option value="">조회 항목</option>
                                                <option value="1" <c:if test="${searchType eq '1'}">selected</c:if>>제목</option>
                                                <option value="2" <c:if test="${searchType eq '2'}">selected</c:if>>내용</option>
                                            </select>
                                        </div>
                                        <div class="col-lg-6">
                                            <input type="text" name="_searchValue" id="_searchValue" value="${searchValue}" maxlength="25" class="svalue" placeholder="조회값을 입력하세요." />
                                        </div>
                                        <div class="col-lg-3">
                                            <fieldset>
                                            <button type="button" id="btnSearch" class="main-dark-button">Submit</button>
                                            </fieldset>
                                        </div>
                                        
                                    </div>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
                <div class="col-lg-12">
                    <div class="heading">
                        <h2><!-- Event --></h2>
                    </div>
                </div>
 				
					<div class="col-lg-12">
                          <div class="row">
                          	<c:forEach var="eboard" items="${eBoard}" varStatus="status">
	                              <div class="col-lg-12 p-3">
	                                  <div class="event-item">
	                                      <div class="row">
	                                          <div class="col-lg-4" id="eback">
	                                              <div class="left-content">
	                                              		<a href="javascript:void(0)" onclick="fn_view(${wdEBoard.eBSeq})">
			                                                  <h1 class="display-5 fw-bolder p-3" id="etitle">${eboard.eBTitle}</h1></a>
			                        							
	                                              </div>
	                                          </div>
	                                          <div class="col-lg-8" id="eback2">
	                                              <div class="thumb">
	                                              	<div class="hover_effect_box hover_effect_3">
	                                              		<div class="content_bg">
	                                              		
	                                                  		<img  src="/resources/board/${eboard.eBImgName}" alt="">
	                                                  	</div>
	                                                  	<div class="caption">
	                                                  		<div class="caption_title">${eboard.eBTitle}</div>
	                                                  		<div class="caption_desc">${eboard.eBContent}</div>
	                                                  		<a href="javascript:void(0)" onclick="fn_view(${wdEBoard.eBSeq})" class="caption_link">더 보기</a>
	                                                  	</div>
	                                                </div>
	                                              </div>
	                                          </div>
	                                      </div>
	                                  </div>
	                              </div>
                              </c:forEach>
                          <c:if test="${!empty paging}">    
                              <div class="col-lg-12 p-5">
                                  <div class="pagination">
                                      <ul>
                          		<c:if test="${paging.prevBlockPage gt 0}">             
                                          <li><a href="javascript:void(0)" onclick="fn_list(${paging.prevBlockPage})">Prev</a></li>
                          		</c:if>          
                          		<c:forEach var="i" begin="${paging.startPage}" end="${paging.endPage}">
							       <c:choose>
							          <c:when test="${i ne curPage}">      
                                          <li><a href="javascript:void(0)" onclick="fn_list(${i})">${i}</a></li>
                                      </c:when>
                                      <c:otherwise>
                                          <li class="active"><a href="javascript:void(0)" style="cursor:default;">${i}</a></li>
                                      </c:otherwise>
                                   </c:choose>
                                </c:forEach>   
                                	<c:if test="${paging.nextBlockPage gt 0}">
                                          <li><a href="javascript:void(0)" onclick="fn_list(${paging.nextBlockPage})">next</a></li>
                                    </c:if>  
                                      </ul> 
                                  </div>
                              </div>
                          </c:if>     
                          </div>
                      </div>
                  </div>
<form name="eBoardForm" id="eBoardForm" method="post">
			<input type="hidden" name="eBSeq" value="" />
			<input type="hidden" name="searchType" value="${searchType}" />
			<input type="hidden" name="searchValue" value="${searchValue}" />
			<input type="hidden" name="curPage" value="${curPage}" />
		</form>
    </div>
                      
       <%@ include file="/WEB-INF/views/include/footer.jsp" %>
     </body>                                    
