<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="${ pageContext.request.contextPath }/resources/css/7_yun/d-stay_myPage.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
	<meta charset="UTF-8">
	<style>
		a{
			text-decoration:none!important;
		}
		body{
			min-height:100%;
			height:auto!important;
			background:white!important;
		}
	</style>
<title>MYPAGE</title>
</head>
<body>
	<jsp:include page="../1_common/menubar.jsp"/>
    <div class="navWrap1">
        <nav class="nav1">
            <ul class="navUl1">

                <li class="navLi1">
                    <a href="home.do" class="myMenu menu-active">
                        <div class="menu-tag">홈</div>
                        <div class="bottom-bar">
                            <div class="bottom-box"></div>
                        </div>
                    </a>

                </li>
                <li class="navLi1">
                    <a href="diet.do" class="myMenu">
                        <div class="menu-tag">식단관리</div>
                        <div class="bottom-bar">
                            <div class="bottom-box"></div>
                        </div>
                    </a>

                </li>
                <li class="navLi1">
                    <a href="order.do" class="myMenu">
                        <div class="menu-tag">주문내역</div>
                        <div class="bottom-bar">
                            <div class="bottom-box"></div>
                        </div>
                    </a>

                </li>
                <li class="navLi1">
                    <a href="wishes.do" class="myMenu">
                        <div class="menu-tag">찜</div>
                        <div class="bottom-bar">
                            <div class="bottom-box"></div>
                        </div>
                    </a>

                </li>
                <li class="navLi1">
                    <a href="review.do" class="myMenu">
                        <div class="menu-tag">구매후기</div>
                        <div class="bottom-bar">
                            <div class="bottom-box"></div>
                        </div>
                    </a>

                </li>
                <li class="navLi1">
                    <a href="coupon.do" class="myMenu">
                        <div class="menu-tag">쿠폰</div>
                        <div class="bottom-bar">
                            <div class="bottom-box"></div>
                        </div>
                    </a>

                </li>
                <li class="navLi1">
                    <a href="info.do" class="myMenu">
                        <div class="menu-tag">개인정보</div>
                        <div class="bottom-bar">
                            <div class="bottom-box"></div>
                        </div>
                    </a>

                </li>
            </ul>
        </nav>
    </div>
    <div class="navWrap2">
        <nav class="nav2">
            <h1>MYPAGE</h1>
            <ul class="navUl2">

                <li class="navLi2">
                    <a href="home.do" class="myMenu2 menu-active">
                        <div class="menu-tag">홈</div>
                    </a>
                </li>
                <li class="navLi2">
                    <a href="diet.do" class="myMenu2">
                        <div class="menu-tag">식단관리</div>
                    </a>
                </li>
                <li class="navLi2">
                    <a href="order.do" class="myMenu2">
                        <div class="menu-tag">주문내역</div>
                    </a>
                </li>
                <li class="navLi2">
                    <a href="wishes.do" class="myMenu2">
                        <div class="menu-tag">찜</div>
                    </a>
                </li>
                <li class="navLi2">
                    <a href="review.do" class="myMenu2">
                        <div class="menu-tag">구매후기</div>
                    </a>
                </li>
                <li class="navLi2">
                    <a href="coupon.do" class="myMenu2">
                        <div class="menu-tag">쿠폰</div>
                    </a>
                </li>
                <li class="navLi2">
                    <a href="info.do" class="myMenu2">
                        <div class="menu-tag">개인정보</div>
                    </a>
                </li>
                <hr>

            </ul>
        </nav>
    </div>
    <div class="myPageWrap">
        <div class="myPageContentWrap">
            <div class="myPageHeader">
                <h1 class="myPageTitle"></h1>
                <div class="myPageTitleInfo"></div>
            </div>
            <div class="myPage-content">
                <div class="text-center margin-top-18">
				  <div class="spinner-border" style="width: 3rem; height: 3rem;" role="status">
				    <span class="sr-only">Loading...</span>
				  </div>
				</div>
            </div>
        </div>
    </div>
	<script>
	  $(function(){
		  var pathname=location.pathname;
		  var url=pathname.replace("/dstay/mypage/","");
		  roadMypageContent(url,1);
		  checkTag(url);
	      $(".navLi1").click(function(){
	          var tag=$(this).find(".myMenu").attr("href");
	          checkTag(tag);
	          var X=$(this).offset().left;
	          var _scrollX=$(".navUl1").scrollLeft();
	          $(".navUl1").scrollLeft(_scrollX+X-(screen.width/2)+($(this).outerWidth()/2));
	      })
	      $(".navLi2").click(function(){
	          var tag=$(this).find(".myMenu2").attr("href");
	          checkTag(tag);
	      })
	      $(document).on("click",".review-img-open>img",function(){
	          
	      })
	      $("a").click(function(e){
	      	e.preventDefault();
	      	var name=$(this).children().text();
	      	var url=$(this).attr("href");
	      	history.pushState(url,name,url);
	      	roadMypageContent(url,1);
	      })
	  })
	  function checkTag(tag){
		  $(".myMenu").removeClass("menu-active");
          $(".myMenu2").removeClass("menu-active");
          $(".myMenu[href='"+tag+"']").addClass("menu-active");
          $(".myMenu2[href='"+tag+"']").addClass("menu-active");
	  }
	  window.onpopstate = function(event) {
		  console.log("location: " + document.location + ", state: " + JSON.stringify(event.state));
		  roadMypageContent(event.state,1);
		  checkTag(event.state);
	  };
	  function roadMypageContent(url,page){
			  var $myPageTitle=$(".myPageTitle");
			  var $myPageTitleInfo=$(".myPageTitleInfo");
			  var $myPage_content=$(".myPage-content");
		  $.ajax({
			  url:"ajax"+url,
			  data:{url:url,page:page},
			  dataType:"json",
			  beforeSend:function(){
				var str="<div class='d-flex justify-content-center margin-top-18'>"
				  			+"<div class='spinner-border' style='width: 3rem; height: 3rem;' role='status'>"
				    			+"<span class='sr-only'>Loading...</span>"
				  			+"</div>"
						+"</div>"
				$myPage_content.html(str);
			  },
			  complete:function(data){
				  $myPageTitle.text("");
				  $myPageTitleInfo.text("");
				  $myPage_content.html("");
				  switch(url){
				  case "home.do":
					  $myPageTitle.text("유저님 환영합니다");
					  $myPageTitleInfo.text("회원님의 정보를 관리하여 편리하게 dstay를 이용하실 수 있습니다");
					  
					  
					  break;
				  case "diet.do":
					  $myPageTitle.text("식단관리");
					  $myPageTitleInfo.text("오늘의 식사를 입력해주세요");
					  
					  
					  break;
				  case "order.do":
					  $myPageTitle.text("주문내역");
					  $myPageTitleInfo.text("주문정보를 확인하실 수 있습니다");
					  var str="<div class='myPage-order-date'>"
				                  +"<div class='date-selector-wrap1'>"
				                      +"<div class='date-selector'>주문 시기</div>"
				                 +"</div>"
				                  +"<div class='date-selector-wrap2'>"
				                    +"<div class='date-selector menu-active'>"
				                    	+"<span>최근 1개월</span>"
				                   	+"</div>"
				                    	+"<div class='date-selector'><span>최근 3개월</span></div>"
				                    	+"<div class='date-selector'><span>최근 6개월</span></div>"
				                   		+"<div class='date-selector'><span>기간선택</span></div>"
				                 	+"</div>"
				                 + "<div class='date-menu-wrap' style='display:none'>"
				                    +  "<div class='date-menu'>"
				                      +   "<input type='date'>"
				                      +    "<span> ~ </span>"
				                      +    "<input type='date'>"
				                    +  "</div>"
				                +  "</div>"
				            +  "</div>"
				            +"<div class='myPage-order-list'>"
		                    	+"<div class='order-list-header'>"
		                        	+"<div class='order-no'>주문번호</div>"
		                        	+"<div class='item-info'>상품정보</div>"
		                        	+"<div class='order-date'>주문일자</div>"
		                        	+"<div class='order-price'>주문금액</div>"
		                        	+"<div class='order-status'>주문상태</div>"
		                    	+"</div>";
					  $.each(data,function(i,v){
						  str+="<div class='order-list'>"
				                  	+"<div class='order-no'>"
			                        	+"12456798213"
			                      	+"</div>"
			                      	+"<div class='item-info'>"
			                          	+"<div class='item-pic'>"
			                              	+"<a href='#'>"
			                                  	+"<img src='1c2e9916f18da0d832b65c2fe7b4f70c.jpg' alt=''>"
			                              	+"</a>"
			                          	+"</div>"
			                          	+"<div class='order-title'>"
			                              	+"<a href='#'>"
			                                  +"<div class='item-title'>"
			                                      	+"영양밥도시락"
			                                  +"</div>"
			                              	+"</a>"
			                          	+"</div>"
			                      	+"</div>"
			                      	+"<div class='order-date'>"
			                          +"2019-11-11"
			                      	+"</div>"
			                      	+"<div class='order-price-amount'>"
			                          +"<div class='order-price'>50000원</div>"
			                      	+"</div>"
			                      	+"<div class='order-status'>"
			                          +"<div class='delivery'>"
			                              +"<button class='d-menu'>배송조회</button>"
			                              +"<button class='d-menu'>환불신청</button>"
			                              +"<button class='d-menu'>교환신청</button>"
			                              +"<button class='d-menu'>구매확정</button>"
			                          +"</div>"
			                          +"<div class='reviewBtn'>"
			                              +"<button class='btn-red'>후기작성</button>"
			                          +"</div>"
			                      	+"</div>"
		                  		+"</div>"
					  });
					  str+="</div>"
				      $myPage_content.html(str);
				      paging(url,page);
				      
				      break;
				  case "wishes.do":
					  $myPageTitle.text("찜");
					  $myPageTitleInfo.text("찜하신 상품을 모아놓았습니다");
					  
					  
					  break;
				  case "review.do":
					  $myPageTitle.text("구매후기");
					  $myPageTitleInfo.text("구매하신 상품에 대한 후기를 남길 수 있습니다");
					  
					  
					  break;
				  case "coupon.do":
					  $myPageTitle.text("쿠폰");
					  $myPageTitleInfo.text("가지고계신 쿠폰을 확인하실 수 있습니다");
					  
					  
					  break;
				  case "info.do":
					  $myPageTitle.text("개인정보");
					  $myPageTitleInfo.text("dstay에서 사용될 회원님의 기본정보입니다");
					  var str="<div class='myProfile-wrap'>"
			                    +"<div class='myProfile myProfile-required'>"
			                        +"<div class='profile-title'>개인정보</div>"                        
			                        +"<ul class='margin-top-18'>"
			                            +"<li><span>아이디</span><div class='user-id'>(userid)</div></li>"
			                            +"<li><span>비밀번호</span><button class='btn-red max-width-180' id='change-pw'>변경하기</button></li>"
			                            +"<li><span>닉네임</span><div class='user-nickname'>(nickname)<button class='btn-red margin-left-10' id='change-nickname'>변경하기</button></div></li>"
			                            +"<li><span>휴대폰</span><div class='user-phone'>01011112222<button class='btn-red margin-left-10' id='change-phone'>변경하기</button></div></li>"
			                        +"</ul>"
			                    +"</div>"
			                    +"<div class='myProfile myProfile-address'>"
			                        +"<div class='profile-title'>주소지 관리</div>"
			                        +"<button class='btn-red margin-top-18' id='address'>주소지 관리</button>"
			                    +"</div>"
			                    +"<div class='myProfile myProfile-address'>"
			                        +"<div class='profile-title'>회원탈퇴</div>"
			                        +"<button class='btn-black margin-top-18' id='withdrawal'>탈퇴하기</button>"
			                    +"</div>"
							+"</div>";
						$myPage_content.html(str);
					  break;
				  }
			  },
			  error:function(){
				  console.log(url+"-error");
			  }
			  
		  })
	  }
	</script>
</body>
</html>