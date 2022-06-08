<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<title>METHOTH</title>
<link rel="stylesheet" href="resources/css/signup.css">
<link href="https://fonts.googleapis.com/css2?family=Bebas+Neue&family=Jua&display=swap" rel="stylesheet">
</head>

<!-- Script Source -->
<script src="resources/js/jquery-3.6.0.min.js"></script>
<script src="resources/js/jquery-ui-1.10.4.custom.min.js"></script>
<script>
    $(document).ready(function(){

           //회원가입
            function checks(){
                var hobbyCheck = false;
                var getMail = RegExp(/^[A-Za-z0-9_\.\-]+@[A-Za-z0-9\-]+\.[A-Za-z0-9\-]+/);
                var getCheck= RegExp(/^[a-zA-Z0-9]{4,12}$/);
                var getName= RegExp(/^[가-힣]+$/);
                var fmt = RegExp(/^\d{6}[1234]\d{6}$/); //형식 설정
                var buf = new Array(13); //주민등록번호 배열

            //아이디 공백
            if($("#user_id").val() == ""){
                alert("필수정보입니다.");
                $("#user_id").focus();
                return false;
            }


            if(!getCheck.test($("#user_id").val())){
                alert("이미 사용중이거나 탈퇴한 아이디입니다.");
                $("#user_id").val("");
                $("#user_id").focus();
                return false;

            }
             //비밀번호 공백 확인
             if($("#user_pw1").val() == ""){
                alert("패스워드 입력바람");
                $("#user_pw1").focus();
                return false; 
            }
            //아이디 비밀번호 같음 확인
            if($("#user_id").val() == $("#user_pw1").val()){ 
                alert("아이디와 비밀번호가 같습니다"); 
                $("#user_pw1").val(""); 
                $("#user_pw1").focus(); 
                return false; 
            }
            //비밀번호 유효성검사
            if(!getCheck.test($("#user_pw1").val())){ 
                alert("8~16자 영문 대 소문자,숫자,특수문자를 사용하세요.");
                 $("#user_pw1").val(""); 
                 $("#user_pw1").focus(); return false; 
            }

            //비밀번호 확인란 공백 확인
            if($("#user_pw2").val() == ""){ 
                alert("패스워드 확인란을 입력해주세요"); 
                $("#user_pw2").focus(); return false; 
            }

            //닉네임 공백 확인 
            if($("#user_nickname").val() == ""){ 
                alert("이메일을 입력해주세요"); 
                $("#user_nickname").focus(); return false; 
            }

            //이메일 공백 확인 
            if($("#user_e-mail").val() == ""){ 
                alert("이메일을 입력해주세요"); 
                $("#user_e-mail").focus(); return false; 
            }

            //이름 공백 검사 
            if($("#user_name").val() == ""){ 
                alert("이름을 입력해주세요");
                 $("#user_name").focus(); return false; 
            }

            if(($("#id_num").val() == "") || ($("#id_num_back").val() == "")){ 
                alert("주민등록번호를 입력해주세요"); 
                $("#id_num").focus(); return false; 
            }

            if(check_jumin() ==false){
                return false; 
            }



            }

        /* 생년월일 */
        $(document).ready(function(){            
            var now = new Date();
            var year = now.getFullYear();
            var mon = (now.getMonth() + 1) > 9 ? ''+(now.getMonth() + 1) : '0'+(now.getMonth() + 1); 
            var day = (now.getDate()) > 9 ? ''+(now.getDate()) : '0'+(now.getDate());           
            //년도 selectbox만들기               
            for(var i = 1900 ; i <= year ; i++) {
                $('#year').append('<option value="' + i + '">' + i + '년</option>');    
            }

            // 월별 selectbox 만들기            
            for(var i=1; i <= 12; i++) {
                var mm = i > 9 ? i : "0"+i ;            
                $('#month').append('<option value="' + mm + '">' + mm + '월</option>');    
            }
            
            // 일별 selectbox 만들기
            for(var i=1; i <= 31; i++) {
                var dd = i > 9 ? i : "0"+i ;            
                $('#day').append('<option value="' + dd + '">' + dd+ '일</option>');    
            }
            $("#year  > option[value="+year+"]").attr("selected", "true");        
            $("#month  > option[value="+mon+"]").attr("selected", "true");    
            $("#day  > option[value="+day+"]").attr("selected", "true");       

        })
    });
</script>

<body>
	<div id="wrap">
        <header>
        <h1><a href="index.jsp">METHOTH</a></h1>
        </header>
        <section>
            <div class="id"> 
                <p class="title"><label for="user_id">아이디</label></p>	
	        	<p>
                    <input type="text" id="user_id" placeholder="" required>
                </p>
                <ul>
                    <li class="slig">필수정보입니다.</li>
                    <li class="use">사용 가능한 아이디입니다.</li>
                    <li class="not">이미 사용중이거나 탈퇴한 아이디입니다.</li>
                </ul>
            </div>
            <div class="password">
                <p class="title"><label for="user_pw1">비밀번호</label></p>

		        <p>
                    <input type="password" id="user_pw1" placeholder="" required>
                </p>
                <ul>
                    <li class="slig">필수정보입니다.</li>
                    <li class="not">8~16자 영문 대 소문자,숫자,특수문자를 사용하세요.</li>
                </ul>
                <p class="title"><label for="user_pw2">비밀번호 재확인</label></p>

	        	<p>
                    <input type="password" id="user_pw2" placeholder="" required>
                </p>
                <ul>
                    <li class="slig">필수정보입니다.</li>
                    <li class="not">비밀번호가 일치하지 않습니다.</li>
                </ul>
            </div>
            <div class="nickname">
                <p class="title"><label for="user_nickname">닉네임</label></p>	

	        	<p>
                    <input type="text" id="user_nickname" placeholder="" required>
                </p>
                <ul>
                    <li class="use">와우 ~! 멋진 닉네임이네요!</li>
                    <li class="muit">이미 사용중인 닉네임입니다.</li>
                    <li class="not">1~10자, 영문 대소문자 2~20자,숫자를 사용할수있습니다.(혼용가능)</li>
                </ul>
            </div>
            <div class="e-mail">
                <p class="title"><label for="user_e-mail">이메일</label></p>	

	        	<p>
                    <input type="text" id="user_e-mail" placeholder="" required>
                </p>
            </div>
            <div class="name">
                <p class="title"><label for="user_name">이름</label></p>	

	        	<p>
                    <input type="text" id="user_name" placeholder="" required>
                </p>
                <ul>
                    <li class="slig">필수정보입니다.</li>
                    <li class="not">한글과 영문 대 소문자를 사용하세요.(특수기호,공백 사용 불가)</li>
                </ul>
            </div>
            <div class="birth">
                <p class="title"><label for="user_year">생년월일</label></p>	

	        	<span>
                    <input type="text" id="user_year" placeholder="년" required>
                </span>
                <span>   
                    <select name="month">
                        <option value="j0">  월</option>
                        <option value="January">1월</option>
                        <option value="February">2월</option>
                        <option value="March">3월</option>
                        <option value="April">4월</option>
                        <option value="May">5월</option>
                        <option value="June">6월</option>
                        <option value="July">7월</option>
                        <option value="August">8월</option>
                        <option value="September">9월</option>
                        <option value="October">10월</option>
                        <option value="November">11월</option>
                        <option value="December">12월</option>
                    </select>
                </span>
	        	<span>
                   <!--  <input type="text" id="user_day" placeholder="일" required> -->
                   <select name="user_day">
                   <%
                   		for(int i=1; i <= 31; i++) {
                            int dd = i;            
                            out.print("<option value='"+dd+"' selected>"+dd+"일</option>");
                   			}
                     %>	
                   </select>
                </span>
                <p class="not">생년월일을 다시 확인해주세요.</p>
            </div>
            <div class="phone">
                <p class="title"><label for="user_phone">휴대전화</label></p>	

	        	<span>
                    <input class="in-text" type="text" id="user_phone" placeholder="전화번호 입력" required>
                </span>
                <span>
                    <button type="submit" name="submit">인증번호 발송</button>
                </span>
                <p class="max">
                    <input type="text" id="user_num" placeholder="인증번호 입력" required>
                </p>
                <p class="max2">
                    <button type="submit" name="submit">가입하기</button>
                </p>
            </div>
        </section>
        <footer>
			<div class="fot">
				<h2>Fotter</h2>
			</div>
		</footer>
	</div>
</body>
</html>
</body>
</html>