<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  		 <%@ include file="/WEB-INF/views/include/head.jsp" %>
   <meta charset="UTF-8">
   <meta name="viewport" content="width=device-width, initial-scale=1">

<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="../resources/css/modify.css">
<!--===============================================================================================-->
	  <script type="text/javascript">
	  
	  $(document).ready(function() {
	  
		  $("#pwd1").focus();
		  
		 	 // 모든 공백 체크 정규식
		    var emptCheck = /\s/g;
		    // 영문 대소문자, 숫자로만 이루어진 4~12자리 정규식
		    var idPwCheck = /^[a-zA-Z0-9]{3,12}$/;
		    
		    $("#pwd1").keyup(function(e){
		    	
		    	if($("#pwd1").val().length <= 0)
		    		{
		    		$('p').eq(0).text("비밀번호를 입력해주세요");
		    		$('p').eq(0).css('color', 'red');
		    	    $("#pwd1").focus();
		    	    return;
		    		}
		    	else if(emptCheck.test($("#pwd1").val())) 
		    	   {
		    	       $('p').eq(0).text("비밀번호는 공백을 포함할 수 없습니다");
		    	       $('p').eq(0).css('color', 'red');
		    	       $("#pwd1").focus();
		    	       return;
		    	   }
		    	else if (!idPwCheck.test($("#pwd1").val())) 
		        {
		          $('p').eq(0).text("비밀번호는 영문 대소문자와 숫자로 4~12자리 입니다.");
		          $('p').eq(0).css('color', 'red');
		          $("#pwd1").focus();
		          return;
		        }
		    	
		      
		          else 
		      {
		          $('p').eq(0).text("좋은 비밀번호 입니다");
		          $('p').eq(0).css("color", "green");
		          $('p').eq(0).css("font-weight", "700");
		          
		            return;
		        }
		    	
		    });
		    
		    $("#pwd2").keyup(function(){
		    	var pwd1= $("#pwd1").val();
		    	var pwd2= $("#pwd2").val();
		    	
		    	if($("#pwd2").val().length <= 0)
		    		{
		    		$('p').eq(1).text("비밀번호를 다시 입력해주세요");
		    		$('p').eq(1).css("color", "red");
		    		$("#pwd2").focus();
		    		return;
		    		}
		    	else if(emptCheck.test($("#pwd2").val()))
		    		{
		    		$('p').eq(1).text("비밀번호는 공백을 포함할 수 없습니다.");
		    		$('p').eq(1).css("color", "red");
		    		$("#pwd2").focus();
		    		return;
		    		}
		    	else if(pwd1 != pwd2)
		    		{
		    		$('p').eq(1).text("비밀번호가 일치하지않습니다");
		    		$('p').eq(1).css('color', 'red');
		    		$("#pwd2").focus();
		    		return;
		    		}
		    	
		    	else
		    		{
		    		  $('p').eq(1).text("비밀번호가 일치합니다.");
			          $('p').eq(1).css("color", "green");
			          $('p').eq(1).css("font-weight", "700");
			          
			            return;
		    		}
		    });
		    
		    $("#btn").on("click", function(){
		    	
		    	$.ajax({
		    		type: "POST",
		    		url: "/user/update",
		    		data :
		    	{
		    		userPwd : $("#pwd1").val(),
		    		userName : $("#name").val(),
		    		number : $("#number").val()
		    	},
		    	datatype : "JSON",
		    	beforeSend : function(xhr)
		    	{
		    		xhr.setRequestHeader("AJAX", "true");
		    	},
		    	success: function(response)
		    	{
		    		if(response.code == 0)
		    			{
		    				alert("회원수정이 완료되었습니다");
		    				location.href = "/";
		    			}
		    		else if(response.code == 400)
		    			{
		    			alert("회원수정 중 오류가 발생했습니다.");
		    			location.href ="/";
		    			}
		    		else
		    			{
		    			alert("오류가 발생했습니다");
		    			location.href ="/";
		    			}
		    	},
		    	 complete: function(data)
		            {
		               icia.common.log(data);
		            },
		            error: function(xhr, status, error)
		            {
		               icia.common.error(error);
		            }
		    	});
		    });
	  });
	  
	  </script>
   
</head>
<body>
   
   <div class="join_header">
                  <h1 class="logo"><img src="../resources/images/icons/logo1.png" width="100px" height="90px"/></h1>
                 
   </div>
   <div class="join_form">

      <dl class="join_write">
         <h1>회원정보수정</h1>
        
			   
               <dt>비밀번호</dt>
               <dd>
                  <div class="input">
					<input type="password" id="pwd1" name="pwd1" placeholder="비밀번호를 입력해 주세요" maxlength="20">

                  </div>
                  <p class="msg">비밀번호를 입력해 주세오.</p>
                  
               </dd>
               <dt>비밀번호 확인</dt>
               <dd>
                  <div class="input">
                     <input type="password" id="pwd2" name="pwd2" placeholder="비밀번호를 다시 한번 입력해 주세요" maxlength="20">
                  </div>
                     <p class="msg">비밀번호를 다시 입력해 주세요</p>      
               </dd>
               <dt>이름</dt>
               <dd>
                  <div class="input">
                     <input type="text" id="name" name="name" placeholder="이름을 입력해주세요">
					 
      
                  </div>
                 
               </dd>
			   <dt>전화번호</dt>
               <dd>
                  <div class="input">
                     <input type="text" id="number" placeholder="전화번호를 입력해주세요">
      
                  </div>
                  <p class="msg"></p>
               </dd>
              
           
			<!-- dt>닉네임</dt>
			<dd>
			   <div class="input">
				  <input type="text" id="nickname" placeholder="닉네임을 입력해주세요">
			   </div>
			   <p class="msg">
			   <p class="msg"></p>
			</dd-->
         <!--이메일 주석-->
            <!-- <dt>이메일</dt>
            <dd>
               <div class="input"><input id="userEmail" data-bind="email" type="text" placeholder="이메일을 입력해주세요" value=""></div>
               <p class="msg"></p> -->
              
                 
  		 <div class="button_area">
		<button class="btn_type" id="btn">수정</button>
		<button class="btn_type" >돌아가기</button>

	
		
		   </div>
                     </div>
                  </div>
               </dd>
            </div>
      </dl>
   </div>

   <div class="footer">
	   <div class="copyright">COPYRIGHT. WELLDING INC. ALL RIGHTS RESERVED</div>
   </div>

  
   
   

   

</body>
</html>