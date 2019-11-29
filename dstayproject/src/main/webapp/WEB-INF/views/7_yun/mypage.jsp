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
	      $(document).on("click",".setting-diet",function(){
	    	  editDietaryGoal();
	      });
	      $(document).on("click",".set-dietaryGoal",function(){
	    	 setDietaryGoal();
	      });
	      $(document).on("click",".gender-checker",function(){
	    	  $(".gender-checker").prev().prop("checked",false);
	    	  $(this).prev().prop("checked",true);
	    	  $(".gender-checker").removeClass("btn-red").removeClass("btn-white").addClass("btn-white");
	    	  $(this).addClass("btn-red").removeClass("btn-white");
	      });
	      
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
					  var str="<div class='diet-full-wrap'>"
				                    +"<div class='diet-header-wrap'>"
			                      +"<div class='setting-diet'>"
			                          +"<button class='btn-white'>목표설정</button>"
			                      +"</div>"
			                      +"<div class='search-diet-date'>"
			                          +"<input type='date' class='date-set'>"
			                      +"</div>"
			                  +"</div>"
			                  +"<div class='diet-receipt-wrap'>"
			                      +"<div class='diet-receipt-header'>"
			                          +"<h1>식사기록</h1>"
			                          +"<div class='edit-diet'>"
			                              +"<button class='btn-white' id='recode-edit'>수정</button>"
			                              +"<button class='btn-red' id='add-form-btn'>기록</button>"
			                          +"</div>"
			                      +"</div>"
			                      +"<div class='diet-receipt-body'>"
			                          +"<div class='diet-info'>"
			                              +"<div class='meal'>아침</div>"
			
			                              +"<div class='food-info-wrap'>"
			                                  +"<div class='food-info'>"
			                                      +"<div class='food-name'>김밥</div>"
			                                      +"<div class='food-calories'>345 kcal</div>"
			                                  +"</div>"
			                                  +"<div class='food-info'>"
			                                      +"<div class='food-name'>김밥</div>"
			                                      +"<div class='food-calories'>345 kcal</div>"
			                                  +"</div>"
			                              +"</div>"
			                              
			
			                          +"</div>"
			                          +"<div class='diet-info'>"
			                              +"<div class='meal'>점심</div>"
			
			                              +"<div class='food-info-wrap'>"
			                                  +"<div class='food-info'>"
			                                      +"<div class='food-name'>김밥</div>"
			                                      +"<div class='food-calories'>345 kcal</div>"
			                                  +"</div>"
			                                  +"<div class='food-info'>"
			                                      +"<div class='food-name'>김밥</div>"
			                                      +"<div class='food-calories'>345 kcal</div>"
			                                  +"</div>"
			                              +"</div>"
			                              
			
			                          +"</div>"
			                      +"</div>"
			                      +"<div class='diet-receipt-footer'>"
			                          +"<div class='diet-calories'>"
			                              +"<h3>목표칼로리</h3>"
			                              +"<span id='goal'>2400 kcal</span>"
			                          +"</div>"
			                          +"<div class='diet-calories'>"
			                              +"<h3>섭취칼로리</h3>"
			                              +"<span id='today'>2400 kcal</span>"
			                          +"</div>"
			                          +"<div class='diet-calories'>"
			                              +"<h3>남은 칼로리</h3>"
			                              +"<span>2400 kcal</span>"
			                          +"</div>"
			                      +"</div>"
			                  +"</div>";
			                  str+="</div>"
							  $myPage_content.html(str);
					  
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
				                 + "<div class='date-menu-wrap'>"
				                    +  "<div class='date-menu'>"
				                      +   "<input type='date' class='date-set'>"
				                      +    "<span> ~ </span>"
				                      +    "<input type='date' class='date-set'>"
					                      +"<div class='search-btn margin-left-10'>"
			                                +"<button class='btn-red'>검색</button>"
			                            	+"</div>"
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
			                      	// if문으로 걸러줄것
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
					  var str="<div class='review-list-wrap'>"
	                    		+"<div class='review-tag-wrap'>"
                      				+"<div class='review-tag review-tag-active'>작성가능 후기(1)</div>"
                      				+"<div class='review-tag'>작성완료 후기(2)</div>"
                  				+"</div>"
                  	$.each(data,function(i,v){
                  		str+="<div class='review-wrap'>"
		                        +"<div class='product-wrap'>"
			                                +"<a href='#'>"
			                        +"<div class='product-info'>"
			                            +"<div class='product-pic'>"
			                                    +"<img src='1c2e9916f18da0d832b65c2fe7b4f70c.jpg' alt=''>"
			                            +"</div>"
			                            +"<div class='product-name'>영양밥도시락</div>"
			                        +"</div>"
			                                +"</a>"
			                        +"<div class='purchase-date'>구매일 : 2019-11-20</div>"
			                        +"<div class='review-btn'>"
			                            +"<button class='btn-red'>후기작성</button>"
			                        +"</div>"
			                    +"</div>"
			                +"</div>"
                  	});
					  str+="</div>"
						$myPage_content.html(str);
				      	paging(url,page);
					  break;
				  case "coupon.do":
					  $myPageTitle.text("쿠폰");
					  $myPageTitleInfo.text("가지고계신 쿠폰을 확인하실 수 있습니다");
					  var str="<div class='order-list-header'>"
			                    +"<div class='order-no'>쿠폰번호</div>"
			                    +"<div class='coupon-info'>쿠폰이름</div>"
			                    +"<div class='coupon-date'>유효기간</div>"
			                    +"<div class='order-price'>할인정보</div>"
			                    +"<div class='order-status'>적용상품</div>"
			                +"</div>"
			          $.each(data,function(i,v){
			        	 str+="<div class='coupon-list'>"
			                    +"<div class='order-no'>"
			                        +1
			                    +"</div>"
			                    +"<div class='coupon-info'>"
			                        	+"쿠폰이름1"
			                    +"</div>"
			                    +"<div class='coupon-date'>"
			                        +"~2019-11-11"
			                    +"</div>"
			                    +"<div class='order-price-amount'>"
			                        +"<div class='order-price'>"
			                    		+"50000원"
			                    	+"</div>"
			                    +"</div>"
			                    +"<div class='coupon-status'>"
			                        +"<div class='btn-red'>전체</div>"
			                    +"</div>"
			                +"</div>"  
			          });
		                $myPage_content.html(str);
				      	paging(url,page);
					  
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
	  function editDietaryGoal(){
		  var $myPageTitle=$(".myPageTitle");
		  var $myPageTitleInfo=$(".myPageTitleInfo");
		  var $myPage_content=$(".myPage-content");
		  $myPageTitle.text("목표설정");
		  $myPageTitleInfo.text("목표를 설정해서 건강한 식단관리를 시작하세요");
		  $myPage_content.html("");
		  var str="<div class='diet-goal-wrap'>"

	          +"<div class='diet-info-wrap'>"
	
	              +"<div class='diet-info'>"
	                  +"<div class='diet-tag'>성별</div>"
	                  +"<div class='diet-input'>"
	                      +"<input type='radio' name='gender' value='M' style='display:none;'>"
	                      +"<button class='btn-white gender-checker'>남성</button>"
	                      +"<input type='radio' name='gender' value='F' style='display:none;'>"
	                      +"<button class='btn-white gender-checker margin-left-10'>여성</button>"
	                  +"</div>"
	              +"</div>"
	              +"<div class='diet-info'>"
	                  +"<div class='diet-tag'>키</div>"
	                  +"<div class='diet-input'>"
	                      +"<input type='number' max='300' min='100' name='height'> cm"
	                  +"</div>"
	              +"</div>"
	              +"<div class='diet-info'>"
	                  +"<div class='diet-tag'>몸무게</div>"
	                  +"<div class='diet-input'>"
	                      +"<input type='number' max='300' min='30' name='weight'> kg"
	                  +"</div>"
	              +"</div>"
	              +"<div class='diet-info'>"
	                  +"<div class='diet-tag'>목표 체중</div>"
	                  +"<div class='diet-input'>"
	                      +"<input type='number' max='300' min='30' name='targetWeight'> kg"
	                  +"</div>"
	              +"</div>"
	              +"<div class='diet-info'>"
	                  +"<div class='diet-tag'>나이</div>"
	                  +"<div class='diet-input'>"
	                      +"<input type='number' min='10' max='100' name='age'> 세"
	                  +"</div>"
	              +"</div>"
	              +"<div class='diet-info'>"
	                  +"<div class='diet-tag'>활동량</div>"
	                  +"<div class='diet-input'>"
	                      +"<input type='radio' name='workrate' value='1.2' id='workrate1'><label for='workrate1'>활동량이 없거나 낮다</label><br>"
	                      +"<input type='radio' name='workrate' value='1.375' id='workrate2'><label for='workrate2'>일주일에 2 회 정도 가벼운 운동</label><br>"
	                      +"<input type='radio' name='workrate' value='1.55' id='workrate3'><label for='workrate3'>일주일에 4 회 정도 적당한 운동</label><br>"
	                      +"<input type='radio' name='workrate' value='1.725' id='workrate4'><label for='workrate4'>일주일에 6 회 정도 일반 스포츠</label><br>"
	                      +"<input type='radio' name='workrate' value='1.9' id='workrate5'><label for='workrate5'>엘리트 운동선수이거나 매일 고강도 훈련</label>"
	                  +"</div>"
	              +"</div>"
	              +"<div class='diet-footer'>"
	                  +"<button class='btn-red set-dietaryGoal'>설정</button>"
	              +"</div>"
	          +"</div>"
	
	      +"</div>"
      $myPage_content.html(str);
	  }
	  function setDietaryGoal(){
		  var gender=$("input[name='gender']:checked").val();
		  console.log(gender);
		  var height=$("input[name='height']").val();
		  console.log(height);
		  var weight=$("input[name='weight']").val();
		  console.log(weight);
		  var targetWeight=$("input[name='targetWeight']").val();
		  console.log(targetWeight);
		  var age=$("input[name='age']").val();
		  console.log(age);
		  var workrate=$("input[name='workrate']:checked").val();
		  console.log(workrate);
		  
		  if(gender!=undefined){  
			  if(height>=100 && weight >=30 && targetWeight >= 30 && age >= 10 && workrate!=undefined){
				  var goalCalories = (6.25 * height)+(10 * weight)-(5 - age);
				  if(gender=='M'){
					 goalCalories=(goalCalories + 5)*workrate;
				  }else if(gender=='F'){
					 goalCalories=(goalCalories - 161)*workrate;
				  }
				  console.log(goalCalories);
				  if(weight>targetWeight){
					  goalCalories -= 500;
				  }else{
					  goalCalories += 500;
				  }
				  goalCalories=Math.floor(goalCalories);
				  $.ajax({
					  url:"setDietaryGoal.do",
					  data:{"gender":gender,"height":height,"weight":weight,"targetWeight":targetWeight,"age":age,"workrate":workrate,"goalCalories":goalCalories},
					  type:"post",
					  success:function(result){
						  if(result>0){
							  alert("수정 성공");
						  		roadMypageContent("diet.do",1);							  
						  }else{
							  alert("수정실패");
						  }
					  },
					  error:function(){
						  console.log("setDietaryGoal error");
					  }
					  
				  });
			  }else{
				alert("빈칸을 작성해주세요")  
			  }
		  }else{
			  alert("성별을 선택해주세요");
		  }
		  
	  }
	</script>
</body>
</html>