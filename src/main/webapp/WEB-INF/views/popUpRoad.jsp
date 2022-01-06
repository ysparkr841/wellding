<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script>
        function popUpExit()
        {
            
            //체크박스에 값이 체크인 상태라면 쿠키를 만들어줌. close속성이 Yes이고 유효기간이 하루인 쿠키를 만들어 줌.
            //만약 일주일동안 보지 않기면, 1자리에 7을 넣어주면 됨. 계산은 setCookie메소드에서 알아서 함.
            //1을 넣으면 알아서 1을 GMT time으로 변환하도록 toUTCString() 메소드를 사용하기 때문.
            //여기서 close와 Yes는 무엇인가? => 별거 아님 그냥 내가 설정하는 것임. name=value인 값을 임의로 넣는 것.
            if($("input[name=checkPop]").is(":checked") == true)
            {
               setCookie("close", "Yes", 1);
            }else
            {
                //쿠키 삭제 이 메소드도 아래에 정의되어 있음. 내가 정의한 메소드를 사용한 것.
                deleteCookie();
            }
        }
	
        //오늘 하루 열지 않기라는 a태그를 눌렀을 때 쿠키 생성 후 팝업창 닫기.
        function popUpExit2()
        {
            setCookie("close", "Yes", 1);
            $("#popUp").hide();
            window.close();
        }

        //창닫기 누르면 쿠키는 생성하지 않고 창을 종료
        function hidePop()
        {
            $("#popUp").hide();
            window.close();
        }

        //쿠키 삭제 메서드, 사실상 삭제가 아니라 만료시켜버림. 
        function deleteCookie()
        {
            document.cookie = "close" + '=Yes; expires=Thu, 01 Jan 1970 00:00:01 GMT;';
        }

        //쿠키 값을 넣어주는 로직
        //setTime 메소드에 getTime메소드로 현재 시간을 얻어서 거기에 하루만큼의 시간을 밀리초로 변환해서 추가해줌
        //expires 변수에 속성이 되는 expires=까지 하드코딩 해주고 날짜는 GMT 포맷으로 변경해야 되기 때문에
        //toUTCString()메서드를 사용함, 물론 바로 갖다 붙여도 되자만, 날짜를.toUTCString()으로 해야하기 때문에 미리 변수로 잡는 것이 편리함.
        //temp변수에 속성:값을 쌍으로 하드코딩해서 넣어주고, ; 구분자도 신경 써줘야 함.
        //document.cookie에 temp로 넣어준 쿠키의 값을 대입만 해주면 됨.
        function setCookie(name, value, timeEnd)
        {
        	//매개변수로 3개의 값을 받아야 하는 메소드임.
            //각각 쿠키 name과 value가 되는 값(나는 close, Yes로 해놨음)
            //timeEnd변수는 쿠키의 유효기한을 몇일로 할지를 받는 매개변수임.
            //몇이 오든 24*60*60*1000을 해서 밀리초로 바꿈.
            var Cdate = new Date();
            Cdate.setTime(Cdate.getTime() + (timeEnd*24*60*60*1000));
            var expiresDay= "expires="+Cdate.toUTCString();
            var tmp = name + "=" + value + "; path=/;"+expiresDay;
            document.cookie = tmp;
            //expires는 유효기간, 쿠키는 꼭 유효기간을 설정해줘야 함.
            //여기서 path=/;이거는 그냥 팝업 속성 중 하나인데, 이 쿠키를 어떤 폴더까지 가지고 있을 수 있는지 뭐 그런거.
            // path에 /로 하면, 어디서든 접근 가능
            /*
            	참고글
            	Path 속성은 일부러 지정하는 경우가 많은데 특정 경로(폴더명)를 설정한다.

				Path 속성은 /폴더/ 로 설정되는데, 이렇게 설정한 Path 속성이 설정되면 현재 폴더 또는 현재 폴더의 하위에서 접근할 수 있다.
				
				Path 속성을 ' / '로 설정하면 도메인 내의 모든 곳에서 접근할 수 있다.
            
            */
        }
    </script>
</head>
<body>
    <div name="popUp" id="popUp">
        <img src="https://image.ytn.co.kr/general/jpg/2019/1111/201911110022200336_t.jpg" alt="이미지" width="480" height="450">
        <br />
        <a href="javascript:void(0)" onclick="popUpExit2()">오늘 하루 열지않기</a>
        <input type="checkbox" name="checkPop" id="checkPop" onclick="popUpExit()">
        <a href="javascript:void(0)" onclick="hidePop()">창 닫기</a>
    </div>
</body>
</html>