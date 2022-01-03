<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/taglib.jsp" %>
<!DOCTYPE html>
<html lang="en">
    <head>
       <%@ include file="/WEB-INF/views/include/head.jsp" %>
    </head>
    <body>
       <%@ include file="/WEB-INF/views/include/navigation.jsp" %>

		   <!-- Product section-->
        <section class="py-5">
        <c:forEach var="eboard" items="${eBoard}" varStatus="status">
            <div class="container px-4 px-lg-5 my-5">
                <div class="row gx-4 gx-lg-5 align-items-center">
                    <div class="col-md-6"><img class="card-img-top mb-5 mb-md-0"  src="/resources/board/${eboard.eBImgName}" /></div>
                    <div class="col-md-6">
                        <div class="small mb-1"></div>
                        <h1 class="display-5 fw-bolder">${eboard.eBTitle}</h1>
                        <p class="lead">${eboard.eBContent}</p>
                    </div>
                </div>
            </div>
      	</c:forEach>
        </section>
                      
       <%@ include file="/WEB-INF/views/include/footer.jsp" %>
     </body>
       
