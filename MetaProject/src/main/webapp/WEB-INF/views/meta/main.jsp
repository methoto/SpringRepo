<!-- index.jsp -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html lang="ko">
<head>
<title>THOTH</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/main.css">
</head>

<!-- Script Source -->
	<script src="resources/js/jquery-3.6.0.min.js"></script>
	<script src="resources/js/jquery-ui-1.10.4.custom.min.js"></script>
	<script>
		$(document).ready(function(){

			$(window).scroll(function(){
				$("#txt1").text($(this).scrollTop());
			});


			//알림 , 프로필사진 호버시 나오는 메뉴
			$(".top-nav1>ul>li:nth-child(2)").hover(function(){
			$(this).find(">.an-menu").stop(true,true).slideDown();
			},function(){
			$(this).find(">.an-menu").stop(true,true).slideUp();
			});

			$(".top-nav1>ul>li:nth-child(3)").hover(function(){
			$(this).find(">.p-menu").stop(true,true).slideDown();
			},function(){
			$(this).find(">.p-menu").stop(true,true).slideUp();
			});

			//옆에서 나오는 메뉴
			$(".top-nav1 ul .open").click(function(){ //메뉴버튼 누르면 등장
			$(".top-nav2").animate({right:"0px"},250);
			});

			$(".top-nav2 .close").click(function(){ //닫기버튼 누르면 사라짐
			$(".top-nav2").animate({right:"-460px"},250);
			});


			$(".top-nav2 .sub-menu ul>li").click(function(){ //메뉴 누르면 서브메뉴 등장
			$(this).find(".sub-in-menu").slideToggle();
			});
			$(".top-nav2 .sub-menu ul>li").click(function(){ //다른메뉴 누를시 열려있는 서브메뉴 올라감
			$(".top-nav2 .sub-menu ul>li").not(this).find("ul").stop(true,true).slideUp(200);
			});
			$(".top-nav2 .close").click(function(){ //닫기버튼 누르면 열려있는 서브메뉴 올라감
			$(".top-nav2 .sub-menu ul>li .sub-in-menu").stop().slideUp();
			});

			/*슬라이드시 내려오는 메뉴 */
			$(".top-nav3>ul>li:nth-child(7)").click(function(){
			$(this).find(">.an-menu2").stop(true,true).slideToggle();
			});
			$(window).scroll(function(){

			if($(this).scrollTop()>=1300){
				$(".top-nav3").css({"top":"0px"});
			}else{
				$(".top-nav3").css({"top":"-80px"});
			}

			$(".top-nav3 ul li").hover(function(){ //메뉴오버시 내려오는 서브메뉴
				$(this).find(".sub-in-menu2").slideDown("fast");
			},function(){
				$(this).find(".sub-in-menu2").slideUp("fast");
			});

			$(".sub-in-menu2>li").hover(function(){
				$(".top-nav3>li").css({"color":"#222","background":"#fff"})
			});
		});

			//카드뉴스====================
			function slideAutoc(){

			$(".cardnews ul").stop(true,true).animate({marginLeft:"-=430px"},1000,function(){			
				$(".cardnews ul li:first-child").appendTo(".cardnews ul"); //첫번째 이미지 맨뒤로 이동
				$(this).css({marginLeft:"0px"}); //최종목적지
			}); 

			}
			auto=setInterval(slideAutoc,4000);

			//마우스를 올리면 슬라이드자동함수 멈추고, 마우스를 내리면 다시 자동함수 실행.....
			$(".cardnews").hover(function(){ 
			clearInterval(auto);  
			}, function(){
			auto=setInterval(slideAutoc,4000);
			});

			//다음보기
			$(".btn .right-btn").click(function(){

			clearInterval(auto);  

			$(".cardnews ul").stop(true,true).animate({marginLeft:"-=430px"},1000,function(){			
				$(".cardnews ul li:first-child").appendTo(".cardnews ul"); //첫번째 이미지 맨뒤로 이동
				$(this).css({marginLeft:"0px"}); //최종목적지
			});	

			auto=setInterval(slideAutoc,4000);

			});


			//이전보기
			$(".btn .left-btn").click(function(){

			clearInterval(auto); 

			$(".cardnews ul").stop(true,true).animate({marginLeft:"+=430px"},1000,function(){			
				$(".cardnews ul li:last-child").prependTo(".cardnews ul"); //첫번째 이미지 맨뒤로 이동
				$(this).css({marginLeft:"0px"}); //최종목적지
			});

			auto=setInterval(slideAutoc,4000);

			});

			//탑버튼
			$(window).scroll(function(){

			if($(this).scrollTop()>=1100){
				$(".topbtn").css({"opacity":"1"});
			}else{
				$(".topbtn").css({"opacity":"0"});
			}
			});
			$(".topbtn").click(function(){
				$("html,body").animate({scrollTop:"0"});
			});
		});
	</script>

<body>
	<div id="wrap">
		<p id="txt1">0</p>
		<div class="topbtn"><img src="resources/image/top.png" alt="top버튼"></div>
		<header>
			<div class="top">
				<div class="top-logo">
					<h1>METHOTH</h1>
				</div>
				<div class="top-title">
					<h2>WEB 3.0</h2>
				</div>
			</div>
			<div class="top-nav1">
				<ul>
					<li>
						<input type="search" placeholder="search..." class="search">
					</li>
					<li>
						<a href="#" onclick="return false">
							<img src="resources/image/a1.png" alt="알림">
						</a>
						<ul class="an-menu"> <!--알림메뉴-->
							<li>
								<a href="#">댓글</a>
							</li>
							<li>
								<a href="#">MENU</a>
							</li>
							<li>
								<a href="#">MENU</a>
							</li>
							<li>
								<a href="#">MENU</a>
							</li>
						</ul>
					</li>
					<li>
						<a href="#" onclick="return false">
							<img src="resources/image/p1.PNG" alt="프로필사진">
						</a>
						<ul class="p-menu">	<!--프로필 메뉴-->
							<li>
								<a href="#">프로필수정</a>
							</li>
							<li>
								<a href="#">회원정보수정</a>
							</li>
							<li>
								<a href="#">스크랩목록</a>
							</li>
							<li>
								<a href="login.do">로그인</a>
							</li>
						</ul>
					</li>
					<li class="open">
						<img src="resources/image/menu.png" alt="메뉴버튼">
					</li>
				</ul>
			</div>
			<div class="top-nav2"> <!--옆에서 나오는 메뉴-->
				<div class="me"> <!--프로필사진-->
					<img src="resources/image/p1.PNG" alt="프로필사진">
				</div>
				<div class="lv">
					<span>LV</span><span>닉네임</span>
				</div>
				<div class="close">
					<img src="resources/image/righr.png" alt="닫기">
				</div>
				
				<div class="line"></div>
				<div class="sub-menu">
					<ul>
						<li class="menu">
							<a href="#none">
								<p>메타버스 정보게시판</p>
							</a>
							<ul class="sub-in-menu">
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
								<p>메타버스 게임게시판</p>
							</a>
							<ul class="sub-in-menu"> <!--차후에 추가될 가능성 높음-->
								<li><a href="sub4-1.html">제페토</a></li>
								<li><a href="sub4-2.html">마인크래프트</a></li>
								<li><a href="sub4-3.html">디센트럴랜드</a></li>
								<li><a href="sub4-4.html">더 센드박스</a></li>
								<li><a href="sub4-5.html">포트나이트</a></li>
								<li><a href="sub4-6.html">로블록스</a></li>
							</ul>
						</li>
						<li>
							<a href="#none">
								<p>메타버스 부동산</p>
							</a>
							<ul class="sub-in-menu"> 
								<li><a href="sub5-1.html">메타버스2</a></li>
								<li><a href="sub5-2.html">어스2</a></li>
							</ul>
						</li>
						<li>
							<a href="sub6.html">NFT 작품게시판</a>
						</li>
					</ul>
				</div>
				<div class="p-menu2">
					<ul>
						<li>
							<img src="resources/image/icon1.png" alt="프로필수정">
							<a href="#">프로필수정</a>
						</li>
						<li>
							<img src="resources/image/icon2.png" alt="회원정보수정">
							<a href="#">회원정보<br>수정</a>
						</li>
						<li>
							<img src="resources/image/icon3.png" alt="스크랩목록">
							<a href="#">스크랩목록</a>
						</li>
					</ul>
				</div>
			</div>
			<!-- <div class="modar"><span></span></div> -->
			<div class="top-nav3"> <!--스크롤 내리면 니오는메뉴-->
				<div class="logo2">
					<a href="index.jsp"><h2>METHOTO</h2></a>
				</div>
				<ul>
					<li>
						<a href="#">
							<p>메타버스<br>정보게시판</p>
						</a>
						<ul class="sub-in-menu2">
							<li><a href="sub1-1.do">메타버스 카드뉴스</a></li>
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
					<li>
						<img src="resources/image/a1.png" alt="알림">
						<ul class="an-menu2"> <!--알림메뉴-->
							<li>
								<a href="#">댓글</a>
							</li>
							<li>
								<a href="#">MENU</a>
							</li>
							<li>
								<a href="#">MENU</a>
							</li>
							<li>
								<a href="#">MENU</a>
							</li>
						</ul>
					</li>
				</ul>
				<div class="top-nav3-bg"></div>
			</div>
		</header>
		<section>
			<div class="cardnews"> <!--테스트로 10개-->
				<div><h3><a href="sub1-1.do">메타버스 카드뉴스</a></h3></div>
				<ul>
					<li>
						<a href="#">
							<span class="in-box">
								<span class="in-box-title">==제목==</span>
								<span class="in-box-text"> ==본문==</span>
							</span>
							<p class="c-box">
								<img src="resources/image/c1.jpg" alt="테스트이미지">
							</p>
							<span>테스트 타이틀입니다.</span>
						</a>		
					</li>
					<li>
						<a href="#">
							<span class="in-box">
								<span class="in-box-title">==제목==</span>
								<span class="in-box-text"> ==본문==</span>
							</span>
							<p class="c-box">
								<img src="resources/image/c1.jpg" alt="테스트이미지">
							</p>
							<span>테스트 타이틀입니다.</span>
						</a>		
					</li>
					<li>
						<a href="#">
							<span class="in-box">
								<span class="in-box-title">==제목==</span>
								<span class="in-box-text"> ==본문==</span>
							</span>
							<p class="c-box">
								<img src="resources/image/c1.jpg" alt="테스트이미지">
							</p>
							<span>테스트 타이틀입니다.</span>
						</a>		
					</li>
					<li>
						<a href="#">
							<span class="in-box">
								<span class="in-box-title">==제목==</span>
								<span class="in-box-text"> ==본문==</span>
							</span>
							<p class="c-box">
								<img src="resources/image/c1.jpg" alt="테스트이미지">
							</p>
							<span>테스트 타이틀입니다.</span>
						</a>		
					</li>
					<li>
						<a href="#">
							<span class="in-box">
								<span class="in-box-title">==제목==</span>
								<span class="in-box-text"> ==본문==</span>
							</span>
							<p class="c-box">
								<img src="resources/image/c1.jpg" alt="테스트이미지">
							</p>
							<span>테스트 타이틀입니다.</span>
						</a>		
					</li>
					<li>
						<a href="#">
							<span class="in-box">
								<span class="in-box-title">==제목==</span>
								<span class="in-box-text"> ==본문==</span>
							</span>
							<p class="c-box">
								<img src="resources/image/c1.jpg" alt="테스트이미지">
							</p>
							<span>테스트 타이틀입니다.</span>
						</a>		
					</li>
					<li>
						<a href="#">
							<span class="in-box">
								<span class="in-box-title">==제목==</span>
								<span class="in-box-text"> ==본문==</span>
							</span>
							<p class="c-box">
								<img src="resources/image/c1.jpg" alt="테스트이미지">
							</p>
							<span>테스트 타이틀입니다.</span>
						</a>		
					</li>
					<li>
						<a href="#">
							<span class="in-box">
								<span class="in-box-title">==제목==</span>
								<span class="in-box-text"> ==본문==</span>
							</span>
							<p class="c-box">
								<img src="resources/image/c1.jpg" alt="테스트이미지">
							</p>
							<span>테스트 타이틀입니다.</span>
						</a>		
					</li>
					<li>
						<a href="#">
							<span class="in-box">
								<span class="in-box-title">==제목==</span>
								<span class="in-box-text"> ==본문==</span>
							</span>
							<p class="c-box">
								<img src="resources/image/c1.jpg" alt="테스트이미지">
							</p>
							<span>테스트 타이틀입니다.</span>
						</a>		
					</li>
					<li>
						<a href="#">
							<span class="in-box">
								<span class="in-box-title">==제목==</span>
								<span class="in-box-text"> ==본문==</span>
							</span>
							<p class="c-box">
								<img src="resources/image/c1.jpg" alt="테스트이미지">
							</p>
							<span>테스트 타이틀입니다.</span>
						</a>		
					</li>
				</ul>
				<div class="btn">
						<span class="left-btn"><img src="resources/image/left-btn.png" alt="왼쪽버튼"></span>
						<span class="right-btn"><img src="resources/image/right-btn.png" alt="왼쪽버튼"></span>

					<!-- <div class="left-btn"><img src="image/left_btn.png" alt="왼쪽버튼"></div>
					<div class="right-btn"><img src="image/right_btn.png" alt="왼쪽버튼"></div> -->
				</div>
			</div>
			
			<div id="line1"> <!--첫번째줄-->
				<div class="content1">
					<h3><a href="sub1-2.html">메타버스정보공유게시판</a></h3>
					<ul>
						<li>
							<a href="#">
								<p>테스트 제목입니다. 테스트 제목입니다.</p>
							</a>
						</li>
						<li>
							<a href="#">
								<p>테스트 제목입니다. 테스트 제목입니다.</p>
							</a>
						</li>
						<li>
							<a href="#">
								<p>테스트 제목입니다. 테스트 제목입니다.</p>
							</a>
						</li>
						<li>
							<a href="#">
								<p>테스트 제목입니다. 테스트 제목입니다.</p>
							</a>
						</li>
						<li>
							<a href="#">
								<p>테스트 제목입니다. 테스트 제목입니다.</p>
							</a>
						</li>
						<li>
							<a href="#">
								<p>테스트 제목입니다. 테스트 제목입니다.</p>
							</a>
						</li>
						<li>
							<a href="#">
								<p>테스트 제목입니다. 테스트 제목입니다.</p>
							</a>
						</li>
						<li>
							<a href="#">
								<p>테스트 제목입니다. 테스트 제목입니다.</p>
							</a>
						</li>
					</ul>
				</div>
				<div class="content2">
					<h3><a href="sub1-3.html">NFT 정보게시판</a></h3>
					<ul>
						<li>
							<a href="#">
								<p>테스트 제목입니다. 테스트 제목입니다.</p>
							</a>
						</li>
						<li>
							<a href="#">
								<p>테스트 제목입니다. 테스트 제목입니다.</p>
							</a>
						</li>
						<li>
							<a href="#">
								<p>테스트 제목입니다. 테스트 제목입니다.</p>
							</a>
						</li>
						<li>
							<a href="#">
								<p>테스트 제목입니다. 테스트 제목입니다.</p>
							</a>
						</li>
						<li>
							<a href="#">
								<p>테스트 제목입니다. 테스트 제목입니다.</p>
							</a>
						</li>
						<li>
							<a href="#">
								<p>테스트 제목입니다. 테스트 제목입니다.</p>
							</a>
						</li>
						<li>
							<a href="#">
								<p>테스트 제목입니다. 테스트 제목입니다.</p>
							</a>
						</li>
						<li>
							<a href="#">
								<p>테스트 제목입니다. 테스트 제목입니다.</p>
							</a>
						</li>
					</ul>
				</div>
			</div>
			<div id="line2"> <!--2번째줄-->
				<div class="content1">
					<h3><a href="sub2.html">자유게시판</a></h3>
					<ul>
						<li>
							<a href="#">
								<p>테스트 제목입니다. 테스트 제목입니다.</p>
							</a>
						</li>
						<li>
							<a href="#">
								<p>테스트 제목입니다. 테스트 제목입니다.</p>
							</a>
						</li>
						<li>
							<a href="#">
								<p>테스트 제목입니다. 테스트 제목입니다.</p>
							</a>
						</li>
						<li>
							<a href="#">
								<p>테스트 제목입니다. 테스트 제목입니다.</p>
							</a>
						</li>
						<li>
							<a href="#">
								<p>테스트 제목입니다. 테스트 제목입니다.</p>
							</a>
						</li>
						<li>
							<a href="#">
								<p>테스트 제목입니다. 테스트 제목입니다.</p>
							</a>
						</li>
						<li>
							<a href="#">
								<p>테스트 제목입니다. 테스트 제목입니다.</p>
							</a>
						</li>
						<li>
							<a href="#">
								<p>테스트 제목입니다. 테스트 제목입니다.</p>
							</a>
						</li>
					</ul>
				</div>
				<div class="content2">
					<h3><a href="sub4.html">Q/A 게시판</a></h3>
					<ul>
						<li>
							<a href="#">
								<p>테스트 제목입니다. 테스트 제목입니다.</p>
							</a>
						</li>
						<li>
							<a href="#">
								<p>테스트 제목입니다. 테스트 제목입니다.</p>
							</a>
						</li>
						<li>
							<a href="#">
								<p>테스트 제목입니다. 테스트 제목입니다.</p>
							</a>
						</li>
						<li>
							<a href="#">
								<p>테스트 제목입니다. 테스트 제목입니다.</p>
							</a>
						</li>
						<li>
							<a href="#">
								<p>테스트 제목입니다. 테스트 제목입니다.</p>
							</a>
						</li>
						<li>
							<a href="#">
								<p>테스트 제목입니다. 테스트 제목입니다.</p>
							</a>
						</li>
						<li>
							<a href="#">
								<p>테스트 제목입니다. 테스트 제목입니다.</p>
							</a>
						</li>
						<li>
							<a href="#">
								<p>테스트 제목입니다. 테스트 제목입니다.</p>
							</a>
						</li>
					</ul>
				</div>
			</div>
			<div id="line3"> <!--3번째줄-->
				<div class="line-sub1">	
						<h3><a href="sub4-1.html">메타버스 게임게시판</a></h3>
					<ul class="game-img">
						<li>
							<a href="#">
								<img src="resources/image/g1.PNG" alt="제페토이미지">
							</a>
						</li>
						<li>
							<a href="#">
								<img src="resources/image/g2.PNG" alt="마인크래프트">
							</a>
						</li>
					</ul>
					<ul class="content1">
						<li>
							<a href="#">
								<span>테스트</span><span>테스트 제목입니다. 테스트제목...</span>
							</a>
						</li>
						<li>
							<a href="#">
								<span>테스트</span><span>테스트 제목입니다. 테스트제목...</span>
							</a>
						</li>
						<li>
							<a href="#">
								<span>테스트</span><span>테스트 제목입니다. 테스트제목...</span>
							</a>
						</li>
						<li>
							<a href="#">
								<span>테스트</span><span>테스트 제목입니다. 테스트제목...</span>
							</a>
						</li>
						<li>
							<a href="#">
								<span>테스트</span><span>테스트 제목입니다. 테스트제목...</span>
							</a>
						</li>
						<li>
							<a href="#">
								<span>테스트</span><span>테스트 제목입니다. 테스트제목...</span>
							</a>
						</li>
					</ul>
				</div>
				<div class="line-sub2">
					<ul class="game-img">
						<li>
							<a href="#">
								<img src="resources/image/g3.PNG" alt="디센트럴랜드이미지">
							</a>
						</li>
						<li>
							<a href="#">
								<img src="resources/image/g4.PNG" alt="더센드박스이미지">
							</a>
						</li>
					</ul>
					<ul class="content2">
						<li>
							<a href="#">
								<span>테스트</span><span>테스트 제목입니다. 테스트제목...</span>
							</a>
						</li>
						<li>
							<a href="#">
								<span>테스트</span><span>테스트 제목입니다. 테스트제목...</span>
							</a>
						</li>
						<li>
							<a href="#">
								<span>테스트</span><span>테스트 제목입니다. 테스트제목...</span>
							</a>
						</li>
						<li>
							<a href="#">
								<span>테스트</span><span>테스트 제목입니다. 테스트제목...</span>
							</a>
						</li>
						<li>
							<a href="#">
								<span>테스트</span><span>테스트 제목입니다. 테스트제목...</span>
							</a>
						</li>
						<li>
							<a href="#">
								<span>테스트</span><span>테스트 제목입니다. 테스트제목...</span>
							</a>
						</li>
					</ul>
				</div>
			</div>
			<div id="line4"> <!--4번째줄 게시판-->
				<div class="line-sub1">
					<h3><a href="sub4-1.html">메타버스 게임게시판</a></h3>
					<ul class="game-img">
						<li>
							<a href="#">
								<img src="resources/image/g5.PNG" alt="포트나이트이미지">
							</a>
						</li>
						<li>
							<a href="#">
								<img src="resources/image/g6.PNG" alt="로블록스이미지">
							</a>
						</li>
					</ul>
					<ul class="content1">
						<li>
							<a href="#">
								<span>테스트</span><span>테스트 제목입니다. 테스트제목...</span>
							</a>
						</li>
						<li>
							<a href="#">
								<span>테스트</span><span>테스트 제목입니다. 테스트제목...</span>
							</a>
						</li>
						<li>
							<a href="#">
								<span>테스트</span><span>테스트 제목입니다. 테스트제목...</span>
							</a>
						</li>
						<li>
							<a href="#">
								<span>테스트</span><span>테스트 제목입니다. 테스트제목...</span>
							</a>
						</li>
						<li>
							<a href="#">
								<span>테스트</span><span>테스트 제목입니다. 테스트제목...</span>
							</a>
						</li>
						<li>
							<a href="#">
								<span>테스트</span><span>테스트 제목입니다. 테스트제목...</span>
							</a>
						</li>
					</ul>
				</div>
				<div class="line-sub2">
					<h3><a href="sub5-1.html">메타버스 부동산</a></h3>
					<ul class="game-img">
						<li>
							<a href="#">
								<img src="resources/image/b1.PNG" alt="메타버스2이미지">
							</a>
						</li>
						<li>
							<a href="#">
								<img src="resources/image/b2.PNG" alt="어스2이미지">
							</a>
						</li>
					</ul>
					<ul class="content2">
						<li>
							<a href="#">
								<span>테스트</span><span>테스트 제목입니다. 테스트제목...</span>
							</a>
						</li>
						<li>
							<a href="#">
								<span>테스트</span><span>테스트 제목입니다. 테스트제목...</span>
							</a>
						</li>
						<li>
							<a href="#">
								<span>테스트</span><span>테스트 제목입니다. 테스트제목...</span>
							</a>
						</li>
						<li>
							<a href="#">
								<span>테스트</span><span>테스트 제목입니다. 테스트제목...</span>
							</a>
						</li>
						<li>
							<a href="#">
								<span>테스트</span><span>테스트 제목입니다. 테스트제목...</span>
							</a>
						</li>
						<li>
							<a href="#">
								<span>테스트</span><span>테스트 제목입니다. 테스트제목...</span>
							</a>
						</li>
					</ul>
				</div>
			</div>
			<div id="line5"> <!--5번째줄 게시판-->
				<h3><a href="sub6.html">NFT 관련작품</a></h3>
				<div>
					<ul class="nft-list">
						<li>
							<a href="#">
								<img src="resources/image/nft1.PNG" alt="테스트이미지">
								<span class="nft-box">
									<span class="name">원작자:</span>
									<span class="money">가격:</span>
								</span>
							</a>
						</li>
						<li>
							<a href="#">
								<img src="resources/image/nft2.PNG" alt="테스트이미지">
								<span class="nft-box">
									<span class="name">원작자:</span>
									<span class="money">가격:</span>
								</span>
							</a>
						</li>
						<li>
							<a href="#">
								<img src="resources/image/nft3.PNG" alt="테스트이미지">
								<span class="nft-box">
									<span class="name">원작자:</span>
									<span class="money">가격:</span>
								</span>
							</a>
						</li>
						<li>
							<a href="#">
								<img src="resources/image/nft4.PNG" alt="테스트이미지">
								<span class="nft-box">
									<span class="name">원작자:</span>
									<span class="money">가격:</span>
								</span>
							</a>
						</li>
					</ul>
				</div>
			</div>
			<div id="line6"> <!--6번째줄 게시판-->
				<h3><a href="#">메타버스 관련유튜브</a></h3>
				<div class="line-sub">
				<ul class="utube-list">
						<li>
							<a href="#">
								<img src="resources/image/c1.jpg" alt="포트나이트이미지">
								<p class="u-box">
									<span class="u-title">테스트 제목입니다.</span>
								</p>
							</a>
						</li>
						<li>
							<a href="#">
								<img src="resources/image/c1.jpg" alt="포트나이트이미지">
								<p class="u-box">
									<span class="u-title">테스트 제목입니다.</span>
								</p>
							</a>
						</li>
						<li>
							<a href="#">
								<img src="resources/image/c1.jpg" alt="포트나이트이미지">
								<p class="u-box">
									<span class="u-title">테스트 제목입니다.</span>
								</p>
							</a>
						</li>
						<li>
							<a href="#">
								<img src="resources/image/c1.jpg" alt="포트나이트이미지">
								<p class="u-box">
									<span class="u-title">테스트 제목입니다.</span>
								</p>
							</a>
						</li>
					</ul>
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