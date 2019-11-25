<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="${ pageContext.request.contextPath }/resources/css/7_yun/d-stay_myPage.css">
	<meta charset="UTF-8">
	<style>
		a{
			text-decoration:none!important;
		}
		body{
			height:auto!important;
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
                    <a href="home" class="myMenu menu-active">
                        <div class="menu-tag">홈</div>
                        <div class="bottom-bar">
                            <div class="bottom-box"></div>
                        </div>
                    </a>

                </li>
                <li class="navLi1">
                    <a href="diet" class="myMenu">
                        <div class="menu-tag">식단관리</div>
                        <div class="bottom-bar">
                            <div class="bottom-box"></div>
                        </div>
                    </a>

                </li>
                <li class="navLi1">
                    <a href="order" class="myMenu">
                        <div class="menu-tag">주문내역</div>
                        <div class="bottom-bar">
                            <div class="bottom-box"></div>
                        </div>
                    </a>

                </li>
                <li class="navLi1">
                    <a href="wishes" class="myMenu">
                        <div class="menu-tag">찜</div>
                        <div class="bottom-bar">
                            <div class="bottom-box"></div>
                        </div>
                    </a>

                </li>
                <li class="navLi1">
                    <a href="review" class="myMenu">
                        <div class="menu-tag">구매후기</div>
                        <div class="bottom-bar">
                            <div class="bottom-box"></div>
                        </div>
                    </a>

                </li>
                <li class="navLi1">
                    <a href="coupon" class="myMenu">
                        <div class="menu-tag">쿠폰</div>
                        <div class="bottom-bar">
                            <div class="bottom-box"></div>
                        </div>
                    </a>

                </li>
                <li class="navLi1">
                    <a href="info" class="myMenu">
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
                    <a href="home" class="myMenu2 menu-active">
                        <div class="menu-tag">홈</div>
                    </a>
                </li>
                <li class="navLi2">
                    <a href="diet" class="myMenu2">
                        <div class="menu-tag">식단관리</div>
                    </a>
                </li>
                <li class="navLi2">
                    <a href="order" class="myMenu2">
                        <div class="menu-tag">주문내역</div>
                    </a>
                </li>
                <li class="navUl2">
                    <a href="wishes" class="myMenu2">
                        <div class="menu-tag">찜</div>
                    </a>
                </li>
                <li class="navLi2">
                    <a href="review" class="myMenu2">
                        <div class="menu-tag">구매후기</div>
                    </a>
                </li>
                <li class="navLi2">
                    <a href="coupon" class="myMenu2">
                        <div class="menu-tag">쿠폰</div>
                    </a>
                </li>
                <li class="navLi2">
                    <a href="info" class="myMenu2">
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
                
            </div>
        </div>
    </div>
	<script>
	  $(function(){
	      $(".navLi1").click(function(){
	          $(".myMenu").removeClass("menu-active");
	          $(".myMenu2").removeClass("menu-active");
	          $(this).find(".myMenu").addClass("menu-active");
	          var tag=$(this).find(".myMenu").attr("href");
	          $(".myMenu2[href="+tag+"]").addClass("menu-active");
	          var X=$(this).offset().left;
	          var _scrollX=$(".navUl1").scrollLeft();
	          $(".navUl1").scrollLeft(_scrollX+X-(screen.width/2)+($(this).outerWidth()/2));
	      })
	      $(".navLi2").click(function(){
	    	  $(".myMenu").removeClass("menu-active");
	          $(".myMenu2").removeClass("menu-active");
	          $(this).find(".myMenu2").addClass("menu-active");
	          var tag=$(this).find(".myMenu2").attr("href");
	          $(".myMenu[href="+tag+"]").addClass("menu-active");
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
	  window.onpopstate = function(event) {
		  console.log("location: " + document.location + ", state: " + JSON.stringify(event.state));
	  };
	  function roadMypageContent(url,page){
		  $.ajax({
			  url:url+".do",
			  data:{page:page},
			  dataType:"json",
			  complete:function(data){
				  var $myPageTitle=$(".myPageTitle");
				  var $myPageTitleInfo=$(".myPageTitleInfo");
				  var $myPage_content=$(".myPage-content");
				  $myPageTitle.text("");
				  $myPageTitleInfo.text("");
				  $myPage_content.html("");
				  switch(url){
				  case "home":
					  $myPageTitle.text("유저님 환영합니다");
					  $myPageTitleInfo.text("회원님의 정보를 관리하여 편리하게 dstay를 이용하실 수 있습니다");
					  
					  
					  break;
				  case "diet":
					  $myPageTitle.text("식단관리");
					  $myPageTitleInfo.text("오늘의 식사를 입력해주세요");
					  
					  
					  break;
				  case "order":
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
				  case "wishes":
					  $myPageTitle.text("찜");
					  $myPageTitleInfo.text("찜하신 상품을 모아놓았습니다");
					  
					  
					  break;
				  case "review":
					  $myPageTitle.text("구매후기");
					  $myPageTitleInfo.text("구매하신 상품에 대한 후기를 남길 수 있습니다");
					  
					  
					  break;
				  case "coupon":
					  $myPageTitle.text("쿠폰");
					  $myPageTitleInfo.text("가지고계신 쿠폰을 확인하실 수 있습니다");
					  
					  
					  break;
				  case "info":
					  $myPageTitle.text("개인정보");
					  $myPageTitleInfo.text("dstay에서 사용될 회원님의 기본정보입니다");
					  
					  
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