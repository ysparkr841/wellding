<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/include/taglib.jsp" %>
<!DOCTYPE html>
<html>
<head>
	<%@ include file="/WEB-INF/views/include/head.jsp" %>
	<title>Login V2</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="../resources/images/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="../resources/vendor/loginvendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="../resources/vendor/loginvendor/bootstrap/css/bootstrap.min.css.map">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="../resources/fonts/loginfonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="../resources/fonts/loginfonts/iconic/css/material-design-iconic-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="../resources/vendor/loginvendor/animate/animate.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="../resources/vendor/loginvendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="../resources/vendor/loginvendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="../resources/vendor/loginvendor/select2/select2.min.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="../resources/vendor/loginvendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="../resources/css/loginutil.css">
	<link rel="stylesheet" type="text/css" href="../resources/css/loginmain.css">
<!--===============================================================================================-->
	<script src="../resources/js/jquery-3.5.1.min.js"></script>
<!--===============================================================================================-->
	<script src="../resources/js/icia.common.js"></script>

<script>
$(function(){
	
	$("#loginbtn").on("click", function(){
		
		var id = $("#userId").val();
		var pwd = $("#userPwd").val();
		
		if(id <= 0)
			{
			$('p').text("아이디를 입력해주세요.");
			$("#userId").focus();
			return;
			}
		else if(pwd <= 0)
			{
			$('p').text("비밀번호를 입력해주세요.");
			$("#userPwd").focus();
			return;
			}
		
<<<<<<< HEAD
=======
		if(e.which == 13)
		{	

			fn_loginCheck();
		}
		
	});
	

});

function fn_loginCheck()
{
	var check;
	if($('#id1').hasClass('selected')){
		check = 1;
	}
	if($('#id2').hasClass('selected')){
		check = 2;
	}
	if($('#id3').hasClass('selected')){
		check = 3;
	}
	
	if($.trim($("#userId").val()).length <= 0)
	{
		alert("아이디를 입력하세요.");
		$("#userId").focus();
		return;
	}
	
	if($.trim($("#userPwd").val()).length <= 0)
	{
		alert("비밀번호를 입력하세요.");
		$("#userPwd").focus();
		return;
	}
>>>>>>> f37e623f86aa102ccb92007acdb8f20b65937cd1
	
	$.ajax({
		type : "POST",
		url : "/imokay",
		data : {
			userId:$("#userId").val(),
			userPwd:$("#userPwd").val() 
		},
		datatype : "JSON",																																																					
		beforeSend : function(xhr){
            xhr.setRequestHeader("AJAX", "true");
        },
		success : function(response) {
			
			if(!icia.common.isEmpty(response))
			{
				icia.common.log(response);
				
				// var data = JSON.parse(obj);
				var code = icia.common.objectValue(response, "code", -500);
				
				if(code == 0)
				{
					location.href = "/";
				}
				else
				{
					if(code == -1)
					{
						$('p').text("비밀번호가 올바르지 않습니다.");
						$("#userPwd").focus();
					}
					else if(code == 404)
					{
						$('p').text("아이디와 일치하는 사용자 정보가 없습니다.");
						$("#userId").focus();
					}
					else if(code == 400)
					{
						$('p').text("파라미터 값이 올바르지 않습니다.");
						$("#userId").focus();
					}
					else if(code == 403)
					{
						$('p').text("이용이 정지된 사용자입니다.");
						$("#userId").focus();
					}
					else
					{
						$('p').text("오류가 발생하였습니다.");
						$("#userId").focus();
					}	
				}	
			}
			else
			{
				$('p').text("오류가 발생하였습니다.");
				$("#userId").focus();
			}
		},
		complete : function(data) 
		{ 
			// 응답이 종료되면 실행, 잘 사용하지않는다
			icia.common.log(data);
		},
		error : function(xhr, status, error) 
		{
			icia.common.error(error);
		}
	});




});

});


function classChange(id){
	document.getElementById('id1').classList.remove('selected');
	document.getElementById('id2').classList.remove('selected');
	document.getElementById('id3').classList.remove('selected');
	id.setAttribute('class','selected');
}
</script>
</head>
<body>

	<div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100">
				<form class="login100-form validate-form">
					<span class="login100-form-title p-b-26">
						<h1 id="logo"><img src="../resources/images/icons/logo1.png" width="130" height="auto"/></h1>

					</span>
					<span class="login100-form-title p-b-48">
						<!-- <i class="zmdi zmdi-font"></i> -->
						<div class="mTab eTab">
							<ul>
								
								<li id="id1" class="selected" onclick="classChange(this)"><a href="javascript:void(0)">회원</a></li>
								<li id="id2" onclick="classChange(this)"><a href="javascript:void(0)" >관리자</a></li>
								<li id="id3" onclick="classChange(this)"><a href="javascript:void(0)" >전문가</a></li>
								<!-- <li class="selected"><a href="#" onclick="changeLogin('3', 'F', 'F');">전문가</a></li> -->
							</ul>
						</div>
						
					</span>

					<div>

					

					<div class="wrap-input100 validate-input" data-validate = "Valid email is: a@b.c">
						<input class="input100" type="text" name="userId" id="userId" >
						<span class="focus-input100" data-placeholder="ID"></span>
					</div>

					<div class="wrap-input100 validate-input" data-validate="Enter password">
						<span class="btn-show-pass">
							<i class="zmdi zmdi-eye"></i>
						</span>
						<input class="input100" type="password" name="userPwd" id="userPwd" >
						<span class="focus-input100" data-placeholder="Password"></span>
					</div>
					
					<p class="msg"></p>

					<div class="container-login100-form-btn">
						<div class="wrap-login100-form-btn">
							<div class="login100-form-bgbtn"></div>
							<button type="button" id="loginbtn" class="login100-form-btn" id="loginbtn">
								Login
							</button>
						</div>
					</div>
					

					<div class="text-center p-t-115">
						<span class="txt1">
							Wellding에 처음이세요?
						</span>

						<a class="txt2" href="/board/regform">
							회원가입하기
						</a>
					</div>
				</form>
			</div>
		</div>
	</div>
	

	<div id="dropDownSelect1"></div>
	
<!--===============================================================================================-->
	
<!--===============================================================================================-->
	<script src="../resources/vendor/loginvendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
	<script src="../resources/vendor/loginvendor/bootstrap/js/popper.js"></script>
	<script src="../resources/vendor/loginvendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="../resources/vendor/loginvendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="../resources/vendor/loginvendor/daterangepicker/moment.min.js"></script>
	<script src="../resources/vendor/loginvendor/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
	<script src="../resources/vendor/loginvendor/countdowntime/countdowntime.js"></script>
<!--===============================================================================================-->
	<script src="../resources/js/loginmain.js"></script>

</body>
</html>