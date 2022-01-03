<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/taglib.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<%@ include file="/WEB-INF/views/include/head.jsp" %>
</head>
<body>
   	<%@ include file="/WEB-INF/views/include/navigation.jsp" %>
   	
                <div class="col-lg-12">
                    <ul>
                        <li>
                            <table class="table table-hover">
                                <thead>
                                    <tr style="background-color: #dee2e6;">
                                    <th scope="col" class="text-center" style="width:10%">번호</th>
                                    <th scope="col" class="text-center" style="width:50%">제목</th>
                                    <th scope="col" class="text-center" style="width:20%">작성자</th>
                                    <th scope="col" class="text-center" style="width:10%">날짜</th>
                                    <th scope="col" class="text-center" style="width:10%">조회수</th>
                                    </tr>
                                </thead>
                            </table>
                        </li>
                    </ul>
                </div>
                
<div class="container">
   <h2>게시물 보기</h2>
   <div class="row" style="margin-right:0; margin-left:0;">
      <table class="table">
         <thead>
            <tr class="table-active">
               <th scope="col" style="width:60%">
                  <c:out value="${hiBoard.hiBbsTitle}"/><br/>
                  <c:out value="${hiBoard.userName}"/>&nbsp;&nbsp;&nbsp;
                  <a href="mailto:${hiBoard.userEmail}" style="color:#828282;">${hiBoard.userEmail}</a>
                  <!-- 첨부파일은 있을 때만 보여주면 됨 -->
			<c:if test="${!empty hiBoard.hiBoardFile}">
                  &nbsp;&nbsp;&nbsp;<a href="/board/download?hiBbsSeq=${hiBoard.hiBoardFile.hiBbsSeq}" style="color:#000;">[첨부파일]${hiBoard.hiBoardFile.fileOrgName}</a>
            </c:if>
               </th>
               <th scope="col" style="width:40%" class="text-right">
                                         조회 : <fmt:formatNumber type="number" maxFractionDigits="3" value="${hiBoard.hiBbsReadCnt}" /><br/>
                  ${hiBoard.regDate}
               </th>
            </tr>
         </thead>
         <tbody>
            <tr>
               <td colspan="2"><pre><c:out value="${hiBoard.hiBbsContent}" /></pre></td>
            </tr>
         </tbody>
         <tfoot>
         <tr>
               <td colspan="2"></td>
           </tr>
         </tfoot>
      </table>
   </div>
</div>

<form name="bbsForm" id="bbsForm" method="post">
   <input type="hidden" name="hiBbsSeq" value="${hiBbsSeq}" />
   <input type="hidden" name="searchType" value="${searchType}" />
   <input type="hidden" name="searchValue" value="${searchValue}" />
   <input type="hidden" name="curPage" value="${curPage}" />
</form>

 <!-- *** 욱채수정Footer 시작 *** -->
	<%@ include file="/WEB-INF/views/include/footer.jsp" %>
 <!-- *** 욱채수정Footer 종료 *** -->
</body>
</html>