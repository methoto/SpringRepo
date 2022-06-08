<!doctype html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html lang="ko">
<head>
<title>METHOTH</title>
<link rel="stylesheet" href="resources/css/findIDPW.css">
<link href="https://fonts.googleapis.com/css2?family=Bebas+Neue&family=Jua&display=swap" rel="stylesheet">
</head>
<body>
<script src="js/jquery-3.6.0.min.js"></script>
<script src="js/jquery-ui-1.10.4.custom.min.js"></script>
<script type="text/javascript" src="http://code.jquery.com/jquery-1.12.4.min.js"></script>
<script>
$(document).ready(function(){

    /*아이디 찾기 모달*/
    $(".id-phone").click(function(){
        $(".modar-id-phone").fadeIn();
        $(".modar-bg").fadeIn();
    });
    $(".id-mail").click(function(){
        $(".modar-id-mail").fadeIn();
        $(".modar-bg").fadeIn();
    });

    /*비밀번호 찾기 모달*/
    $(".pw-phone").click(function(){
        $(".modar-pw-phone").fadeIn();
        $(".modar-bg").fadeIn();
    });
    $(".pw-mail").click(function(){
        $(".modar-pw-mail").fadeIn();
        $(".modar-bg").fadeIn();
    });

    /*모달창 닫기*/
    $(".modar .close").click(function(){
        $(".modar").fadeOut();
        $(".modar-bg").fadeOut();
    });

});


</script>
	<div id="wrap">
        <header>
            <h1><a href="metaproject.do">METHOTH</a></h1>
        </header>
        <section>
            <div class="id-menu">
                <p class="top-name">아이디 찾기</p>
                <p class="top-sub">
                    아이디를 잊어버리셨다면<br>
                    가능한 방법으로 <strong>아이디 찾기</strong>를 선택하세요.
                </p>
                <ul>
                    <li class="id-phone">
                        <p>휴대폰으로 찾기</p>
                        <img src="resources/image/mobile.png" alt="모바일 아이콘">
                    </li>
                    <li class="id-mail">
                        <p>이메일로 찾기</p>
                        <img src="resources/image/email.png" alt="이메일 아이콘">
                    </li>
                </ul>
            </div>
            <div class="id-menu">
                <p class="top-name">비밀번호 찾기</p>
                <p class="top-sub">
                    아이디를 잊어버리셨다면<br>
                    가능한 방법으로 <strong>비밀번호 찾기</strong>를 선택하세요.
                </p>
                <ul>
                    <li class="pw-phone">
                        <p>휴대폰으로 찾기</p>
                        <img src="resources/image/mobile.png" alt="모바일 아이콘">
                    </li>
                    <li  class="pw-mail">
                        <p>이메일로 찾기</p>
                        <img src="resources/image/email.png" alt="이메일 아이콘">
                    </li>
                </ul>
            </div>

            <!--휴대폰으로 아이디-->
            <div class="modar modar-id-phone">
                <div class="modar-in">
                    <p>휴대폰으로 아이디 찾기</p>
                    <img src="resources/image/close.png" alt="닫기" class="close">
                    <span class="line"></span>
                    <ul>
                        <li class="in-name">
                            <label for="name1" class="labelstyle"></label>
                            <input type="text" id="name1" placeholder="이름" name="name1">
                        </li>
                        <li>
                            <label for="phone1" class="labelstyle"></label>
                            <input type="text" id="phone1" placeholder="휴대폰 번호 ('-' 빼고 입력)" name="phone1">
                            <span><input type="submit" value="인증번호 전송" class="id-btn"></span>
                        </li>
                        <li>
                            <label for="cer-number1" class="labelstyle"></label>
                            <input type="text" id="cer-number1" placeholder="인증번호 입력" name="cer-number1">
                            <span><input type="submit" value="인증번호 확인" class="id-btn"></span>
                        </li>
                        <li>
                            <span><input type="submit" value="확인" class="ok-btn"></span>
                        </li>
                    </ul>
                </div>
            </div>

             <!--이메일으로 아이디-->
             <div class="modar modar-id-mail">
                <div class="modar-in">
                    <p>이메일로 아이디 찾기</p>
                    <img src="resources/image/close.png" alt="닫기" class="close">
                    <span class="line"></span>
                    <ul>
                        <li class="in-name">
                            <label for="name2" class="labelstyle"></label>
                            <input type="text" id="name2" placeholder="이름" name="name2">
                        </li>
                        <li>
                            <label for="mail1" class="labelstyle"></label>
                            <input type="text" id="mail1" placeholder="이메일" name="mail1">
                            <span><input type="submit" value="인증번호 전송" class="id-btn"></span>
                        </li>
                        <li>
                            <label for="cer-number2" class="labelstyle"></label>
                            <input type="text" id="cer-number2" placeholder="인증번호 입력" name="cer-number2">
                            <span><input type="submit" value="인증번호 확인" class="id-btn"></span>
                        </li>
                        <li>
                            <span><input type="submit" value="확인" class="ok-btn"></span>
                        </li>

                    </ul>
                </div>
            </div>

            
            <!--휴대폰으로 비밀번호-->
            <div class="modar modar-pw-phone">
                <div class="modar-in .modar-pw">
                    <p>휴대폰으로 비밀번호 찾기</p>
                    <img src="resources/image/close.png" alt="닫기" class="close">
                    <span class="line"></span>
                    <ul>
                        <li class="in-id">
                            <label for="mail-id1" class="labelstyle"></label>
                            <input type="text" id="mail-id1" placeholder="아이디" name="mail-id1">
                        </li>
                        <li class="in-name">
                            <label for="name3" class="labelstyle"></label>
                            <input type="text" id="name3" placeholder="이름" name="name3">
                        </li>
                        <li>
                            <label for="phone2" class="labelstyle"></label>
                            <input type="text" id="phone2" placeholder="휴대폰 번호 ('-' 빼고 입력)" name="phone2">
                            <span><input type="submit" value="인증번호 전송" class="id-btn"></span>
                        </li>
                        <li>
                            <label for="cer-number3" class="labelstyle"></label>
                            <input type="text" id="cer-number3" placeholder="인증번호 입력" name="cer-number3">
                            <span><input type="submit" value="인증번호 확인" class="id-btn"></span>
                        </li>
                        <li>
                            <span><input type="submit" value="확인" class="ok-btn"></span>
                        </li>
                    </ul>
                </div>
            </div>

            <!--이메일로 비밀번호-->
            <div class="modar modar-pw-mail">
                <div class="modar-in .modar-pw">
                    <p>이메일로 비밀번호 찾기</p>
                    <img src="resources/image/close.png" alt="닫기" class="close">
                    <span class="line"></span>
                    <ul>
                        <li class="in-id">
                            <label for="mail-id2" class="labelstyle"></label>
                            <input type="text" id="mail-id2" placeholder="아이디" name="mail-id2">
                        </li>
                        <li class="in-name">
                            <label for="name4" class="labelstyle"></label>
                            <input type="text" id="name4" placeholder="이름" name="name4">
                        </li>
                        <li>
                            <label for="mail2" class="labelstyle"></label>
                            <input type="text" id="mail2" placeholder="이메일" name="mail2">
                            <span><input type="submit" value="인증번호 전송" class="id-btn"></span>
                        </li>
                        <li>
                            <label for="cer-number4" class="labelstyle"></label>
                            <input type="text" id="cer-number4" placeholder="인증번호 입력" name="cer-number4">
                            <span><input type="submit" value="인증번호 확인" class="id-btn"></span>
                        </li>
                        <li>
                            <span><input type="submit" value="확인" class="ok-btn"></span>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="modar-bg"></div>

            
        </section>
        <footer>
			<div class="fot">
				<h2>Footer</h2>
			</div>
		</footer>
	</div>

</body>
</html>