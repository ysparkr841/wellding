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
	
});
</script>
</head>
<body>
   	<%@ include file="/WEB-INF/views/include/navigation.jsp" %>

	    <!-- ***** About Us Page ***** -->
    <div class="page-heading-rent-venue">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <h2>공지사항</h2>
                    <!-- span>Check out our latest Shows & Events and be part of us.</span -->
                </div>
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