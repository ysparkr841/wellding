<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/taglib.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<%@ include file="/WEB-INF/views/include/head.jsp" %>
</head>
<body>
   	<%@ include file="/WEB-INF/views/include/navigation.jsp" %>
    <div class="page-heading-rent-venue">
        <div class="container">
            <div class="row">
            </div>
        </div>
    </div>
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
    </div>
    
    
<div class="container">
   <h2>게시물 보기</h2>
   <div class="row" style="margin-right:0; margin-left:0;">
      <table class="table">
         <thead>
            <tr class="table-active">
               <th scope="col" style="width:60%">
                  <c:out value="${nBoard.bTitle}"/><br/>
                  <c:out value="${nBoard.adminId}"/>&nbsp;&nbsp;&nbsp;
               </th>
               <th scope="col" style="width:40%" class="text-right">
                                         조회 : <fmt:formatNumber type="number" maxFractionDigits="3" value="${nBoard.bReadCnt}" /><br/>
                  ${nBoard.regDate}
               </th>
            </tr>
         </thead>
         <tbody>
            <tr>
               <td colspan="2"><pre><c:out value="${nBoard.bContent}" /></pre></td>
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
   <input type="hidden" name="bSeq" value="${bSeq}" />
   <input type="hidden" name="searchType" value="${searchType}" />
   <input type="hidden" name="searchValue" value="${searchValue}" />
   <input type="hidden" name="curPage" value="${curPage}" />
</form>

 <!-- *** 욱채수정Footer 시작 *** -->
	<%@ include file="/WEB-INF/views/include/footer.jsp" %>
 <!-- *** 욱채수정Footer 종료 *** -->
</body>
</html>