<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<title>METHOTH</title>
<link rel="stylesheet" href="resources/css/login.css">
<link href="https://fonts.googleapis.com/css2?family=Bebas+Neue&family=Jua&display=swap" rel="stylesheet">
</head>
<!-- Script Source -->
<script src="resources/js/jquery-3.6.0.min.js"></script>
<script src="resources/js/jquery-ui-1.10.4.custom.min.js"></script>
<script>
	$(document).ready(function(){
			//로그인 화면 메뉴
		$(".top-nav4 ul li").hover(function(){ //메뉴오버시 내려오는 서브메뉴
			$(this).find(".sub-in-menu2").slideDown("fast");
		},function(){
			$(this).find(".sub-in-menu2").slideUp("fast");
		});
		$(".top-nav4>ul>li:nth-child(7)").click(function(){
			$(this).find(">.an-menu2").stop(true,true).slideToggle();
		});
	});
</script>
<body>
	<div id="wrap">
        <header>
			<div class="header-in">
				<div class="top-nav4"> <!--스크롤 내리면 니오는메뉴-->
					<div class="logo2">
						<a href="index.jsp"><h2>METHOTO</h2></a>
					</div>
					<ul>
						<li>
							<a href="#">
								<p>메타버스<br>정보게시판</p>
							</a>
							<ul class="sub-in-menu2">
								<li><a href="sub1-1.html">메타버스 카드뉴스</a></li>
								<li><a href="sub1-2.html">메타버스 정보공유</a></li>
								<li><a href="sub1-3.html">NFT 게시판</a></li>
							</ul>
						</li>
						<li>
							<a href="sub2.html">
								<p>자유게시판</p>
							</a>
						</li>
						<li>
							<a href="sub3.html">
								<p>Q/A게시판</p>
							</a>
						</li>
						<li>
							<a href="#none">
								<p>메타버스<br>게임게시판</p>
							</a>
							<ul class="sub-in-menu2"> <!--차후에 추가될 가능성 높음-->
								<li><a href="sub4-1.html">제페토</a></li>
								<li><a href="sub4-2.html">마인크래프트</a></li>
								<li><a href="sub4-3.html">디센트럴랜드</a></li>
								<li><a href="sub4-4.html">더 센드박스</a></li>
								<li><a href="sub4-5.html">포트나이트</a></li>
								<li><a href="sub4-6.html">로블록스</a></li>
							</ul>
						</li>
						<li>
							<a href="sub5.html">
								<p>메타버스<br>부동산</p>
							</a>
							<ul class="sub-in-menu2"> 
								<li><a href="sub6-1.html">메타버스2</a></li>
								<li><a href="sub6-2.html">어스2</a></li>
							</ul>
						</li>
						<li>
							<a href="sub6.html">NFT 작품게시판</a>
						</li>
					</ul>
					<div class="top-nav3-bg"></div>
				</div>
			</div>
        </header>
        <section>
        <div class="login-box">
			<div class="text">
				<a href="index.jsp"><h1>METHOTH</h1></a>
				<p>METHOTH 에 오신것을 환영합니다.</p>
			</div>
			<div class="login">
				<p class="login-text">
                    <label for="userid" class="labelstyle"></label>
                    <input type="text" id="userid" placeholder="ID" name="id">
                </p>
                <p class="login-text">
                    <label for="userpw" class="labelstyle"></label>
                    <input type="password" id="userpw" placeholder="password" name="pw">
                </p>
				<span class="in-box">
             	   <span>
						<input type="checkbox" id="saveid" name="saveid" value="saveidyes">
               	     <label for="saveid">아이디저장</label>
              	  </span>
					<span>
             	       <input type="checkbox" id="savelogin" name="savelogin" value="savelogins">
             	       <label for="savelogin">자동로그인</label>
            	    </span>
				</span>
            </div>
			<div class="login-btn">
				<p><input type="submit" value="로그인" class="btnlogin"></p>
			</div>
			<div class="help">
				<a href="join.do"></a><input type="submit" value="회원가입" class="btnsignup">
				<a href="findidpw.do"></a><input type="submit" value="ID/PW 찾기" class="btnlost">
			</div>
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