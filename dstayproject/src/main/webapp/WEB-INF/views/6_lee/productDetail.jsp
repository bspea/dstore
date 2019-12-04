<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="Kimi is a curated foods and beverages artisans.">
    <meta name="author" content="Philip Herlambang">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="mobile-web-app-capable" content="yes">


    <meta name="twitter:card" content="summary">
    <meta name="title" content="Back to Kimi">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="Content-Language" content="en-id">


    <!-- open graph metadata facebook, slack, whatsapp line -->
    <meta property="fb:app_id" content="150112802189143"/>
    <meta property="og:locale" content="en_US" />
    <meta property="og:title" content="Back to Kimi" />
    <meta property='og:site_name' content='Kimi | Curated Foods and Beverages' />
    <meta property="og:url" content="http://kimistatic.s3-website-ap-southeast-1.amazonaws.com/" />
    <meta property="og:description" content="Kimi is a curated foods and beverages artisans." />
    <meta property='og:image' content="https://s3-ap-southeast-1.amazonaws.com/kimistatic/images/apple-touch-icon.png" />


    <!-- open graph metadata twitter -->
    <meta name="twitter:title" content="Back to Kimi">
    <meta name="twitter:url" content="http://www.backtokimi.com">
    <meta name="twitter:description" content="Kimi is a curated foods and beverages artisans.">
    <meta name="twitter:image" content="https://s3-ap-southeast-1.amazonaws.com/kimistatic/images/apple-touch-icon.png">
    <meta name="twitter:site" content="@backtokimi">


    <link rel="icon" href="https://s3-ap-southeast-1.amazonaws.com/kimistatic/images/favicon.ico">
    <link rel="apple-touch-icon" href="https://s3-ap-southeast-1.amazonaws.com/kimistatic/images/apple-touch-icon.png">

    <title>Back to Kimi</title>

    <!-- Bootstrap core CSS -->
    <link href="resources/css/6_lee/bootstrap.min.css" rel="stylesheet">
    <link href="resources/css/6_lee/kimi.css" rel="stylesheet">
    <link href="resources/css/6_lee/font-awesome.min.css" rel="stylesheet">

	<script src="http://code.jquery.com/jquery-latest.min.js"></script>
	<style>
	
	.modal-backdrop.in{
		opacity: 0 !important;
	
	}
	
	 .bookmarked{
	 display: block !important;
	}
	 
	 #bookmarkButton{
	  display: inline-block !important;
	 }
	 
	</style>
</head>

<body>

<jsp:include page="../1_common/menubar.jsp"/> 


<div class="container kimi-container">
    <ol class="breadcrumb hidden-xs">
        <li style="color:#8b0000">Home</li>
        <li style="color:#8b0000">${pd.pcname }</li>
        <li style="color:#8b0000">${pd.pname}</li>
    </ol>
</div>


<div class="container" style="background: white; padding-bottom: 50px;">
    <div class="col-md-6">
        <!--carousel-->
        <div id="main_area">
            <!-- Slider -->
            <div class="row" style="margin-top: 25px;">

                <div class="col-sm-9 less-padding">
                    <div class="col-xs-12 less-padding" id="slider">
                        <!-- Top part of the slider -->
                        <div class="row">
                            <div class="col-sm-12" id="carousel-bounding-box">
                                <div class="carousel slide" id="myCarousel">
                                    <!-- Carousel items -->
                                    <div class="carousel-inner">
                                        
                                        <div class="active item" data-slide-number="0">
                                            <img src="${pd.pi1}">
                                        </div>
								
                                        <div class="item" data-slide-number="1">
	                                          
	                                          <c:choose>
					                        	<c:when test="${empty pd.pi2}">
					                    			 <img src="resources/images/6_lee/ImgIsNull.png"> 
					                    		</c:when>
					                    	
					                    		<c:otherwise>                    		
					                        		<img src="${pd.pi2}">
					                    		</c:otherwise>
					  						 </c:choose>
                                     
                                        </div>

                                        <div class="item" data-slide-number="2">
                                            <c:choose>
					                        	<c:when test="${empty pd.pi3}">
					                    			 <img src="resources/images/6_lee/ImgIsNull.png"> 
					                    		</c:when>
					                    	
					                    		<c:otherwise>                    		
					                        		<img src="${pd.pi3}">
					                    		</c:otherwise>
					  						</c:choose>
                                        </div>  
                                        
                                  	

                                    </div>
                                    <!-- Carousel nav -->
                                    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
                                        <span class="glyphicon glyphicon-chevron-left"></span>
                                    </a>
                                    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
                                        <span class="glyphicon glyphicon-chevron-right"></span>
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!--슬라이드-->

                <div class="col-sm-3" id="slider-thumbs">
                    
                     <a class="thumbnail" id="carousel-selector-0">
						<c:choose>
                        	<c:when test="${empty pd.pi1}">
                    			 <img src="resources/images/6_lee/ImgIsNull.png"> 
                    		</c:when>
                    	
                    		<c:otherwise>                    		
                        		<img src="${pd.pi1}">
                    		</c:otherwise>
  						</c:choose>
                    </a>
                    
                      <a class="thumbnail" id="carousel-selector-1">
						<c:choose>
                        	<c:when test="${empty pd.pi2}">
                    			 <img src="resources/images/6_lee/ImgIsNull.png"> 
                    		</c:when>
                    	
                    		<c:otherwise>                    		
                        		<img src="${pd.pi2}">
                    		</c:otherwise>
  						</c:choose>
                    </a>
                    
                      <a class="thumbnail" id="carousel-selector-2">
						<c:choose>
                        	<c:when test="${empty pd.pi3}">
                    			 <img src="resources/images/6_lee/ImgIsNull.png"> 
                    		</c:when>
                    	
                    		<c:otherwise>                    		
                        		<img src="${pd.pi3}">
                    		</c:otherwise>
  						</c:choose>
                    </a> 
                    
                </div>
            </div>

        </div>
        <!--carousel ends-->
    </div>

    <div class="col-md-6" style="position: relative;">
       
       
	        	<div class="bookmarked" >
       			
      				<img id="bookMark" src="" width="86" > 
      		
				  			  
	        	</div>
       
       
        <h1>${pd.pname}</h1>

        


        <p class="product-description">${pd.pcontents}</p>
        <p class="product-description">조리법 : ${pd.precipe}</p>
		<p class="product-description">성분 : ${pd.pingredient}</p>
	 	<p class="product-description">Calorie : ${pd.calorie}kcal</p> 
        <div class="product-detail-tag-container">
            <h1>평점 : ${result} </h1>
        </div>	
		



        <div class="clearfix"></div>

        <div class="row">
            <div class="col-md-6">
                <h3 style='display: inline-block; margin-right: 10px;'>￦</h3><h3 id="totalPrice" style='display: inline-block;'>${pd.price}</h3>
            </div>
            
            <div class="col-md-6" style="padding-top: 18px;">
                <p class="pull-left" style="line-height: 35px; margin-right: 20px;">Quantity</p>
                <!-- <form class="form-inline product-detail-form"> -->
                    <div class="form-group pull-left"><button class="btn btn-default" onclick="minusTotal()">-</button></div>
                    <div class="form-group pull-left">
                        <input type="text" class="form-control number-input" id="totalAmount" value="1" style="width: 60px; border: none; font-weight: bold; font-size: 20px;" readonly>
                    </div>
                    <div class="form-group"><button class="btn btn-default" onclick="addTotal()">+</button></div>
               <!--  </form> -->
            </div>
           
            <div class="col-md-6" style="padding-top: 18px;">
               
            </div>
        </div>

        <div class="product-detail-action-button-container">
            
             <button id="shoppingCart" class="btn button-add-to-bag" style="margin-right: 10px;" onclick="addProduct();">장바구니</button> 
			             
	
           <!--  <button class="frequency-question"  data-toggle="modal" data-target="#fq">장바구니</button> -->
	
            <button class="btn btn-default button-black button-learn-more" id="bookmarkButton" onclick="addBookMark()"></button>
			
		
		
		
	
           	
           <!--  <button class="btn btn-default button-black button-learn-more" id="deleteBookmarkButton" style="display: none;">찜 해제</button> -->
        </div>
 
      </div>


    </div>
<!-- /.container -->


	


<div class="container" style="background: white; padding-bottom: 50px;">
    <h2 class="text-center">${pd.pname}</h2>
    <hr class="hr-short">

    <div class="col-md-8 col-md-offset-2">
        <p class="helvetica-18 text-center">${pd.pnotice}</p>
        
        <c:choose>
           <c:when test="${empty pd.pi1}">
       		 <img src=""> 
       		</c:when>
                    	
            <c:otherwise>                    		
                <img src="${pd.pi1}" width="100%" class="maya-small-padding" style="margin: 30px 0;">
            </c:otherwise>
  		</c:choose>
  		
  		 <c:choose>
           <c:when test="${empty pd.pi2}">
       		 <img src=""> 
       		</c:when>
                    	
            <c:otherwise>                    		
                <img src="${pd.pi2}" width="100%" class="maya-small-padding" style="margin: 30px 0;">
            </c:otherwise>
  		</c:choose>
  		
  		 <c:choose>
           <c:when test="${empty pd.pi3}">
       		 <img src=""> 
       		</c:when>
                    	
            <c:otherwise>                    		
                <img src="${pd.pi3}" width="100%" class="maya-small-padding" style="margin: 30px 0;">
            </c:otherwise>
  		</c:choose>
        
        
        

        <p class="helvetica-18 text-center"></p>
    </div>
</div>


<div class="container" style="background: white; padding-bottom: 50px;">
    <h2 class="text-center"></h2>
    <hr class="hr-short">


    <div class="row">
		<c:forEach items="${nextProduct}" var="nextProduct">
        <div class="col-sm-6 col-md-4">
            <a href="productDetail.do?pdno=${nextProduct.pno}" class="thumbnail_item thumbnail less-padding less-margin">
                <!--<img src="http://res.cloudinary.com/kimithemes/image/upload/c_thumb,h_480,w_480/v1506069881/IMG_20161004_075006_v8yiq2.jpg" alt="sosis solo">-->
                <img src="${nextProduct.pi1 }" alt="sosis solo">
            </a>
            <div class="caption box">
                <h3>${nextProduct.pname}</h3>
                <div class="row">
                    <div class="col-sm-8 col-xs-6">
                        <p class="default-userProductList-CardList-price">￦ ${nextProduct.price}</p>                     
                    </div>

                    <div class="col-sm-4 col-xs-6">
                        <button onclick="location.href='shoppingCart.do'" class="btn default-userProductList-CardList-button pull-right" role="button">Add to Cart</button>
                    </div>
                </div>
            </div>
        </div>
	</c:forEach>
    </div>


</div>

  			<!-- 장바구니 모달창 start -->
			  
			   <div class="modal modal-center fade" id="testModal" tabindex="-1" role="dialog" style="top:53%;;" aria-labelledby="exampleModalLabel" aria-hidden="true">
					<div class="modal-dialog" role="document">
						<div class="modal-content" style=" height: 70px; width: 50%; position: absolute; left: 36%; top: 172px;">
										<p style="text-align: center;">장바구니에 추가되었습니다</p>
									<button class="btn" type="submit" data-dismiss="modal" onclick="location.href='selectShoppingCart.do';" style=" position: absolute; bottom: 16%; left: 10%;">장바구니 이동</button>
									<button class="btn" type="button" data-dismiss="modal" style="position: absolute; bottom: 16%; left: 61%;">돌아아기</button>
						</div>
					</div>
				</div>
			 
				<!-- 장바구니 모달창 end -->

				<!-- 후기 / 문의   버튼-->
<div class="container" style=" background:white; padding-bottom: 50px; ">
 <a id="inquiry" class="btn pull-right button-green-top-nav" style="width:50%;">문의(${pd.inquerySum})</a>
 <span><a id="review" class="btn pull-right button-green-top-nav" style="width:50%;">후기(${pr.size()})</a></span>
</div>
					
				<!-- 후기 -->
<div class="container" id="reviewForm" style=" background:white; padding-bottom: 50px; display:'';">
	<h4><strong>후기는 구매 후 마이페이지에서 이용 가능합니다.</strong></h4>	
	<br><br>
		<div id="reviewFormReply" >
		
		<c:forEach items="${pr}" var="pr">
		<P> ${pr.mname } : ${pr.rcontents}   평점 : ${pr.point}  [${pr.prdate}]</P><hr>
		</c:forEach>
				
		</div>
		
		<!-- 페이징바 -->
		<!--  <div class="col-md-12 hidden-xs text-center">
                pagination
                <nav aria-label="Page navigation">
                    <ul class="pagination">
                        <li class="current"><a href="#">1</a></li>
                        <li><a href="#">2</a></li>
                        <li><a href="#">3</a></li>
                        <li><a href="#">4</a></li>
                        <li><a href="#">5</a></li>
                    </ul>
                </nav>
                pagination ends
            </div> -->

	</div>


					<!-- 문의 -->
		<div class="container" id="inquiryForm" style=" background:white; padding-bottom: 50px; display:none;">
		
        	 <div class="form-group">
                 <input type="text" class="form-control" id="title" name="title" placeholder="제목(100자 이하)" maxlength="100" required>
             </div>
        	 
        	 <span> <textarea id="content" name="content" cols="160" rows="10" class="form-control" maxlength="3000" style="resize:none" placeholder="무분별한 비방/욕설은 관리자 차원에서 삭제 합니다." required></textarea></span>
      
      	<div>
        	 <p id="limit" style="display:'inline-block'"><span id="content1">0</span>/3000
                 <input type="submit" class="btn default-userProductList-CardList-button pull-right" value="등록" onclick="insertInquiry()">
        	 </p>
        	 <br><br>
    	    
	         
      	</div>
        
        
        		<!-- 문의 -->
			<div id="inquiryFormReply">
				<%-- <c:forEach items="${pi}" var="pi"> --%>
					<%-- <p>${pi.membernickname}:${pi.pititle }[${pi.pidate}]</p>
					<p>${pi.picontents }</p>
					<p>└관리자 : ${pi.pianswer} [${pi.pianswerdate}]</p>
					<hr> --%>
				<%-- </c:forEach> --%>
		   </div>
		<!-- <p>프로불편러 : 맛이 이게 뭡니까? [2010-11-11]</p>
		<p> └괸라자 : 감솨합니다 다음에 또 이용해주세요 2010-11-11</p>
		<hr>
		<p>프로불편러 : 맛이 이게 뭡니까? [2010-11-11]</p>
		<p> └괸라자 : 감솨합니다 다음에 또 이용해주세요 2010-11-11</p>
		<hr>
		<p>프로불편러 : 맛이 이게 뭡니까? [2010-11-11]</p>
		<p> └괸라자 : 감솨합니다 다음에 또 이용해주세요 2010-11-11</p>
		<hr>
		<p>프로불편러 : 맛이 이게 뭡니까? [2010-11-11]</p>
		<p> └괸라자 : 감솨합니다 다음에 또 이용해주세요 2010-11-11</p>
		<hr>
		<p>프로불편러 : 맛이 이게 뭡니까? [2010-11-11]</p>
		<p> └괸라자 : 감솨합니다 다음에 또 이용해주세요 2010-11-11</p>
		<hr>
		<p>프로불편러 : 맛이 이게 뭡니까? [2010-11-11]</p>
		<p> └괸라자 : 감솨합니다 다음에 또 이용해주세요 2010-11-11</p>
		<hr>
		<p>프로불편러 : 맛이 이게 뭡니까? [2010-11-11]</p>
		<p> └괸라자 : 감솨합니다 다음에 또 이용해주세요 2010-11-11</p>
		<hr>
		<p>프로불편러 : 맛이 이게 뭡니까? [2010-11-11]</p>
		<p> └괸라자 : 감솨합니다 다음에 또 이용해주세요 2010-11-11</p>
		<hr> -->
			
		</div>
		
		
		 		<!-- 문의 페이징 바  start  이건 후에 하자.-->
        <%--     <div class="col-md-12 hidden-xs text-center">
                
                <nav aria-label="Page navigation">
                    <ul class="pagination">
                        <li class="current">
                        	
                        	<!-- 첫 페이지  -->
                        	 <c:if test="${pipg.currentPage eq 1 }"> 
								<a href="${before}" style="font-size: 40px; background-color: rosybrown; pointer-events: none; cursor: default;">&lt</a>
							 </c:if> 
							
							<!-- 첫 페이지가 아닐 때 -->
							<c:if test="${pipg.currentPage ne 1 }">
								<c:url value="productDetail.do" var="before">
									<c:param name="pcno" value="${pdNo}"/>
									<c:param name="currentPage" value="${pipg.currentPage-1}"/>
								</c:url> 
								<a href="${before}" style="font-size: 40px">&lt</a>
							</c:if> 
							
							 <c:forEach begin="${pipg.startPage}" end="${pipg.endPage}" var="p"> 
							<!-- 현재 페이지 -->
								  <c:if test="${p eq pipg.currentPage}">  
									<a style="background-color:coral">${p}</a>
								 </c:if> 
							<!-- 현재 페이지가 아닐 때 -->			
								 <c:if test="${p ne pipg.currentPage}">
									<c:url value="productDetail.do" var="page">
										<c:param name="pcno" value="${pdNo }"/>
										<c:param name="currentPage" value="${p}"/>
									</c:url> 
									<a href="${page}">${p}</a>
                               </c:if>   
			
							</c:forEach> 
							
							<!-- 마지막 페이지  -->
							<c:if test="${pipg.currentPage eq pipg.maxPage}"> 
								<a href="${after}" style="font-size: 40px; background-color: rosybrown; pointer-events: none; cursor: default;">&gt</a>
							 </c:if> 
							
							<!-- 마지막 페이지가 아닐 때  -->
							<c:if test="${pipg.currentPage ne pipg.maxPage }">
								<c:url value="productDetail.do" var="after">
									<c:param name="pcno" value="${caNo }"/>
									<c:param name="currentPage" value="${pipg.currentPage+1 }"/>
								</c:url>
								<a href="${after}" style="font-size: 40px">&gt</a>
							 </c:if> 
                        </li>
                        
                    </ul>
                </nav>

               
        <!--문의 페이징바 ends-->
	
		</div> --%>



			<!--include footer-->
			<jsp:include page="footer.jsp" />


			<!-- Bootstrap core JavaScript
================================================== -->
			<!-- Placed at the end of the document so the pages load faster -->
			<!-- <script src="resources/js/6_lee/jquery.min.js"></script> -->
			<script>
				window.jQuery
						|| document
								.write('<script src="../../assets/js/vendor/jquery.min.js"><\/script>')
			</script>
			<script src="resources/js/6_lee/bootstrap.min.js"></script>

			<script>
			
				
				
			
			
				// 찜하기 맴버 인설트 or 딜리트
				
				function addBookMark(){
					
					
					var pno = ${pd.pno};
					var mno = "${loginUser.no}";
					
					if(mno != ""){
						
						$.ajax({
							url:"selectBookMark.do",
							data:{pno:pno},
							success:function(data){
								
								/* 찜하기 인설트  */
								
								if(data == "insert"){
								
									$.ajax({
										url:"insertBookMark.do",
										data:{mno:mno, pno:pno},
										success:function(data){
											
											if(data="ok"){
											
											$("#bookmarkButton").html("찜하기 해제");
											 $(".bookmarked").attr("style","display:inline-block !important"); 
											
											 $("#bookMark").attr('src','resources/images/6_lee/bookmarked.png')
											}
											
										},error:function(){
											
										}
									})
								/* 찜하기 딜리트 */
								}else{

									$.ajax({
										url:"deleteBookMark.do",
										data:{ pno:pno},
										success:function(data){
										
											if(data = "ok"){
												
											$("#bookmarkButton").html("찜하기");
											$(".bookmarked").attr("style","display:none !important");
											
											}
											
										},error:function(){
											
										}
									})
								}
								
							},error:function(){
								
							}
						});
						
						
					}else{
						
						alert("로그인을 진행해 주세요");
					}
					
					
				}
				
				var mno =  "${loginUser.no}"
				
				if(mno != null){

						checkBookMark()
				}else{
					$(function(){
					
					})
					
				}
				
		
				function checkBookMark(){
						
						var bookMark = "${bookMark}";
						
					if(bookMark != null){	
						if(bookMark == 1){
							console.log("들어오는지")
							$("#bookmarkButton").html("찜하기 해제");
							$("#bookMark").attr('src','resources/images/6_lee/bookmarked.png')
						
						}else{
							$("#bookmarkButton").html("찜하기");
							$("#bookMark").attr('src','')
							
						}
					}
				}
				
			
			
				// 문의 입력
				function insertInquiry(){
					
				var pititle = $("#title").val();
				var picontents = $("#content").val();
				
				var	mno = "${loginUser.no}";
				
				var pno = ${pd.pno};
				
				if(mno != ""){
					$.ajax({
						
						url: "insertInquiry.do",
						data:{mno:mno,pno:pno,pititle:pititle,picontents:picontents},
						success:function(date){
						console.log(date)			
						
						if(date == "success"){
													
							getInqueryList();
							$("#title").val("");
							$("#content").val("");
						
						}
							
									
						},error:function(){
							
							
						}
						
						
					})
					
				}else{
					alert("로그인 후 사용 가능한 기능 입니다")
				}
			}
				
				
					$(function(){
						getInqueryList()
					})
				
					
			
			
				// 문의 리스트 조회
				function getInqueryList(){
					
					$('#nickname').append("");
					
				var pno = ${pd.pno};
				var mno = "${loginUser.no}";
				
				if(mno != null){	
					$.ajax({
							url:"getInqueryList.do",
							data:{pno:pno},
							dataTpye:"json",
							success:function(data){
								
								
								 
								 $div = $("#inquiryFormReply");
								 $div.html("");
								
								 
								 $.each(data, function(index, value){
									
									 $p1 = $("<p></p>").text(value.membernickname).append("   :   ").append(value.pititle).append("      [ ").append(value.pidate).append(" ]");
									 $p2 = $("<p></p>").text(value.picontents);
									 $p3 = $("<p></p>").text("└  관리자   :     ").append(value.pianswer).append("    [ ").append(value.pianswerdate).append("]");
									 $answer = $("<a onclick='insertAnswer()'></a>").text("답변달기");
									
									 $answerContent = $("<textarea id='answerContent' name='content' cols='160' rows='10' class='form-control' style='resize:none' placeholder='최대한 착하게 달아주세요.' required></textarea>");
									 $hr = $("<hr>");
									 									
									 if(value.pianswer != null){
									 
									    
									    	 $div.append($p1);
											 $div.append($p2);
										     $div.append($p3);
										     $div.append($hr);
											 $div.append($hr);
									     
		
									 }else{
										 
										 if(mno == 1){
											 $pino = $("<p id='pino' style='display:none'></p>").append(value.pino);
											 
											 $div.append($pino);
											 $div.append($p1);
											 $div.append($p2);
											 $div.append($answerContent)
											 $div.append($answer);
											 $div.append($hr);
											 $div.append($hr);
											 
											 
											 
											 
											 
											 
											 
										 }else{
											 $div.append($p1);
											 $div.append($p2);
											 $div.append($hr);
											 $div.append($hr);
										 }
									 }
									 
								 })
								 
								 
								
							},error:function(){
					
						    }
						})
					}
				}
				
			/* 문의 답변달기 */	
			function insertAnswer(){
				
				var pino = $("#pino").parent().children().eq(0).html();
				var content = $("#answerContent").val();
				console.log(pino);
			
					$.ajax({
						url:'insertAnswer.do',
						data:{pino:pino, content:content},
						success:function(){
							
							getInqueryList();
							
						},error:function(){
							
						}
					})
					
				
				
				
			}	
			
			
			
			/* 문의 글자 제한  */
				$(function() {
					// textarea에 keyup이벤트가 발생했을 경우 
					$("#content").on("keydown", function() {
						// 현재 요소(textarea)의 값의 길이를 알아내기
						var inputLength = $(this).val().length;

						$("#content1").text(inputLength);
						if (inputLength >= 3000) {
							alert("글자수가 초과되었습니다");
							$("#counter").css("color", "red");
						} else {
							$("#counter").css("color", "black");
						}
					});
				});

				/* 클릭 시 분리  */
				$(function() {
					$("#inquiry").on('click', function() {
						$("#inquiryForm").css("display", "");
						$("#reviewForm").css("display", "none");
					});

					$("#review").on('click', function() {
						$("#inquiryForm").css("display", "none");
						$("#reviewForm").css("display", "");
					});

				});

				/* 모달창  */
				var element_wrap = document.getElementById('wrap');
				function foldDaumPostcode() {
					// iframe을 넣은 element를 안보이게 한다.
					element_wrap.style.display = 'none';
				}

				/* 장바구니 모달창 클릭 시 */
				$('#shoppingCart').click(function(e) {
					$('#testModal').modal({
						backdrop : 'static'
					});
					e.preventDefault();
					$('#testModal').modal("show");
	
					
				});
				 
	
			
		    jQuery(document).ready(function($) {
		
		        // bookmark
		        $('.bookmarked').hide();
		
		
		        $('#bookmarkButton').on('click', function () {
		            $('.bookmarked').fadeIn(200);
		            $('#bookmarkButton').hide();
		            $('#deleteBookmarkButton').show();
		        });



		        // Delete bookmark
		
		        $('#deleteBookmarkButton').on('click', function () {
		            $('.bookmarked').fadeOut(200);
		            $('#bookmarkButton').show();
		            $('#deleteBookmarkButton').hide();
		        });
		
		
		        $('#myCarousel').carousel({
		            interval: 5000
		        });
		
		        //Handles the carousel thumbnails
		        $('[id^=carousel-selector-]').click(function () {
		            var id_selector = $(this).attr("id");
		            try {
		                var id = /-(\d+)$/.exec(id_selector)[1];
		                console.log(id_selector, id);
		                jQuery('#myCarousel').carousel(parseInt(id));
		            } catch (e) {
		                console.log('Regex failed!', e);
		            }
		        });
		        // When the carousel slides, auto update the text
		        $('#myCarousel').on('slid.bs.carousel', function (e) {
		            var id = $('.item.active').data('slide-number');
		            $('#carousel-text').html($('#slide-content-'+id).html());
		        });
		    });
		    

		    
		    
		    var pdPrice = ${pd.price};					// 상품 가격
		    var totalPrice = $('#totalPrice').html(); 	// 상품 가격 총합
		    var priceSum = ${pd.price};					// 상품 가격 합
		    var totalAmountSum = parseInt($('#totalAmount').val()); //상품 수량 *
		    
		    //상품 + 눌렀을 시 
		    function addTotal(){
		    	
		    		
		    		priceSum += pdPrice;
		    		totalAmountSum += 1;
		    		
		    		$('#totalAmount').attr('value',totalAmountSum);
		    		$('#totalPrice').html(priceSum);
		    	
		    	
		    	
		    }
		    // 상품 - 눌렀으시
		    function minusTotal(){
		    	
		    	
		    		
		    		if(totalAmountSum < 2){
		    			alert("1개 이상 선택 하셔야 합니다.");
		    			totalAmountSum = 2;
		    			priceSum = pdPrice+pdPrice
		    			$('#totalAmount').attr('value',totalAmountSum);
		    			$('#totalPrice').html(priceSum)
		    		}
		    		
		    		priceSum -= pdPrice;
		    		totalAmountSum -= 1;
		    		
		    		$('#totalAmount').attr('value',totalAmountSum);
		    		$('#totalPrice').html(priceSum);
		    		
		    }
		    
		    
		    
		    // 장바구니 추가 
		    function addProduct(){
		    	
		    	var pdNo = parseInt("${pd.pno}");
		    	var	mNo = parseInt("${loginUser.no}");
		    	var cookie1 = "${cookie1}";
		    	var cPriceSum = parseInt($('#totalPrice').html());
		    	var cCount = parseInt($('#totalAmount').val());
		    	var cimpath = "${pd.pi1}"; 
		    	var pdprice =  parseInt("${pd.price}");
		    	var pcname = "${pd.pcname}";
		    	
		    	
		    if(mno != ""){
		    	$.ajax({
		    		url : "checkShoppingCart.do",
		    		data:{pno:pdNo, mno:mNo},
		    		success:function(result){
		    			
		    			if(result == "ok"){
		    				
					    	$.ajax({
					    		url : "insertShoppingCart.do",
					    		data:{pno:pdNo, mno:mNo, cpricesum:cPriceSum, ccount:cCount, cimpath:cimpath },
					    		success:function(result){
					    			
					    			
					    		},error:function(){
					    			
					    		}
					    	})
		    			}else{
		    				alert("이미 장바구니에 추가 되었습니다.");
		    			}
		    			
		    		},error:function(){
		    			
		    		}
		    	})
		    	
		    }else{
		    	
		    	$.ajax({
		    		url:"nonMemberCart.do",
		    		data:{pno:pdNo, cpricesum:cPriceSum, ccount:cCount, cimpath:cimpath, pname:"${pd.pname}", pdprice:pdprice, pcname:pcname},
		    		success:function(data){
		    			
		    			if(data == "no"){
		    				alert("이미 추가된 상품 입니다.");
		    			}
		    			
		    			
		    		},error:function(){
		    			
		    		}
		    	})
		    	
		    	/* if(Cookies.get('list') === undefined|| Cookies.get('list') == '[null]'){ // 안에 값이 다 삭제가되어 [null] 인 경우 
		    		Cookies.set('list', "[{\"name\":\""+name+"\",\"age\" : "+age+"}]"); 
		    			alert("성공"); 
		    			}else{ 
		    				var json_list = Cookies.getJSON('list'); json_list.push({ name: $("#name").val() , age : $("#age").val() }); 
		    				alert_list_size(json_list); Cookies.set('list', json_list); 
		    				} */

		    			
		    	
		    	
		    	
		    	
		    	
		    	
		    	
		    	
		    /* 	
		    	var data = {
		    			pno : pdNo,
		    			cPricesum : cPriceSum,
				    	 cCount : cCount,
				    	 cimpath : cimpath 
		    			
		    	}
		    				

				console.log(JSON.stringify(data));
		    				
		    				
		    	document.cookie += "data=" + JSON.stringify(data);
		    	console.log(document.cookie); */
		    	
		    	/* $.ajax({
		    		type : "POST",
		    		url : "guestInsertShoppingCart.do",
		    		//dataType : "json",
		    		data : JSON.stringify(data),
		    		contentType : 'application/json',
		    		//async : false,
		    		
		    	
		    		success:function(result){
		    			
		    			
		    		},error:function(){
		    			
		    			
		    		}
		    	}) */
		    	
		    }
		    	
		    		    	
		    }
   		 	/* function addProduct(){
		    	
		    	var pdNo = ${pd.pno};
		    	var	mNo = ${loginUser.no};
		    	var cPriceSum = $('#totalPrice').html();
		    	var cCount = $('#totalAmount').val();
		    	
		    	$.ajax({
		    		url : "shoppingCart.do",
		    		data:{pno:pdNo, mno:mNo, cpricesum:cPriceSum, ccount:cCount},
		    		success:function(result){
		    			
		    			
		    		},error:function(){
		    			
		    		}
		    	})
	
		    	
		    		    	
		    }  */
		    
		    
		    
		    
		    
</script>

			<!--kimi basic js-->
			<script src="resources/js/6_lee/kimi.js"></script>
			
</body>
</html>
