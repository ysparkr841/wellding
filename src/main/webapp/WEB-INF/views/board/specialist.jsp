<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/taglib.jsp" %>

<!DOCTYPE html>
<html>
<head>
	<%@ include file="/WEB-INF/views/include/head.jsp" %>
<script>
$(document).ready(function(){
	//모달 스크립트
   $(".gosu_modal").colorbox({
	      iframe:true, 
	      innerWidth:1235,
	      innerHeight:700,
	      scrolling:false,
	      onComplete:function()
	      {
	         $("#colorbox").css("width", "1235px");
	         $("#colorbox").css("height", "700px");
	         $("#colorbox").css("border-radius", "10px");
	         
	         $('html').css("overflow","hidden");
	      } , 
   		  onClosed: function()
		 {
			$('html').css("overflow","auto");
		 }
	});
	
   $('html').css("overflow","auto");
	
});


function fn_list(curPage)
{
   document.bbsForm.dNo.value = "";
   document.bbsForm.curPage.value = curPage;
   document.bbsForm.action = "/board/specialist";
   document.bbsForm.submit();
}
</script>
</head>
<body>
    <jsp:include page="/WEB-INF/views/include/navigation.jsp" >
    <jsp:param name="userName" value="${wdUser.userNickname}" />
    </jsp:include>
<!-- ***** 내용시작 ***** -->
	<!-- 상단이미지 -->
    <div class="page-heading-rent-venue2">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                </div>
            </div>
        </div>
    </div>
    
	<!-- 전문가목록 시작 -->
     <div class="tickets-page backgroundd">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="heading">
                        <h2 class="h22">전문가 매칭</h2>
                    </div>
                </div>
                
                <!-- 검색창 -->
                <div class="col-lg-12">
                    <div class="search-box">
                        <form id="subscribe" action="" method="get">
                            <div class="row">
                                <div class="col-lg-5">
                                    <div class="search-heading">
                                        <h4>찾고싶은 플래너가 있으신가요?</h4>
                                    </div>
                                </div>
                                <div class="col-lg-7">
                                    <div class="row">
                                        <div class="col-lg-3">
                                            <select value="searchType" name="_searchType" id="_searchType">
                                            	<option value="">조회 항목</option>
                                                <option value="1" <c:if test="${searchType eq '1'}">selected</c:if>>플래너명</option>
                                                <option value="2" <c:if test="${searchType eq '2'}">selected</c:if>>지역</option>
                                            </select>
                                        </div>
                                        <div class="col-lg-6">
                                            <input type="text" name="_searchValue" id="_searchValue" value="${searchValue}" maxlength="25" class="svalue" placeholder="조회값을 입력하세요." />
                                        </div>
                                        <div class="col-lg-3">
                                            <fieldset>
                                            <button type="button" id="btnSearch" class="main-dark-button">검색</button>
                                            </fieldset>
                                        </div>
                                        
                                    </div>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
				<!-- 검색창 끝 -->
				<div class="col-lg-12">
					<div class="boxx"></div>
				</div>
                <!-- 전문가목록 시작 -->
                <!-- 01 -->
                 <div class="col-lg-3">
                    <div class="ticket-item2">
                        <div class="thumb_go">
                            <img src="../resources/images/gosu/gosu1.jpg" alt="">
                        </div>
                        <div class="down-content2">
                        	<div class="title_go">한지민 플래너</div>
                            <ul>
                                <li class="adress_go">서울 강남구</li>
                        		<div class="hashtag">#베테랑 #열정적인 #풍부한경험</div>
                            </ul>
                            <div class="main-dark-button btn_go">
                                <a href="/board/gosu" class="gosu_modal">자세히 보기</a>
                            </div>
                                
                         </div>
                    </div>
                </div> 
                
                <!-- 02 -->
                 <div class="col-lg-3">
                    <div class="ticket-item2">
                        <div class="thumb_go">
                            <img src="../resources/images/gosu/gosu2.jpg" alt="">
                        </div>
                        <div class="down-content2">
                        	<div class="title_go">조현 플래너</div>
                            <ul>
                                <li class="adress_go">서울 서초구</li>
                        		<div class="hashtag">#꼼꼼한 #발빠른 #친절한</div>
                            </ul>
                            <div class="main-dark-button btn_go">
                                <a href="/board/gosu" class="gosu_modal">자세히 보기</a>
                            </div>
                        </div>
                    </div>
                </div> 
                
                <!-- 03 -->
                 <div class="col-lg-3">
                    <div class="ticket-item2">
                        <div class="thumb_go">
                            <img src="../resources/images/gosu/gosu3.jpg" alt="">
                        </div>
                        <div class="down-content2">
                        	<div class="title_go">안보현 플래너</div>
                            <ul>
                                <li class="adress_go">인천 남동구</li>
                                <div class="hashtag">#따뜻한 #풍부한경험 #프로페셔널  #섬세한</div>
                            </ul>
                            <div class="main-dark-button btn_go">
                                <a href="/board/gosu" class="gosu_modal">자세히 보기</a>
                            </div>
                        </div>
                    </div>
                </div> 
                
                <!-- 04 -->
                 <div class="col-lg-3">
                    <div class="ticket-item2">
                        <div class="thumb_go">
                            <img src="../resources/images/gosu/gosu4.jpg" alt="">
                        </div>
                        <div class="down-content2">
                        	<div class="title_go">한예슬 플래너</div>
                            <ul>
                                <li class="adress_go">인천 부평구</li>
                                <div class="hashtag">#섬세한 #소통왕 #유쾌한 #트렌디한</div>
                            </ul>
                            <div class="main-dark-button btn_go">
                                <a href="/board/gosu" class="gosu_modal">자세히 보기</a>
                            </div>
                        </div>
                    </div>
                </div> 
                
                <!-- 05 -->
                 <div class="col-lg-3">
                    <div class="ticket-item2">
                        <div class="thumb_go">
                            <img src="../resources/images/gosu/gosu5.jpg" alt="">
                        </div>
                        <div class="down-content2">
                        	<div class="title_go">최우식 플래너</div>
                            <ul>
                                <li class="adress_go">서울 강남구</li>
                                <div class="hashtag">#든든한 #친근한 #정확한 #현실적인</div>
                            </ul>
                            <div class="main-dark-button btn_go">
                                <a href="/board/gosu" class="gosu_modal">자세히 보기</a>
                            </div>
                        </div>
                    </div>
                </div> 
                
                <!-- 06 -->
                 <div class="col-lg-3">
                    <div class="ticket-item2">
                        <div class="thumb_go">
                            <img src="../resources/images/gosu/gosu6.jpg" alt="">
                        </div>
                        <div class="down-content2">
                        	<div class="title_go">이민정 플래너</div>
                            <ul>
                                <li class="adress_go">서울 강북구</li>
                        		<div class="hashtag">#꼼꼼한 #든든한 #추천왕</div>
                            </ul>
                            <div class="main-dark-button btn_go">
                                <a href="/board/gosu" class="gosu_modal">자세히 보기</a>
                            </div>
                        </div>
                    </div>
                </div> 
                
                <!-- 7번째부터는 다시반복 ㅎㅎ -->
                <!-- 01 -->
                 <div class="col-lg-3">
                    <div class="ticket-item2">
                        <div class="thumb_go">
                            <img src="../resources/images/gosu/gosu1.jpg" alt="">
                        </div>
                        <div class="down-content2">
                        	<div class="title_go">한지민 플래너</div>
                            <ul>
                                <li class="adress_go">서울 강남구</li>
                        		<div class="hashtag">#베테랑 #열정적인 #풍부한경험</div>
                            </ul>
                            <div class="main-dark-button btn_go">
                                <a href="/board/gosu" class="gosu_modal">자세히 보기</a>
                            </div>
                        </div>
                    </div>
                </div> 
                
                <!-- 02 -->
                 <div class="col-lg-3">
                    <div class="ticket-item2">
                        <div class="thumb_go">
                            <img src="../resources/images/gosu/gosu2.jpg" alt="">
                        </div>
                        <div class="down-content2">
                        	<div class="title_go">조현 플래너</div>
                            <ul>
                                <li class="adress_go">서울 서초구</li>
                        		<div class="hashtag">#꼼꼼한 #발빠른 #친절한</div>
                            </ul>
                            <div class="main-dark-button btn_go">
                                <a href="/board/gosu" class="gosu_modal">자세히 보기</a>
                            </div>
                        </div>
                    </div>
                </div> 
                
                <!-- 03 -->
                 <div class="col-lg-3">
                    <div class="ticket-item2">
                        <div class="thumb_go">
                            <img src="../resources/images/gosu/gosu3.jpg" alt="">
                        </div>
                        <div class="down-content2">
                        	<div class="title_go">안보현 플래너</div>
                            <ul>
                                <li class="adress_go">인천 남동구</li>
                                <div class="hashtag">#따뜻한 #풍부한경험 #프로페셔널  #섬세한</div>
                            </ul>
                            <div class="main-dark-button btn_go">
                                <a href="/board/gosu" class="gosu_modal">자세히 보기</a>
                            </div>
                        </div>
                    </div>
                </div> 
                
                <!-- 04 -->
                 <div class="col-lg-3">
                    <div class="ticket-item2">
                        <div class="thumb_go">
                            <img src="../resources/images/gosu/gosu4.jpg" alt="">
                        </div>
                        <div class="down-content2">
                        	<div class="title_go">한예슬 플래너</div>
                            <ul>
                                <li class="adress_go">인천 부평구</li>
                                <div class="hashtag">#섬세한 #소통왕 #유쾌한 #트렌디한</div>
                            </ul>
                            <div class="main-dark-button btn_go">
                                <a href="/board/gosu" class="gosu_modal">자세히 보기</a>
                            </div>
                        </div>
                    </div>
                </div> 
                
                <!-- 05 -->
                 <div class="col-lg-3">
                    <div class="ticket-item2">
                        <div class="thumb_go">
                            <img src="../resources/images/gosu/gosu5.jpg" alt="">
                        </div>
                        <div class="down-content2">
                        	<div class="title_go">최우식 플래너</div>
                            <ul>
                                <li class="adress_go">서울 강남구</li>
                                <div class="hashtag">#든든한 #친근한 #정확한 #현실적인</div>
                            </ul>
                            <div class="main-dark-button btn_go">
                                <a href="/board/gosu" class="gosu_modal">자세히 보기</a>
                            </div>
                        </div>
                    </div>
                </div> 
                
                <!-- 06 -->
                 <div class="col-lg-3">
                    <div class="ticket-item2">
                        <div class="thumb_go">
                            <img src="../resources/images/gosu/gosu6.jpg" alt="">
                        </div>
                        <div class="down-content2">
                        	<div class="title_go">이민정 플래너</div>
                            <ul>
                                <li class="adress_go">서울 강북구</li>
                        		<div class="hashtag">#꼼꼼한 #든든한 #추천왕</div>
                            </ul>
                            <div class="main-dark-button btn_go">
                                <a href="/board/gosu" class="gosu_modal">자세히 보기</a>
                            </div>
                        </div>
                    </div>
                </div> 
				<!-- 전문가목록 끝 --> 
			</div>
			<!-- 페이징처리 -->
				 <div class="col-lg-12">
                    <div class="pagination">
                        <ul>                       
                            <li><a  class="page-link" href="javascript:void(0)" onclick="fn_list(${paging.prevBlockPage})">Prev</a></li>
							<li class="page-item active"><a class="page-link" href="javascript:void(0)" style="cursor:default;">1</a></li>
         					<li class="page-item"><a class="page-link" href="javascript:void(0)" onclick="fn_list(${paging.nextBlockPage})">Next</a></li>
                        </ul>
                    </div>
                </div> 
                <!-- 페이징처리 끝 -->
		</div>
			<form name="bbsForm" id="bbsForm" method="post">
			<input type="hidden" name="gosuNo" value="" />
			<input type="hidden" name="searchType" value="${searchType}" />
			<input type="hidden" name="searchValue" value="${searchValue}" />
			<input type="hidden" name="curPage" value="${curPage}" />
		</form>
	</div>             

<!-- ############################ 여기까지 내용 끝 ############################ -->
<%@ include file="/WEB-INF/views/include/footer.jsp" %>
</body>
</html>