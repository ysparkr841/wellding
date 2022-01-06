<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/taglib.jsp" %>

<!DOCTYPE html>
<html lang="en">

  	<head>
    	<%@ include file="/WEB-INF/views/include/head.jsp" %>
    	<link rel="preconnect" href="https://fonts.googleapis.com">
		<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
		<link href="https://fonts.googleapis.com/css2?family=Bitter:ital@0;1&family=The+Nautigal&display=swap" rel="stylesheet">
    </head>
    
    <body>
    <jsp:include page="/WEB-INF/views/include/navigation.jsp" >
    <jsp:param name="userName" value="${wdUser.userNickname}" />
    </jsp:include>
    
    <div class="page-heading-rent-venue2">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                </div>
            </div>
        </div>
    </div>
    
    <!-- 타입1 -->   
	<div class="container-fluid subMenu">
		<div class="row">
			<div class="col-md-12">
			<div class="row">
				<div class="col-md-3 myPage">
					<div class="myPageLetter">마이페이지</div>
				</div>
				<div class="col-md-8">
					<div class="myPageLetter" style="margin-top: 5px; text-align: center; border-bottom: 2px solid gray;">장바구니</div>
				</div>
			</div>
				<div class="row">
					<div class="col-md-3">
						<div class="list-group subMenuList">
							<a href="#" class="list-group-item list-group-item-action">장바구니</a>
							<a href="#" class="list-group-item list-group-item-action">결제내역</a>
							<a href="#" class="list-group-item list-group-item-action">쿠폰보유현황</a>
							<a href="#" class="list-group-item list-group-item-action justify-content-between">회원정보수정 <span class="badge badge-info badge-pill">수정</span></a>
						</div>
					</div>
					<div class="col-md-9">
						
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- 타입1 종료 -->
	
	<div class="container-fluid">
		<div class="row">
			<div class="col-lg-12 bcline">
				
				<div class="row">
					<div class="col-lg-1">
					</div>
					<div class="col-lg-10">
						<h2 style="font-family: 'Bitter', serif; margin-top: 10px; padding-left: 10px;">My Page</h2>
						<nav class="bcItem">
							<ol class="breadcrumb bc" >
								<li class="breadcrumb-item">
									<a href="#" class="bcFirst">장바구니</a>
								</li>
								<li class="breadcrumb-item">
									<a href="#">결제내역</a>
								</li>
								<li class="breadcrumb-item">
									<a href="#">쿠폰보유현황</a>
								</li>
								<li class="breadcrumb-item">
									<a href="#">회원정보수정</a>
								</li>
							</ol>
						</nav>
					
					</div>
					<div class="col-lg-1">
					</div>
					
					
				</div>
			</div>
		</div>
		<div class="row">
			<div class="col-lg-12">
			dddd
			</div>
		</div>
	
		<%@ include file="/WEB-INF/views/include/footer.jsp" %>
  </body>

</html>
