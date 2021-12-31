<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/taglib.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항</title>
	<%@ include file="/WEB-INF/views/include/head.jsp" %>
<script>
$(function(){
	//조회버튼
   $("#btnSearch").on("click", function(){
	 //조회버튼 눌렀을때: 조회항목, 조회값, 현재 커런트페이지에대한 정보를 가져가야함
      document.bbsForm.hiBbsSeq.value = "" ; //네임 사용
      document.bbsForm.searchType.value = $("#_searchType").val();
      document.bbsForm.searchValue.value = $("#_searchValue").val();
      document.bbsForm.curPage.value = 1;
    //현재 내가 3페이지였는데 조회를 하면 페이지수는 가져가지 않아. 페이지는 어떻게될지 모르자나 그래서 조회했다 싶으면 무조건1로 넣는거야. 페이지가 몇개일지 모르자나
      document.bbsForm.action = "/board/nBoard";
      document.bbsForm.submit();
   });
});
//제목 눌럿을때 view 페이지 가기
function fn_view(bbsSeq)
{
	document.bbsForm.hiBbsSeq.value = bbsSeq;
	//실행하면 bbsForm 안에 <input type="hidden" name="hiBbsSeq" value="" />의 value에 값이 들어가게됨
	document.bbsForm.action = "/board/view";
	//서치타입과 서치밸유는 이미 들어가있으니까(위에서 설정) 넣을 필요없음
	document.bbsForm.submit();
}

function fn_list(curPage)
{
	document.bbsForm.hiBbsSeq.value = "";
	document.bbsForm.curPage.value = curPage;
	document.bbsForm.action = "/board/nBoard";
	document.bbsForm.submit();
}
</script>
</head>
<body>
   	<%@ include file="/WEB-INF/views/include/navigation.jsp" %>

	    <!-- ***** About Us Page ***** -->
    <div class="page-heading-rent-venue">
        <div class="container">
            <div class="row">
            </div>
        </div>
    </div>

    <div class="shows-events-schedule">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="section-heading">
                        <h2>공지사항</h2>
                    </div>
                </div>
					<div class="ml-auto input-group" style="width:50%;">
						<select name="_searchType" id="_searchType" class="custom-select" style="width:auto;">
							<option value="">조회 항목</option>
							<option value="1" <c:if test="${searchType eq '1'}">selected</c:if>>제목</option>
						</select>
						<input type="text" name="_searchValue" id="_searchValue" value="${searchValue}" class="form-control mx-1" maxlength="20" style="width:auto;ime-mode:active;" placeholder="조회값을 입력하세요." />
					   <button type="button" id="btnSearch" class="btn btn-secondary mb-3 mx-1">조회</button>
					</div>
                <div class="col-lg-12">
                    <ul>
                        <li>
                            <table class="table table-hover">
                                <thead>
                                    <tr style="background-color: #dee2e6;">
                                    <th scope="col" class="text-center" style="width:10%">번호</th>
                                    <th scope="col" class="text-center" style="width:55%">제목</th>
                                    <th scope="col" class="text-center" style="width:10%">작성자</th>
                                    <th scope="col" class="text-center" style="width:15%">날짜</th>
                                    <th scope="col" class="text-center" style="width:10%">조회수</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <c:if test="${!empty list}">
                                    <!-- 리스트 데이터가 비어잇지 않으면 ! 값이있으면~ 이라는 뜻 -->
                                       <c:forEach var="hiBoard" items="${list}" varStatus="status">   
                                            <tr>
                                                <c:choose>
                                                    <c:when test="${hiBoard.hiBbsIndent eq 0}"> <!-- 들여쓰기가 없다 -->
                                                        <td class="text-center">${hiBoard.hiBbsSeq}</td>
                                                    </c:when>
                                                    <c:otherwise>
                                                        <td class="text-center"></td>
                                                    </c:otherwise>
                                                </c:choose>
                                                <td>
                                                    <a href="javascript:void(0)" onclick="fn_view(${hiBoard.hiBbsSeq})"><!-- fn_view매개변수로 넘기겟다 -->
                                                        <c:if test="${hiBoard.hiBbsIndent > 0}">
                                                            <img src="/resources/images/icon_reply.gif" style="margin-left:${hiBoard.hiBbsIndent}em;" />
                                                        </c:if>
                                                        <c:out value="${hiBoard.hiBbsTitle}" />
                                                    </a>
                                                </td>
                                                    <td class="text-center"><c:out value="${hiBoard.userName}" /></td>
                                                    <td class="text-center">${hiBoard.regDate}</td>
                                                    <td class="text-center"><fmt:formatNumber type="number" maxFractionDigits="3" value="${hiBoard.hiBbsReadCnt}" /></td>
                                            </tr>
                                       </c:forEach>
                                    </c:if>      
                                </tbody>
                            </table>
                        </li>
                    </ul>
                </div>
                
				<!-- 버튼처리 시작 -->
				<nav>
					<ul class="pagination justify-content-center">
						<c:if test="${!empty paging}">
							<c:if test="${paging.prevBlockPage gt 0}">	<!-- prevBlockPage이 0 보다 크냐 -->
							<li class="page-item"><a class="page-link" href="javascript:void(0)" onclick="fn_list(${paging.prevBlockPage})">이전블럭</a></li>
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
				<!-- forEach문은 최대 5개밖에 안됨.위에서 지정해줌. -->
							<c:if test="${paging.nextBlockPage gt 0}">         
								<li class="page-item"><a class="page-link" href="javascript:void(0)" onclick="fn_list(${paging.nextBlockPage})">다음블럭</a></li>
							</c:if>       
						</c:if> 
					</ul>
				</nav>
				<!-- 버튼처리 끝 -->
   
   
                <div class="col-lg-12">
                    <div class="pagination">
                        <ul>
                            <li><a href="#">Prev</a></li>
                            <li><a href="#">1</a></li>
                            <li class="active"><a href="#">2</a></li>
                            <li><a href="#">3</a></li>
                            <li><a href="#">Next</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        
        
		<form name="bbsForm" id="bbsForm" method="post">
			<input type="hidden" name="hiBbsSeq" value="" />
			<!-- 제목눌러서 상세페이지 들어갈때 필요하니까 그때만 이 값이 들어가면됨 -->
			<input type="hidden" name="searchType" value="${searchType}" />
			<input type="hidden" name="searchValue" value="${searchValue}" />
			<input type="hidden" name="curPage" value="${curPage}" />
		</form>
    </div>


 <!-- *** 욱채수정Footer 시작 *** -->
	<%@ include file="/WEB-INF/views/include/footer.jsp" %>
 <!-- *** 욱채수정Footer 종료 *** -->
 
	<!-- jQuery -->
	<script src="assets/js/jquery-2.1.0.min.js"></script>
	
	<!-- Bootstrap -->
	<script src="assets/js/popper.js"></script>
	<script src="assets/js/bootstrap.min.js"></script>
	
	<!-- Plugins -->
	<script src="assets/js/scrollreveal.min.js"></script>
	<script src="assets/js/waypoints.min.js"></script>
	<script src="assets/js/jquery.counterup.min.js"></script>
	<script src="assets/js/imgfix.min.js"></script> 
	<script src="assets/js/mixitup.js"></script> 
	<script src="assets/js/accordions.js"></script>
	<script src="assets/js/owl-carousel.js"></script>
	
	<!-- Global Init -->
	<script src="assets/js/custom.js"></script>
</body>
</html>