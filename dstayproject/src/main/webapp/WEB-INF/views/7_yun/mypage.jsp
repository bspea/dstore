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
                    <a href="info.do" class="myMenu">
                        <div class="menu-tag">개인정보</div>
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
                
            </ul>
        </nav>
    </div>
    <div class="navWrap2">
        <nav class="nav2">
            <h1>MYPAGE</h1>
            <ul class="navUl2">

                <li class="navLi2">
                    <a href="info.do" class="myMenu2">
                        <div class="menu-tag">개인정보</div>
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
	var reviewPoint=5;
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
	      $(document).on("click",".myMenu",function(e){
	      	e.preventDefault();
	      	var name=$(this).children().text();
	      	var url=$(this).attr("href");
	      	history.pushState(url,name,url);
	      	roadMypageContent(url,1);
	      })
	      $(document).on("click",".myMenu2",function(e){
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
	      $(document).on("click","#change-pw",function(){
	    	  pwChangeForm();
	      })
	      $(document).on("click","#to-info",function(){
	    	  roadMypageContent("info.do",1);
	      })
	      $(document).on("click","#change-nickname",function(){
	    	  nicknameChangeForm();
	      })
	      $(document).on("click",".date-selector",function(){
	    	 $(".date-selector").removeClass("menu-active");
	    	 $(this).addClass("menu-active");
	    	 var date=$(this).text();
	    	 switch(date){
		    	 case "1개월":$(".date-menu-wrap").attr("style","display:none"); searchOrderMonth(1,1); break;
		    	 case "3개월":$(".date-menu-wrap").attr("style","display:none"); searchOrderMonth(3,1); break;
		    	 case "6개월":$(".date-menu-wrap").attr("style","display:none"); searchOrderMonth(6,1); break;
		    	 case "기간선택": $(".date-menu-wrap").attr("style","display:flex");break;
	    	 }
	      });
	      $(document).on("click","#order-search",function(){
	    	 var startDate=$("input[name='startDate']").val();
	    	 var endDate=$("input[name='endDate']").val();
	    	 searchOrder(startDate,endDate,1);
	      });
        $(document).on("click",".reviewStar",function(){
            $(".reviewStar").attr("src","${ pageContext.request.contextPath }/resources/images/7_yun/staroff.png");
        });
        $(document).on("click","#point1",function(){
            $(".reviewStar").eq(0).attr("src","${ pageContext.request.contextPath }/resources/images/7_yun/staron.png");
            reviewPoint=1;
        });
        $(document).on("click","#point2",function(){
            $(".reviewStar").eq(0).attr("src","${ pageContext.request.contextPath }/resources/images/7_yun/staron.png");
            $(".reviewStar").eq(1).attr("src","${ pageContext.request.contextPath }/resources/images/7_yun/staron.png");
            reviewPoint=2;
        });
        $(document).on("click","#point3",function(){
            $(".reviewStar").eq(0).attr("src","${ pageContext.request.contextPath }/resources/images/7_yun/staron.png");
            $(".reviewStar").eq(1).attr("src","${ pageContext.request.contextPath }/resources/images/7_yun/staron.png");
            $(".reviewStar").eq(2).attr("src","${ pageContext.request.contextPath }/resources/images/7_yun/staron.png");
            reviewPoint=3;
        });
        $(document).on("click","#point4",function(){
            $(".reviewStar").eq(0).attr("src","${ pageContext.request.contextPath }/resources/images/7_yun/staron.png");
            $(".reviewStar").eq(1).attr("src","${ pageContext.request.contextPath }/resources/images/7_yun/staron.png");
            $(".reviewStar").eq(2).attr("src","${ pageContext.request.contextPath }/resources/images/7_yun/staron.png");
            $(".reviewStar").eq(3).attr("src","${ pageContext.request.contextPath }/resources/images/7_yun/staron.png");
            reviewPoint=4;
        });
        $(document).on("click","#point5",function(){
            $(".reviewStar").eq(0).attr("src","${ pageContext.request.contextPath }/resources/images/7_yun/staron.png");
            $(".reviewStar").eq(1).attr("src","${ pageContext.request.contextPath }/resources/images/7_yun/staron.png");
            $(".reviewStar").eq(2).attr("src","${ pageContext.request.contextPath }/resources/images/7_yun/staron.png");
            $(".reviewStar").eq(3).attr("src","${ pageContext.request.contextPath }/resources/images/7_yun/staron.png");
            $(".reviewStar").eq(4).attr("src","${ pageContext.request.contextPath }/resources/images/7_yun/staron.png");
            reviewPoint=5;
        });
        $(document).on("click","#to-review",function(){
        	roadMypageContent("review.do",1);
        });
        $(document).on("click","#recode-edit",function(){
        	var list=$("input[name='dietNo']:checked");
      		var date=$(".date-set").val();
        	$.each(list,function(i,v){
        		var fmno=v.value;
        		removeDiet(fmno,date);
        	})
        });
        $(document).on("click","#add-form-btn",function(){
        	var date=$(".date-set").val();
        	addDietForm(date);
        });
        $(document).on("click","#load-orderlist",function(){
        	var date=$(".date-set").val();
        	addDietForm(date);
        });
        $(document).on("click","#self-write",function(){
        	var date=$(".date-set").val();
        	addDietSelfForm(date);
        });
        
        $(document).on("click","#self-add",function(){
        	var noteBody=$(".note-body");
        	var str="<div class='self-list'>"
			            +"<input type='text' placeholder='음식이름' name='food'>"
			            +"<input type='number' placeholder='칼로리' name='calories'>"
			            +"<div>"
			                +"<button class='btn-red remove-selfDiet'>-</button>"
			            +"</div>"
        			+"</div>"
        	noteBody.append(str);
        });
        $(document).on("click",".remove-selfDiet",function(){
        	$(this).parent().parent().remove();
        });
        $(document).on("click","#recode-ordered",function(){
        	var date=$(".date-set").val();
        	if(date==""){
        		recodeOrderedDietToday();
        	}else{
        		recodeOrderedDiet(date);        		
        	}
        	location.reload()
        });
        $(document).on("click","#recode-selfDiet",function(){
        	var date=$(".date-set").val();
        	var namelist=$("input[name='food']");
        	var calorieslist=$("input[name='calories']");
        	for(var i=0;i<namelist.length;i++){
        		if(namelist[i].value.trim()==""||calorieslist[i].value.trim()==""){
        			alert("빈칸을 작성해주세요");
        		}else{
		        	if(date==""){
		        		recodeSelfDietToday(namelist[i].value,calorieslist[i].value);
		        	}else{
		        		recodeSelfDiet(date,namelist[i].value,calorieslist[i].value);        		
		        	}
        		}
        		
        	}
        	location.reload()
        });
        $(document).on("click","#withdrawal",function(){
        	if(confirm("정말 탈퇴하시겠습니까?")){
        		location.href="withdrawal.do";
        	}
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
			  type:"post",
			  beforeSend:function(){
				var str="<div class='d-flex justify-content-center margin-top-18'>"
				  			+"<div class='spinner-border' style='width: 3rem; height: 3rem;' role='status'>"
				    			+"<span class='sr-only'>Loading...</span>"
				  			+"</div>"
						+"</div>"
				$myPage_content.html(str);
			  },
			  success:function(data){
				  $myPageTitle.text("");
				  $myPageTitleInfo.text("");
				  $myPage_content.html("");
				  switch(url){
				  
				  case "diet.do":
					  console.log("${dg.goalCalories}")
					  $myPageTitle.text("식단관리");
					  $myPageTitleInfo.text("오늘의 식사를 입력해주세요");
					  var str="<div class='diet-full-wrap'>"
				                    +"<div class='diet-header-wrap'>"
			                      +"<div class='setting-diet'>"
			                          +"<button class='btn-white'>목표설정</button>"
			                      +"</div>"
			                      +"<div class='search-diet-date'>"
			                          +"<input type='date' class='date-set' onchange='selectMyDietList()'>"
			                      +"</div>"
			                  +"</div>"
			                  +"<div class='diet-receipt-wrap'>"
			                      +"<div class='diet-receipt-header'>"
			                          +"<h1>식사기록</h1>"
			                          +"<div class='edit-diet'>"
			                              +"<button class='btn-white' id='recode-edit'>선택삭제</button>"
			                              +"<button class='btn-red' id='add-form-btn'>기록</button>"
			                          +"</div>"
			                      +"</div>"
			                      +"<div class='diet-receipt-body'>"
			                      var breakfast="<div class='diet-info'><div class='meal'>아침</div><div class='food-info-wrap'>"
			                      var lunch="<div class='diet-info'><div class='meal'>점심</div><div class='food-info-wrap'>"
			                      var dinner="<div class='diet-info'><div class='meal'>저녁</div><div class='food-info-wrap'>"
			                      var snack="<div class='diet-info'><div class='meal'>간식</div><div class='food-info-wrap'>"
			                      var hasBf=false;
			                      var hasL=false;
			                      var hasD=false;
			                      var hasS=false;
                            	  var bf="";
                            	  var l="";
                            	  var d="";
                            	  var s="";
			                      var totalCalories=0;
			                      var goalCalories=${dg.goalCalories}
			                      $.each(data,function(i,v){
			                    	  totalCalories+=v.calories;
			                              switch(v.type){
			                              case "아침":
			                            	  bf+="<div class='food-info'><input type='checkbox' name='dietNo' value='"+v.no+"'><div class='food-name'>"+v.foodName+"</div><div class='food-calories'>"+v.calories+"kcal</div></div>"
			                            	  hasBf=true;
			                            	  break;
			                              case "점심":
			                            	  l+="<div class='food-info'><input type='checkbox' name='dietNo' value='"+v.no+"'><div class='food-name'>"+v.foodName+"</div><div class='food-calories'>"+v.calories+"kcal</div></div>"
			                            	  hasL=true;
			                            	  break;
			                              case "저녁":
			                            	  d+="<div class='food-info'><input type='checkbox' name='dietNo' value='"+v.no+"'><div class='food-name'>"+v.foodName+"</div><div class='food-calories'>"+v.calories+"kcal</div></div>"
			                            	  hasD=true;
			                            	  break;
			                              case "간식":
			                            	  s+="<div class='food-info'><input type='checkbox' name='dietNo' value='"+v.no+"'><div class='food-name'>"+v.foodName+"</div><div class='food-calories'>"+v.calories+"kcal</div></div>"
			                            	  hasS=true;
			                            	  break;
			                              }
			                    	  
			                      })
					                  bf+="</div></div>";
					                  l+="</div></div>";
					                  d+="</div></div>";
					                  s+="/div></div>";
					                  
					                  if(hasBf){
					                	  str+=breakfast+bf;
					                  }
					                  if(hasL){
					                	  str+=lunch+l;
					                  }
					                  if(hasD){
					                	  str+=dinner+d
					                  }
					                  if(hasS){
					                	  str+=snack+s
					                  }
					                                  
			
			                          str+="</div>"
			                      +"<div class='diet-receipt-footer'>"
			                          +"<div class='diet-calories'>"
			                              +"<h3>목표칼로리</h3>"
			                              +"<span id='goal'>"+goalCalories+" kcal</span>"
			                          +"</div>"
			                          +"<div class='diet-calories'>"
			                              +"<h3>섭취칼로리</h3>"
			                              +"<span id='today'>"+totalCalories+" kcal</span>"
			                          +"</div>"
			                          +"<div class='diet-calories'>"
			                              +"<h3>남은 칼로리</h3>"
			                              +"<span>"+(goalCalories - totalCalories)+" kcal</span>"
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
				                    	+"<span>1개월</span>"
				                   	+"</div>"
				                    	+"<div class='date-selector'><span>3개월</span></div>"
				                    	+"<div class='date-selector'><span>6개월</span></div>"
				                   		+"<div class='date-selector'><span>기간선택</span></div>"
				                 	+"</div>"
				                 + "<div class='date-menu-wrap' style='display:none;'>"
				                    +  "<div class='date-menu'>"
				                      +   "<input type='date' class='date-set' name='startDate'>"
				                      +    "<span> ~ </span>"
				                      +    "<input type='date' class='date-set' name='endDate'>"
					                      +"<div class='search-btn margin-left-10'>"
			                                +"<button class='btn-red' id='order-search'>검색</button>"
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
		             if(data.list.length>0){
		                    		
		                    	
					  $.each(data.list,function(i,v){
						  str+="<div class='order-list'>"
				                  	+"<div class='order-no'>"
			                        	+v.orderNo
			                      	+"</div>"
			                      	+"<div class='item-info'>"
			                          	+"<div class='item-pic'>"
			                              	+"<a href='#'>"
			                                  	+"<img src='"+v.piPath+"' alt=''>"
			                              	+"</a>"
			                          	+"</div>"
			                          	+"<div class='order-title'>"
			                              	+"<a href='#'>"
			                                  +"<div class='item-title'>"
			                                      	+v.productName
			                                  +"</div>"
			                              	+"</a>"
			                          	+"</div>"
			                      	+"</div>"
			                      	+"<div class='order-date'>"
			                          +v.date
			                      	+"</div>"
			                      	+"<div class='order-price-amount'>"
			                          +"<div class='order-price'>"+v.price+"</div>"
			                      	+"</div>"
			                      	+"<div class='order-status'>"
			                      	// if문으로 걸러줄것
			                      	if(v.status=="구매확정"){
			                          str+="<div class='reviewBtn'>"
			                              +"<button class='btn-red' onclick='reviewWriteForm("+v.productNo+")'>후기작성</button>"
			                          +"</div>"
			                      		
			                      	}else{
			                      		
			                      		str+="<div class='delivery'>"
				                              +"<button class='d-menu' onclick='refund("+v.orderNo+");'>환불신청</button>"
				                              +"<button class='d-menu' onclick='confirmation("+v.orderNo+");'>구매확정</button>"
				                          +"</div>"
			                      	}
			                      	str+="</div>"
		                  		+"</div>"
					  });
                   	}else{
                   		str+="<div class='order-list'>주문내역이 없습니다</div>"
                   	}
					  str+="</div>"
				      $myPage_content.html(str);
				      paging(url,data.pi);
				      
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
                      				+"<div class='review-tag review-tag-active' onclick='roadMypageContent("+"'review.do'"+",1)'>작성가능 후기</div>"
                      				+"<div class='review-tag' onclick='selectMyReview()'>작성완료 후기</div>"
                  				+"</div>"
                	if(data.length>0){
                		
                	
                  	$.each(data,function(i,v){
                  		str+="<div class='review-wrap'>"
		                        +"<div class='product-wrap'>"
			                                +"<a href='#'>"
			                        +"<div class='product-info'>"
			                            +"<div class='product-pic'>"
			                                    +"<img src='"+v.piPath+"' alt=''>"
			                            +"</div>"
			                            +"<div class='product-name'>"+v.productName+"</div>"
			                        +"</div>"
			                                +"</a>"
			                        +"<div class='purchase-date'>구매일 : "+v.date+"</div>"
			                        +"<div class='review-btn'>"
			                            +"<button class='btn-red' onclick='reviewWriteForm("+v.productNo+")'>후기작성</button>"
			                        +"</div>"
			                    +"</div>"
			                +"</div>"
                  	});
                	}else{
    			    	str+="<div class='order-list'>작성가능한 후기가 없습니다</div>"
    			    }
					  str+="</div>"
						$myPage_content.html(str);
				      	paging(url,page);
					  break;
				  case "coupon.do":
					  $myPageTitle.text("쿠폰");
					  $myPageTitleInfo.text("유효기간순으로 정렬되어있습니다");
					  var str="<div class='order-list-header'>"
			                    +"<div class='order-no'>쿠폰번호</div>"
			                    +"<div class='coupon-info'>쿠폰이름</div>"
			                    +"<div class='coupon-date'>유효기간</div>"
			                    +"<div class='order-price'>할인정보</div>"
			                    +"<div class='order-status'>적용상품</div>"
			                +"</div>"
			                if(data.length>0){
			                	
			          $.each(data,function(i,v){
			        	 str+="<div class='coupon-list'>"
			                    +"<div class='order-no'>"
			                        +v.couponNo
			                    +"</div>"
			                    +"<div class='coupon-info'>"
			                        	+v.couponName
			                    +"</div>"
			                    +"<div class='coupon-date'>"
			                        +v.endDate
			                    +"</div>"
			                    +"<div class='order-price-amount'>"
			                        +"<div class='order-price'>"
			                    		if(v.saleRate<1){
			                    			str+=v.saleRate*100+"%"
			                    		}else{
			                    			str+=v.saleRate+"원"
			                    		}
			                    	str+="</div>"
			                    +"</div>"
			                    +"<div class='coupon-status'>"
			                        +"<div class='btn-red'>전체</div>"
			                    +"</div>"
			                +"</div>"  
			          });
			                }else{
			                	str+="<div class='order-list'>사용가능한 쿠폰이 없습니다</div>"
			                }
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
			                            +"<li><span>아이디</span><div class='user-id'>"+data.email+"</div></li>"
			                            +"<li><span>비밀번호</span><button class='btn-red max-width-180' id='change-pw'>변경하기</button></li>"
			                            +"<li><span>닉네임</span><div class='user-nickname'>"+data.nickName+"<button class='btn-red margin-left-10' id='change-nickname'>변경하기</button></div></li>"
			                            +"<li><span>휴대폰</span><div class='user-phone'>"+data.phone+"</div></li>"
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
		  $.ajax({
			  url:"selectMyDietaryGoal.do",
			  dataType:"json",
			  success:function(data){
						  
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
			                  +"<div class='diet-input'>";
			                  if(data.gender=='M'){
			                	  str+="<input type='radio' name='gender' value='M' style='display:none;'checked>"
			                      +"<button class='btn-red gender-checker'>남성</button>"
			                      +"<input type='radio' name='gender' value='F' style='display:none;'>"
			                      +"<button class='btn-white gender-checker margin-left-10'>여성</button>";
			                  }else if(data.gender=='F'){
			                	  str+="<input type='radio' name='gender' value='M' style='display:none;'>"
			                      +"<button class='btn-white gender-checker'>남성</button>"
			                      +"<input type='radio' name='gender' value='F' style='display:none;'checked>"
			                      +"<button class='btn-red gender-checker margin-left-10'>여성</button>";
			                  }else{
			                	  
			                      str+="<input type='radio' name='gender' value='M' style='display:none;'>"
			                      +"<button class='btn-white gender-checker'>남성</button>"
			                      +"<input type='radio' name='gender' value='F' style='display:none;'>"
			                      +"<button class='btn-white gender-checker margin-left-10'>여성</button>";
			                  }
			                  str+="</div>"
			              +"</div>"
			              +"<div class='diet-info'>"
			                  +"<div class='diet-tag'>키</div>"
			                  +"<div class='diet-input'>"
			                      +"<input type='number' max='300' min='100' name='height' value="+data.height+"> cm"
			                  +"</div>"
			              +"</div>"
			              +"<div class='diet-info'>"
			                  +"<div class='diet-tag'>몸무게</div>"
			                  +"<div class='diet-input'>"
			                      +"<input type='number' max='300' min='30' name='weight' value="+data.weight+"> kg"
			                  +"</div>"
			              +"</div>"
			              +"<div class='diet-info'>"
			                  +"<div class='diet-tag'>목표 체중</div>"
			                  +"<div class='diet-input'>"
			                      +"<input type='number' max='300' min='30' name='targetWeight' value="+data.targetWeight+"> kg"
			                  +"</div>"
			              +"</div>"
			              +"<div class='diet-info'>"
			                  +"<div class='diet-tag'>나이</div>"
			                  +"<div class='diet-input'>"
			                      +"<input type='number' min='10' max='100' name='age' value="+data.age+"> 세"
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
		  },
		  error:function(){
			  console.log("selectMyDietaryGoal error");
		  }
		  });
	      
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
					  dataType:"json",	
					  success:function(result){
						  if(result>0){
							  alert("수정 성공");
						  		roadMypageContent("diet.do",1);			
						  		location.reload();
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
	  function paging(url,page){
		  console.log(page);
	  }
	  function pwChangeForm(){
		  var $myPageTitle=$(".myPageTitle");
		  var $myPageTitleInfo=$(".myPageTitleInfo");
		  var $myPage_content=$(".myPage-content");
		  $myPageTitle.text("비밀번호 변경");
		  $myPageTitleInfo.text("비밀번호를 수정해주세요");
		  var str="<div class='pw-change-wrap'>"
			          +"<div class='pw'>"
			          +"<input type='password' class='mypage-input' name='currentPw' placeholder='현재 비밀번호를 입력해주세요'>"
			      +"</div>"
			      +"<div class='pw'>"
			          +"<input type='password' name='newPw' class='mypage-input' placeholder='새로운 비밀번호를 입력해주세요'>"
			      +"</div>"
			      +"<div class='pw'>"
			          +"<input type='password' name='newPw2' class='mypage-input' placeholder='새로운 비밀번호를 다시 입력해주세요'>"
			      +"</div>"
			      +"<div class='submit-wrap'>"
			          +"<button class='btn-black' id='to-info'>돌아가기</button>"
			          +"<button class='btn-red' onclick='javascript:pwChange();'>변경하기</button>"
			      +"</div>"
			  +"</div>";
		  $myPage_content.html(str);
	  }
	  function pwChange(){
		  var currentPw=$("input[name='currentPw']").val();
		  var newPw=$("input[name='newPw']").val();
		  var newPw2=$("input[name='newPw2']").val();
		  console.log(currentPw);
		  console.log(newPw);
		  console.log(newPw2);
		  if(currentPw.trim()!=""&&newPw.trim()!=""&&newPw2.trim()!=""){
			  if(currentPw=="${loginUser.password}"){
				  
				  if(newPw==newPw2){
					  
					  $.ajax({
						 url:"pwChange.do",
						 data:{newPw:newPw},
						 type:"post",
						 success:function(result){
							 if(result>0){
								 alert("수정 성공");
								 roadMypageContent("info.do",1);
							 }else{
								 alert("수정 실패");
							 }
						 },
						 error:function(){
							 console.log("pwchange error");
						 }
					  });
				  
				  }else{
					  alert("새로운 비밀번호가 일치하지 않습니다");
				  }
				  
			  }else{
				  alert("현재 비밀번호를 확인해주세요");
			  }
			  
		  }else{
			  alert("비밀번호를 입력해주세요");
		  }
	  }
	  function nicknameChangeForm(){
		  var $myPageTitle=$(".myPageTitle");
		  var $myPageTitleInfo=$(".myPageTitleInfo");
		  var $myPage_content=$(".myPage-content");
		  $myPageTitle.text("닉네임 변경");
		  $myPageTitleInfo.text("dstay에서 사용될 닉네임입니다");
		  var str="<div class='change-wrap'>"
			          +"<div class='nickname'>"
			          +"<input type='text' class='mypage-input' name='nickname' placeholder='새로운 닉네임을 입력해주세요'>"
			      +"</div>"
			      +"<div class='submit-wrap'>"
			          +"<button class='btn-black' id='to-info'>돌아가기</button>"
			          +"<button class='btn-red' onclick='javascript:nicknameChange();'>변경하기</button>"
			      +"</div>"
			  +"</div>";
		  $myPage_content.html(str);
		
	  }
	  function nicknameChange(){
		  var nickname=$("input[name='nickname']").val();
		  if(nickname.trim()!=""){
			  $.ajax({
				  url:"nicknameChange.do",
				  data:{nickname:nickname},
				  type:"post",
				  success:function(result){
					  if(result>0){
						  alert("수정 성공");
						  roadMypageContent("info.do",1);
					  }else{
						  alert("사용할 수 없는 닉네임입니다");
					  }
				  },
				  error:function(){
					  console.log("nicknameChange error");
				  }
				  
			  })
		  }else{
			  alert("닉네임을 입력해주세요");
		  }
	  }
	  function searchOrder(startDate,endDate,page){
		  
		  if(startDate!="" && endDate!="" && startDate<endDate){
			  console.log(startDate)
			  console.log(endDate)
			  $.ajax({
				 url:"searchOrder.do",
				 data:{startDate:startDate,endDate:endDate,page:page},
				 type:"post",
				 dataType:"json",
				 success:function(data){
					 var str="";
					 var $mypageOrderList=$(".myPage-order-list");
					  $mypageOrderList.html("");
					  	str+="<div class='order-list-header'>"
				              	+"<div class='order-no'>주문번호</div>"
				              	+"<div class='item-info'>상품정보</div>"
				              	+"<div class='order-date'>주문일자</div>"
				              	+"<div class='order-price'>주문금액</div>"
				              	+"<div class='order-status'>주문상태</div>"
				          	+"</div>";
					 if(data.list.length>0){
					 $.each(data.list,function(i,v){
						  str+="<div class='order-list'>"
				                  	+"<div class='order-no'>"
			                        	+v.orderNo
			                      	+"</div>"
			                      	+"<div class='item-info'>"
			                          	+"<div class='item-pic'>"
			                              	+"<a href='#'>"
			                                  	+"<img src='"+v.piPath+"' alt=''>"
			                              	+"</a>"
			                          	+"</div>"
			                          	+"<div class='order-title'>"
			                              	+"<a href='#'>"
			                                  +"<div class='item-title'>"
			                                      	+v.productName
			                                  +"</div>"
			                              	+"</a>"
			                          	+"</div>"
			                      	+"</div>"
			                      	+"<div class='order-date'>"
			                          +v.date
			                      	+"</div>"
			                      	+"<div class='order-price-amount'>"
			                          +"<div class='order-price'>"+v.price+"</div>"
			                      	+"</div>"
			                      	+"<div class='order-status'>"
			                      	// if문으로 걸러줄것
			                      	if(v.status=="구매확정"){
			                          str+="<div class='reviewBtn'>"
			                              +"<button class='btn-red' onclick='reviewWriteForm("+v.productNo+")'>후기작성</button>"
			                          +"</div>"
			                      		
			                      	}else{
			                      		
			                      		str+="<div class='delivery'>"
				                              +"<button class='d-menu' onclick='refund("+v.orderNo+");'>환불신청</button>"
				                              +"<button class='d-menu' onclick='confirmation("+v.orderNo+");'>구매확정</button>"
				                          +"</div>"
			                      	}
			                      	str+="</div>"
		                  		+"</div>"
					  });
                  	}else{
                  		str+="<div class='order-list'>주문내역이 없습니다</div>"
                  	}
					 $mypageOrderList.html(str);
				      paging("order.do",data.pi);
				 },
				 error:function(){
					 console.log("searchOrder.do error");
				 }
			  });
			  
		  }else{
			  alert("날짜를 확인해주세요");
		  }
		  
	  }
	  function searchOrderMonth(month,page){
		  $.ajax({
			  url:"searchOrderMonth.do",
			  data:{month:month,page:page},
			  type:"post",
			  dataType:"json",
			  success:function(data){
				  var str="";
				  var $mypageOrderList=$(".myPage-order-list");
				  $mypageOrderList.html("");
				  	str+="<div class='order-list-header'>"
			              	+"<div class='order-no'>주문번호</div>"
			              	+"<div class='item-info'>상품정보</div>"
			              	+"<div class='order-date'>주문일자</div>"
			              	+"<div class='order-price'>주문금액</div>"
			              	+"<div class='order-status'>주문상태</div>"
			          	+"</div>";
				  if(data.list.length>0){
				  $.each(data.list,function(i,v){
					  str+="<div class='order-list'>"
			                  	+"<div class='order-no'>"
		                        	+v.orderNo
		                      	+"</div>"
		                      	+"<div class='item-info'>"
		                          	+"<div class='item-pic'>"
		                              	+"<a href='#'>"
		                                  	+"<img src='"+v.piPath+"' alt=''>"
		                              	+"</a>"
		                          	+"</div>"
		                          	+"<div class='order-title'>"
		                              	+"<a href='#'>"
		                                  +"<div class='item-title'>"
		                                      	+v.productName
		                                  +"</div>"
		                              	+"</a>"
		                          	+"</div>"
		                      	+"</div>"
		                      	+"<div class='order-date'>"
		                          +v.date
		                      	+"</div>"
		                      	+"<div class='order-price-amount'>"
		                          +"<div class='order-price'>"+v.price+"</div>"
		                      	+"</div>"
		                      	+"<div class='order-status'>"
		                      	if(v.status=="구매확정"){
		                          str+="<div class='reviewBtn'>"
		                              +"<button class='btn-red' onclick='reviewWriteForm("+v.productNo+")'>후기작성</button>"
		                          +"</div>"
		                      		
		                      	}else{
		                      		
		                          str+="<div class='delivery'>"
		                              +"<button class='d-menu' onclick='refund("+v.orderNo+");'>환불신청</button>"
		                              +"<button class='d-menu' onclick='confirmation("+v.orderNo+");'>구매확정</button>"
		                          +"</div>"
		                      	}
		                      	str+="</div>"
	                  		+"</div>"
				  });
               	}else{
               		str+="<div class='order-list'>주문내역이 없습니다</div>"
               	}
              	$mypageOrderList.html(str);
			      paging("order.do",data.pi);
			  },
			  error:function(){
				  console.log("searchOrderMonth.do error");
			  }
		  });
	  }
	  function confirmation(ono){
		  if(confirm("구매확정하시겠습니까?")){
			  $.ajax({
				 url:"confirmation.do",
				 data:{ono:ono},
				 type:"post",
				 success:function(result){
					 if(result>0){
						 alert("구매확정");
						 roadMypageContent("order.do",1);
					 }else{
						 alert("구매확정실패");
					 }
				 },
				 error:function(){
					 console.log("confirmation.do error");
				 }
			  });
		  }
	  }
	  function reviewWriteForm(pno){
		  reviewPoint=5;
		  $.ajax({
			  url:"productInfo.do",
			  data:{pno:pno},
			  dataType:"json",
			  type:"post",
			  success:function(data){
				  var $myPageTitle=$(".myPageTitle");
				  var $myPageTitleInfo=$(".myPageTitleInfo");
				  var $myPage_content=$(".myPage-content");
				  $myPageTitle.text("후기 작성");
				  $myPageTitleInfo.text("구매하신 상품에 대한 후기를 남길 수 있습니다");
				  var str="<div class='review-write-form'>"
			                  +"<div class='review review-header'>"
			                  +"<div class='product-info'>"
			                      +"<div class='product-pic'>"
			                          +"<a href='#'>"
			                              +"<img src='"+data.piPath+"' alt=''>"
			                          +"</a>"
			                      +"</div>"
			                      +"<div class='product-name'>"+data.productName+"</div>"
			                  +"</div>"
			                  +"<div class='review-point'>"
			                      +"<img class='reviewStar' id='point1' src='${ pageContext.request.contextPath }/resources/images/7_yun/staron.png' alt='☆'>"
			                      +"<img class='reviewStar' id='point2' src='${ pageContext.request.contextPath }/resources/images/7_yun/staron.png' alt='☆'>"
			                      +"<img class='reviewStar' id='point3' src='${ pageContext.request.contextPath }/resources/images/7_yun/staron.png' alt='☆'>"
			                      +"<img class='reviewStar' id='point4' src='${ pageContext.request.contextPath }/resources/images/7_yun/staron.png' alt='☆'>"
			                      +"<img class='reviewStar' id='point5' src='${ pageContext.request.contextPath }/resources/images/7_yun/staron.png' alt='☆'>"
			                  +"</div>"
			              +"</div>"
				              +"<div class='review review-write'><textarea id='review-content' rows='10' placeholder='후기를 작성해주세요'></textarea></div>"
				              +"<div class='review'><button class='btn-red' onclick='insertReview("+data.productNo+")'>작성하기</button></div>"
				          +"</div>"	
				          $myPage_content.html(str);
			  },
			  error:function(){
				  console.log("productInfo.do error");
			  }
		  })
		  
	  }
	  function insertReview(pno){
		  var content=$("#review-content").val();
		  if(content.trim()!=""){
			  $.ajax({
				 url:"insertReview.do",
				 data:{productNo:pno,content:content,point:reviewPoint},
				 type:"post",
				 success:function(result){
					 if(result>0){
						 alert("후기 등록 성공");
						 roadMypageContent("review.do",1);
						 history.pushState("review.do","후기","review.do");
						 checkTag("review.do");
					 }else{
						 alert("등록 실패");
					 }
					 
				 },
				 error:function(){
					 console.log("insertReview.do error");
				 }
			  });
		  }else{
			  alert("후기내용을 작성해주세요");
		  }
	  }
	  function selectMyReview(){
		  $.ajax({
			 url:"selectMyReview.do",
			 dateType:"json",
			 type:"post",
			 success:function(data){
				 var str="<div class='review-list-wrap'>"
			                +"<div class='review-tag-wrap'>"
               				+"<div class='review-tag' id='to-review'>작성가능 후기</div>"
              				+"<div class='review-tag review-tag-active' onclick='selectMyReview()'>작성완료 후기</div>"
			             +"</div>"
			    if(data.length>0){
			    	
					$.each(data,function(i,v){
						
			                    str+="<div class='review-wrap'>"
			                        +"<div class='review review-header'>"
			                            +"<div class='product-info'>"
			                                +"<div class='product-pic'>"
			                                    +"<a href='#'>"
			                                        +"<img src='"+v.piPath+"' alt=''>"
			                                    +"</a>"
			                                +"</div>"
			                                +"<div class='product-name'>"+v.productName+"</div>"
			                            +"</div>"
			                            switch(v.point){
			                            
			                            case 1:
			                            	str+="<div class='review-point'>"
				                                +"<img src='${ pageContext.request.contextPath }/resources/images/7_yun/staron.png' alt='☆'>"
				                                +"<img src='${ pageContext.request.contextPath }/resources/images/7_yun/staroff.png' alt='★'>"
				                                +"<img src='${ pageContext.request.contextPath }/resources/images/7_yun/staroff.png' alt='★'>"
				                                +"<img src='${ pageContext.request.contextPath }/resources/images/7_yun/staroff.png' alt='★'>"
				                                +"<img src='${ pageContext.request.contextPath }/resources/images/7_yun/staroff.png' alt='★'>"
			                            	break;
			                            case 2:
			                            	str+="<div class='review-point'>"
				                                +"<img src='${ pageContext.request.contextPath }/resources/images/7_yun/staron.png' alt='☆'>"
				                                +"<img src='${ pageContext.request.contextPath }/resources/images/7_yun/staron.png' alt='★'>"
				                                +"<img src='${ pageContext.request.contextPath }/resources/images/7_yun/staroff.png' alt='★'>"
				                                +"<img src='${ pageContext.request.contextPath }/resources/images/7_yun/staroff.png' alt='★'>"
				                                +"<img src='${ pageContext.request.contextPath }/resources/images/7_yun/staroff.png' alt='★'>"
			                            	break;
			                            case 3:
			                            	str+="<div class='review-point'>"
				                                +"<img src='${ pageContext.request.contextPath }/resources/images/7_yun/staron.png' alt='☆'>"
				                                +"<img src='${ pageContext.request.contextPath }/resources/images/7_yun/staron.png' alt='☆'>"
				                                +"<img src='${ pageContext.request.contextPath }/resources/images/7_yun/staron.png' alt='☆'>"
				                                +"<img src='${ pageContext.request.contextPath }/resources/images/7_yun/staroff.png' alt='★'>"
				                                +"<img src='${ pageContext.request.contextPath }/resources/images/7_yun/staroff.png' alt='★'>"
			                            	break;
			                            case 4:
			                            	str+="<div class='review-point'>"
				                                +"<img src='${ pageContext.request.contextPath }/resources/images/7_yun/staron.png' alt='☆'>"
				                                +"<img src='${ pageContext.request.contextPath }/resources/images/7_yun/staron.png' alt='☆'>"
				                                +"<img src='${ pageContext.request.contextPath }/resources/images/7_yun/staron.png' alt='☆'>"
				                                +"<img src='${ pageContext.request.contextPath }/resources/images/7_yun/staron.png' alt='☆'>"
				                                +"<img src='${ pageContext.request.contextPath }/resources/images/7_yun/staroff.png' alt='★'>"
			                            	
			                            	break;
			                            case 5:
			                            	str+="<div class='review-point'>"
				                                +"<img src='${ pageContext.request.contextPath }/resources/images/7_yun/staron.png' alt='☆'>"
				                                +"<img src='${ pageContext.request.contextPath }/resources/images/7_yun/staron.png' alt='☆'>"
				                                +"<img src='${ pageContext.request.contextPath }/resources/images/7_yun/staron.png' alt='☆'>"
				                                +"<img src='${ pageContext.request.contextPath }/resources/images/7_yun/staron.png' alt='☆'>"
				                                +"<img src='${ pageContext.request.contextPath }/resources/images/7_yun/staron.png' alt='☆'>"
			                            	
			                            	break;
			                            	
			                            }
			                                str+="<div class='review-info'>"
			                                    +"<span class='writer-info'>${loginUser.nickName} | "+v.date+"</span>"
			                                +"</div>"
			                            +"</div>"
			                        +"</div>"
			                        +"<div class='review-content-open'>"
			                        var content=v.content;
			                        	str+=content.replace(/\n/gi, "<br//>");
			                        str+="</div>"
			                    +"</div>"
					})
			    }else{
			    	str+="<div class='order-list'>작성된 후기가 없습니다</div>"
			    }
         			+"</div>"
         			var $myPage_content=$(".myPage-content");
         			$myPage_content.html(str);

			 },
			 error:function(){
				 console.log("selectMyReview.do error");
			 }
		  });
	  }
	  function selectMyDietList(){
		  var date=$(".date-set").val();
		  $.ajax({
			  url:"selectMyDietList.do",
			  data:{date:date},
			  dataType:"json",
			  type:"post",
			  success:function(data){
				  var $myPage_content=$(".myPage-content");
				  var str="<div class='diet-full-wrap'>"
			                    +"<div class='diet-header-wrap'>"
		                      +"<div class='setting-diet'>"
		                          +"<button class='btn-white'>목표설정</button>"
		                      +"</div>"
		                      +"<div class='search-diet-date'>"
		                          +"<input type='date' class='date-set' value='"+date+"' onchange='selectMyDietList()'>"
		                      +"</div>"
		                  +"</div>"
		                  +"<div class='diet-receipt-wrap'>"
		                      +"<div class='diet-receipt-header'>"
		                          +"<h1>식사기록</h1>"
		                          +"<div class='edit-diet'>"
		                              +"<button class='btn-white' id='recode-edit'>선택삭제</button>"
		                              +"<button class='btn-red' id='add-form-btn'>기록</button>"
		                          +"</div>"
		                      +"</div>"
		                      +"<div class='diet-receipt-body'>"
		                      var breakfast="<div class='diet-info'><div class='meal'>아침</div><div class='food-info-wrap'>"
		                      var lunch="<div class='diet-info'><div class='meal'>점심</div><div class='food-info-wrap'>"
		                      var dinner="<div class='diet-info'><div class='meal'>저녁</div><div class='food-info-wrap'>"
		                      var snack="<div class='diet-info'><div class='meal'>간식</div><div class='food-info-wrap'>"
		                      var hasBf=false;
		                      var hasL=false;
		                      var hasD=false;
		                      var hasS=false;
                        	  var bf="";
                        	  var l="";
                        	  var d="";
                        	  var s="";
		                      var totalCalories=0;
		                      var goalCalories=${dg.goalCalories}
		                      $.each(data,function(i,v){
		                    	  totalCalories+=v.calories;
		                              switch(v.type){
		                              case "아침":
		                            	  bf+="<div class='food-info'><input type='checkbox' name='dietNo' value='"+v.no+"'><div class='food-name'>"+v.foodName+"</div><div class='food-calories'>"+v.calories+"kcal</div></div>"
		                            	  hasBf=true;
		                            	  break;
		                              case "점심":
		                            	  l+="<div class='food-info'><input type='checkbox' name='dietNo' value='"+v.no+"'><div class='food-name'>"+v.foodName+"</div><div class='food-calories'>"+v.calories+"kcal</div></div>"
		                            	  hasL=true;
		                            	  break;
		                              case "저녁":
		                            	  d+="<div class='food-info'><input type='checkbox' name='dietNo' value='"+v.no+"'><div class='food-name'>"+v.foodName+"</div><div class='food-calories'>"+v.calories+"kcal</div></div>"
		                            	  hasD=true;
		                            	  break;
		                              case "간식":
		                            	  s+="<div class='food-info'><input type='checkbox' name='dietNo' value='"+v.no+"'><div class='food-name'>"+v.foodName+"</div><div class='food-calories'>"+v.calories+"kcal</div></div>"
		                            	  hasS=true;
		                            	  break;
		                              }
		                    	  
		                      })
				                  bf+="</div></div>";
				                  l+="</div></div>";
				                  d+="</div></div>";
				                  s+="</div></div>";
				                  
				                  if(hasBf){
				                	  str+=breakfast+bf;
				                  }
				                  if(hasL){
				                	  str+=lunch+l;
				                  }
				                  if(hasD){
				                	  str+=dinner+d
				                  }
				                  if(hasS){
				                	  str+=snack+s
				                  }
				                                  
		
		                          str+="</div>"
		                      +"<div class='diet-receipt-footer'>"
		                          +"<div class='diet-calories'>"
		                              +"<h3>목표칼로리</h3>"
		                              +"<span id='goal'>"+goalCalories+" kcal</span>"
		                          +"</div>"
		                          +"<div class='diet-calories'>"
		                              +"<h3>섭취칼로리</h3>"
		                              +"<span id='today'>"+totalCalories+" kcal</span>"
		                          +"</div>"
		                          +"<div class='diet-calories'>"
		                              +"<h3>남은 칼로리</h3>"
		                              +"<span>"+(goalCalories - totalCalories)+" kcal</span>"
		                          +"</div>"
		                      +"</div>"
		                  +"</div>";
		                  str+="</div>"
						  $myPage_content.html(str);
				  
			  },
			  error:function(){
				  console.log("selectMyDietList.do error");
			  }
		  })
	  }
	  function removeDiet(fmno,date){
		  $.ajax({
			 url:"removeDiet.do",
			 data:{fmno:fmno},
			 success:function(result){
				 if(date==""){
		        		roadMypageContent("diet.do",1);
		        	}else{
		        		selectMyDietList();
		        	}
			 },
			 error:function(){
				 console.log("removeDiet.do error"+fmno);
			 }
		  });
	  }
	  function addDietForm(date){
		  $.ajax({
			  url:"searchOrderMonth.do",
			  data:{page:1,month:1},
			  dataType:"json",
			  type:"post",
			  success:function(data){
				  var $myPageTitleInfo=$(".myPageTitleInfo");
				  $myPageTitleInfo.text("구매확정이된 상품은 구매일로부터 한달간 식단에 기록할 수 있습니다");
				  var $myPage_content=$(".myPage-content");
				  var str="<div class='diet-full-wrap'>"
			                    +"<div class='diet-header-wrap'>"
		                      +"<div class='setting-diet'>"
		                          +"<button class='btn-white'>목표설정</button>"
		                      +"</div>"
		                      +"<div class='search-diet-date'>"
		                          +"<input type='date' class='date-set' value='"+date+"'>"
		                      +"</div>"
		                  +"</div>"
		                  +"<div class='diet-write-wrap'>"
		                        +"<div class='diet-write-header'>"
		                          +"<select name='meal' class='meal-set'>"
		                              +"<option value='아침'>아침</option>"
		                              +"<option value='점심'>점심</option>"
		                              +"<option value='저녁'>저녁</option>"
		                              +"<option value='간식'>간식</option>"
		                          +"</select>"
		                      +"</div>"
		                      +"<div class='diet-write-body'>"
		                          +"<div class='write-header'>"
		                              +"<button class='btn-wactive' id='load-orderlist'>구매목록</button>"
		                              +"<button class='btn-wtag' id='self-write'>직접입력</button>"
		                          +"</div>"
		                          +"<div class='write-wrap'>"
		                          if(data.list.length>0){
		                        	  
		                          $.each(data.list,function(i,v){
		                              str+="<div class='list-wrap'>"
		                                  +"<div class='item-info'>"
		                                      +"<input type='checkbox' name='item' value='"+v.productNo+"'>"
		                                      +"<div class='item-pic'>"
		                                         +"<img src='"+v.piPath+"' alt=''>"
		                                      +"</div>"
		                                      +"<div class='order-title'>"
		                                          +"<div class='item-title'>"+v.productName+"</div>"
		                                          +"<div class='item-option'>"+v.calories+" kcal</div>"
		                                      +"</div>"
		                                  +"</div>"
		                              +"</div>"
		                        	  
		                          })
			                              
		                          }else{
		                        	  str+="<div class='order-list'>사용할 수 있는 상품이 없습니다</div>"
		                          }
		                          str+="</div>"
		                      +"</div>"
		                      +"<div class='diet-write-footer'>"
		                          +"<button class='btn-red' id='recode-ordered'>기록하기</button>"
		                      +"</div>"
		                  +"</div>"
		                  $myPage_content.html(str);
			  },
			  error:function(){
				  console.log("addDietForm error");
			  }
		  })
	  }
	  function addDietSelfForm(date){
		  var $myPageTitleInfo=$(".myPageTitleInfo");
		  $myPageTitleInfo.text("구매확정이된 상품은 구매일로부터 한달간 식단에 기록할 수 있습니다");
		  var $myPage_content=$(".myPage-content");
		  var str="<div class='diet-full-wrap'>"
	                    +"<div class='diet-header-wrap'>"
                      +"<div class='setting-diet'>"
                          +"<button class='btn-white'>목표설정</button>"
                      +"</div>"
                      +"<div class='search-diet-date'>"
                          +"<input type='date' class='date-set' value='"+date+"'>"
                      +"</div>"
                  +"</div>"
                  +"<div class='diet-write-wrap'>"
                        +"<div class='diet-write-header'>"
                          +"<select name='meal' class='meal-set'>"
                              +"<option value='아침'>아침</option>"
                              +"<option value='점심'>점심</option>"
                              +"<option value='저녁'>저녁</option>"
                              +"<option value='간식'>간식</option>"
                          +"</select>"
                      +"</div>"
                      +"<div class='diet-write-body'>"
                          +"<div class='write-header'>"
                              +"<button class='btn-wtag' id='load-orderlist'>구매목록</button>"
                              +"<button class='btn-wactive' id='self-write'>직접입력</button>"
                          +"</div>"
                          +"<div class='write-wrap'>"
                          
	                          +"<div class='note-wrap'>"
	                          
		                          +"<div class='note-header'>"
		                              +"<div>"
		                                  +"<button class='btn-white' id='self-add'>+</button>"
		                              +"</div>"
		                          +"</div>"
		                          
		                          +"<div class='note-body'>"
		
		                              +"<div class='self-list'>"
		                                  +"<input type='text' placeholder='음식이름' name='food'>"
		                                  +"<input type='number' placeholder='칼로리' name='calories'>"
		                                  +"<div>"
		                                      +"<button class='btn-red'>-</button>"
		                                  +"</div>"
		                              +"</div>"
		
		                          +"</div>"
		
		                      +"</div>"
                          
                          +"</div>"
                      +"</div>"
                      +"<div class='diet-write-footer'>"
                          +"<button class='btn-red' id='recode-selfDiet'>기록하기</button>"
                      +"</div>"
                  +"</div>"
                  $myPage_content.html(str);
	  }
	  function recodeOrderedDietToday(){
		  var list=$("input[name='item']:checked");
		  var type=$("select[name='meal']").val();
		  $.each(list,function(i,v){
			  $.ajax({
				  url:"recodeOrderedDietToday.do",
				  data:{pno:v.value,type:type},
				  type:"post",
				  success:function(result){
					  console.log(v.value+"성공");
				  },
				  error:function(){
					  console.log("recodeOrderedDietToday.do error"+v.value)
				  }
			  });
		  });
	  }
	  function recodeOrderedDiet(date){
		  var list=$("input[name='item']:checked");
		  var type=$("select[name='meal']").val();
		  $.each(list,function(i,v){
			  $.ajax({
				  url:"recodeOrderedDiet.do",
				  data:{pno:v.value,date:date,type:type},
				  type:"post",
				  success:function(result){
					  console.log(v.value+"성공");
				  },
				  error:function(){
					  console.log("recodeOrderedDietToday.do error"+v.value)
				  }
			  });
		  })
	  }
	  function recodeSelfDietToday(foodName,calories){
		  var type=$("select[name='meal']").val();
		  $.ajax({
			 url:"recodeSelfDietToday.do",
			 data:{foodName:foodName,calories:calories,type:type},
			 type:"post",
			 success:function(result){
				 if(result>0){
					 console.log(foodName+" 성공");
				 }else{
					 console.log(foodName+" 실패");
				 }
			 },
			 error:function(){
				 console.log("recodeSelfDietToday.do "+foodName+" 실패");
			 }
			 
		  });
	  }
	  function recodeSelfDiet(date,foodName,calories,type){
		  var type=$("select[name='meal']").val();
		  $.ajax({
				 url:"recodeSelfDiet.do",
				 data:{foodName:foodName,calories:calories,memo:date,type:type},
				 type:"post",
				 success:function(result){
					 if(result>0){
						 console.log(foodName+" 성공");
					 }else{
						 console.log(foodName+" 실패");
					 }
				 },
				 error:function(){
					 console.log("recodeSelfDiet.do "+foodName+" 실패");
				 }
				 
			  });
	  }
	</script>
</body>
</html>