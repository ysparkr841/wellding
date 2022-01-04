<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/taglib.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항</title>
	<%@ include file="/WEB-INF/views/include/head.jsp" %>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Gamja+Flower&display=swap" rel="stylesheet">
<style>
.Wtitle{
font-family: 'Gamja Flower', cursive;
font-size: 64px;
text-align: center;
}
</style>
<script>
$(function(){
	//조회버튼
   $("#btnSearch").on("click", function(){
	 //조회버튼 눌렀을때: 조회항목, 조회값, 현재 커런트페이지에대한 정보를 가져가야함
      document.bbsForm.bSeq.value = "" ; //네임 사용
      document.bbsForm.searchType.value = $("#_searchType").val();
      document.bbsForm.searchValue.value = $("#_searchValue").val();
      document.bbsForm.curPage.value = 1;
      document.bbsForm.action = "/board/nBoard";
      document.bbsForm.submit();
   });
});
//제목 눌럿을때 view 페이지 가기
function fn_view(bSeq)
{
	document.bbsForm.bSeq.value = bSeq;
	//실행하면 bbsForm 안에 <input type="hidden" name="hiBbsSeq" value="" />의 value에 값이 들어가게됨
	document.bbsForm.action = "/board/nBoardView";
	//서치타입과 서치밸유는 이미 들어가있으니까(위에서 설정) 넣을 필요없음
	document.bbsForm.submit();
}

function fn_list(curPage)
{
	document.bbsForm.bSeq.value = "";
	document.bbsForm.curPage.value = curPage;
	document.bbsForm.action = "/board/nBoard";
	document.bbsForm.submit();
}
</script>

</head>
<body>
   	<jsp:include page="/WEB-INF/views/include/navigation.jsp" >
       <jsp:param name="userName" value="${wdUser.userNickname}" />
       </jsp:include>

	    <!-- ***** About Us Page ***** -->
    <div class="page-heading-rent-venue">
        <div class="container">
            <div class="row">
            </div>
        </div>
    </div>
	<br />
	<h2 class="Wtitle">Wellding Notice</h2>
	<p style="text-align:center">우리들의 웨딩이야기를 지금 들려드려요</p>
	<br />
    <div class="tickets-page">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="search-box">
                        <form id="subscribe" method="get">
                            <div class="row">
                                <div class="col-lg-5">
                                    <div class="search-heading">
                                        <h4> 필요한 공지사항을 검색 해보세요.</h4>
                                    </div>
                                </div>
                                <div class="col-lg-7">
                                    <div class="row">
                                        <div class="col-lg-3">
                                            <select value="searchType" name="_searchType" id="_searchType">
                                                <option value="1" <c:if test="${searchType eq '1'}">selected</c:if>>제목</option>
                                            </select>
                                        </div>
                                        <div class="col-lg-6">
                                            <input type="text" name="_searchValue" id="_searchValue" value="${searchValue}" maxlength="25" class="svalue" placeholder="조회값을 입력하세요." />
                                        </div>
                                        <div class="col-lg-3">
                                            <fieldset>
                                            <button type="button" id="btnSearch" class="main-dark-button">조회</button>
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
                		<h2></h2>
                	</div>
                </div>
                <div class="col-lg-12" style="border-bottom: 1px solid black">
                    <ul>
                        <li>
                            <table class="table table-hover">
                                <thead>
                                    <tr style="background-color: #e9e8e8;">
                                    <th scope="col" class="text-center" style="width:10%">번호</th>
                                    <th scope="col" class="text-center" style="width:50%">제목</th>
                                    <th scope="col" class="text-center" style="width:20%">작성자</th>
                                    <th scope="col" class="text-center" style="width:10%">날짜</th>
                                    <th scope="col" class="text-center" style="width:10%">조회</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <c:if test="${!empty list}">
                                       <c:forEach var="hiBoard" items="${list}" varStatus="status">   
                                            <tr>
                                                <td style="text-align:center">
                                                    <a href="javascript:void(0)" onclick="fn_view(${hiBoard.bSeq})">
                                                        <c:out value="${hiBoard.bSeq}" />
                                                    </a>
                                                </td>
                                                	<td style="text-align:left">
                                                		<a href="javascript:void(0)" onclick="fn_view(${hiBoard.bSeq})">${hiBoard.bTitle}</a>
                                                	</td>
                                                	<td style="text-align:center">${hiBoard.adminId}</td>
                                                    <td style="text-align:center">${hiBoard.regDate}</td>
                                                    <td style="text-align:center"><fmt:formatNumber type="number" maxFractionDigits="3" value="${hiBoard.bReadCnt}" /></td>
                                            </tr>
                                       </c:forEach>
                                    </c:if>      
                                </tbody>
                            </table>
                        </li>
                    </ul>
                </div>

                <div class="col-lg-12">
                    <div class="pagination">
						<ul class="pagination justify-content-center">
							<c:if test="${!empty paging}">
								<c:if test="${paging.prevBlockPage gt 0}">	<!-- prevBlockPage이 0 보다 크냐 -->
								<li class="page-item"><a class="page-link" href="javascript:void(0)" onclick="fn_list(${paging.prevBlockPage})">이전</a></li>
								</c:if>
								<c:forEach var="i" begin="${paging.startPage}" end="${paging.endPage}">
									<c:choose>
										<c:when test="${i ne curPage}">
											<li class="page-item"><a class="page-link" href="javascript:void(0)" onclick="fn_list(${i})">${i}</a></li>
										</c:when>
										<c:otherwise>
											<li class="page-item active"><a class="page-link" href="javascript:void(0)" style="cursor:default">${i}</a></li>
										</c:otherwise>
									</c:choose>
								</c:forEach>
								<c:if test="${paging.nextBlockPage gt 0}">         
									<li class="page-item"><a class="page-link" href="javascript:void(0)" onclick="fn_list(${paging.nextBlockPage})">다음</a></li>
								</c:if>       
							</c:if> 
						</ul>
                    </div>
                </div>
            </div>
        </div>
        
        
		<form name="bbsForm" id="bbsForm" method="post">
			<input type="hidden" name="bSeq" value="" />
			<!-- 제목눌러서 상세페이지 들어갈때 필요하니까 그때만 이 값이 들어가면됨 -->
			<input type="hidden" name="searchType" value="${searchType}" />
			<input type="hidden" name="searchValue" value="${searchValue}" />
			<input type="hidden" name="curPage" value="${curPage}" />
		</form>
    </div>


 <!-- *** 욱채수정Footer 시작 *** -->
	<%@ include file="/WEB-INF/views/include/footer.jsp" %>
 <!-- *** 욱채수정Footer 종료 *** -->
</body>
</html>