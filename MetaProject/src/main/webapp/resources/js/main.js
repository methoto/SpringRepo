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

    if($(this).scrollTop()>=1500){
        $(".topbtn").css({opacity:"1"});
    }else{
        $(".topbtn").css({"opacity":"0"});
    }
});

$(".topbtn").click(function(){
    $("html,body").animate({scrollTop:"0"});
});


});