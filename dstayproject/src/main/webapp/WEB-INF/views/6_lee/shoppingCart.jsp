<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="Kimi is a curated foods and beverages artisans.">
    <meta name="author" content="Johnson Chandra, Allysa Prabandani, Philipus Herlambang, Maya Editorial">
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

    <title>Shopping Cart</title>

    <!-- Bootstrap core CSS -->
    <link href="resources/css/6_lee/bootstrap.min.css" rel="stylesheet">
    <link href="resources/css/6_lee/kimi.css" rel="stylesheet">
    <link href="resources/css/6_lee/font-awesome.min.css" rel="stylesheet">

</head>

<body>

<jsp:include page="../1_common/menubar.jsp"/> 




<div class="container">

    <div class="kimi-container">
        <!--breadcrumb start-->
        <ol class="breadcrumb hidden-xs">
           <li><h4 style="color:#8b0000;">장바구니</h4></li>
        </ol>


        <div class="row">
            <div class="col-md-8">
                <div class="box-bg-white col-md-12">
                    <h3 class="section-title"></h3>
                      
                 <c:forEach items="${sc}" var="sc" varStatus="status">
                    <div class="row">
                    		
                    		<input id="pdpricetotal${ status.index + 1}" type="hidden" value="${sc.pdprice }">
                        	<input id="cnototal${ status.index + 1}" type="hidden" value="${sc.cno}">
                        	
                        	
                        <div class="col-md-2 col-xs-6 less-padding-right">
                            <img src="${sc.cimpath}" width="100%">
                        </div>
                        <div class="col-md-5 col-xs-12">
                            <span>${sc.pname }</span><br/>
                            <p class="text-gray-3 text-thin">${sc.pcname }</p>
                            <button class="btn btn-default outline-default-button outline-small-default-button" id="total${status.index+1 }" onclick="deleteProduct(this.id)">삭제</button>
                        </div>

                        <div class="col-md-3 col-xs-7">
                            <p>수량</p>
                            
                                <div class="form-group pull-left"><button  id="total${ status.index + 1}"  class="btn btn-default" onclick="minusTotal(this.id)">-</button></div>
                                <div class="form-group pull-left">
                                    <input type="text" class="form-control number-input" id="totalAmounttotal${ status.index + 1}" value="${sc.ccount}" style="width: 60px;" readonly>
                                </div>
                                <div class="form-group"><button id="total${ status.index + 1}" class="btn btn-default" onclick="addTotal(this.id)">+</button></div>
                            
                        </div>
                        
                        <div class="col-md-2 col-xs-5">
                           
                            <p class="text-right">상품금액</p>
                            <p class="text-right section-title" style="display:inline-block; margin-left:10px;" >￦</p> <p class="text-right section-title" style="display:inline-block" id="totalPricetotal${ status.index + 1}"> ${sc.cpricesum}</p>
                        </div>
                       
                    </div>
					
                        </c:forEach>
                    <hr>
                    

                </div>

                <div class="clearfix maya-small-padding"></div>
            </div>

            <div class="col-md-4">
                <div class="box-bg-white" style="margin-bottom: 0px;">
                    <div class="clearfix maya-small-padding"></div>
                    <h3 class="text-right text-oswald">도움이 필요하신가요 ? </h3>
                    <p class="text-right text-gray-3 text-medium text-thin">문의사항이나 궁금하신 점이 있으시면 아래의 고객센터에 문의 바랍니다.</p>
                    <hr>
                    <div class="row" style="margin-bottom: 13px;">
                        <div class="col-md-6">
                            <p class="text-gray-2 text-thin">Everyday<br>from 9.00 - 18.00</p>
                        </div>
                        <div class="col-md-6">
                            <p class="text-right">02-9999-9999<br><a class="text-black text-underline" href="mailto: info@backtokimi.com">Dstay@naver.com</a></p>
                        </div>
                    </div>
                            <h3 style="display:inline-block; margin-left:10px;">합계 : ￦</h3> <h3 id="totalPriceSum" style="display:inline-block">${priceSum}</h3>
                </div>
            		<button style="width: 362px; color: #ffffff; background-color: #000;" class="btn btn-default pull-right button-black" onclick="selectCheckout()">주문하기</button>
            </div>
            <div class="clearfix maya-small-padding" ></div>
        </div>
    </div>

</div><!-- /.container -->

<script>



		 var totalPriceSum = parseInt($('#totalPriceSum').html()); 				// 총 상품들의 총합가격

		//상품 + 눌렀을 시 
		function addTotal(id){
		
		
		
			
		var	pdPrice = parseInt($('#pdprice' + id).val()); 							// 상품가격
		var totalAmountSum = parseInt($('#totalAmount'+id).val()); 					//상품 수량 
		var totalPrice = parseInt($('#totalPrice' + id).html()); 					// 상품 가격 총합
		
		
		
				totalPrice += pdPrice;
				totalAmountSum += 1;
				totalPriceSum += pdPrice;  
				
				
				
			    $("#" + id).closest(".row").find("#totalAmount" + id).attr('value',totalAmountSum);
				
				$("#" + id).closest(".row").find("#totalPrice" + id).html(totalPrice);
				$("#totalPriceSum").html(totalPriceSum);
		}
		// 상품 - 눌렀으시
		function minusTotal(id){
			
			var	pdPrice = parseInt($('#pdprice' + id).val()); 							// 상품가격
			var totalAmountSum = parseInt($('#totalAmount'+id).val()); 					//상품 수량 
			var totalPrice = parseInt($('#totalPrice' + id).html()); 					// 상품 가격 총합
			
			
			
				if(totalAmountSum < 2){
					alert("1개 이상 선택 하셔야 합니다.");
					totalAmountSum = 2;
					totalPrice = pdPrice+pdPrice;
					totalPriceSum += pdPrice;
					$('#totalAmount').attr('value',totalAmountSum);
					$('#totalPrice').html(totalPrice)
					
				} else {
					totalPrice -= pdPrice;
					totalAmountSum -= 1;
					totalPriceSum -= pdPrice;
					/* $('#totalAmount').attr('value',totalAmountSum); */
					  $("#" + id).closest(".row").find("#totalAmount" + id).attr('value',totalAmountSum);
					  $("#" + id).closest(".row").find("#totalPrice" + id).html(totalPrice);
					  $("#totalPriceSum").html(totalPriceSum);
				}
				
					
				
					
					
		}
		
	 	
		// 상품 삭제
		
		function deleteProduct(id){
			
			
			var cno = $("#cno"+id).val();
			console.log();
			

			// 삭제할 장바구니 상품의 가격을 불러오고, 현재 합계의 가격을 불러옵니다.
			var totalPrice = parseInt($("#totalPriceSum").html());
			var cartPrice = parseInt($("#totalPrice"+id).html());
			

			
			 
			
			$.ajax({
				url : "deleteShoppingCart.do",
				data:{cno:cno},
				success:function(result){
					$("#cno"+id).parent().remove();
					
					totalPriceSum = totalPrice - cartPrice;
					// jQuery로 해당 수치를 빼서 텍스트만 바꿔 끼워줍니다.
					$("#totalPriceSum").html(totalPriceSum);
				},error:function(){
					
				}
			})
		

		}

		function selectCheckout(){
			
			var totalPrice = parseInt($("#totalPriceSum").html());
			
	
			location.href ="selectCheckout.do?totalPrice="+totalPrice 
		
		}
		




</script>









<!--include footer-->
<jsp:include page="footer.jsp"/>


<!-- Bootstrap core JavaScript
================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
<script src="resources/js/6_lee/jquery.min.js"></script>
<script>window.jQuery || document.write('<script src="../../assets/js/vendor/jquery.min.js"><\/script>')</script>
<script src=".resources/js/6_lee/bootstrap.min.js"></script>

<!--kimi basic js-->
<script src="resources/js/6_lee/kimi.js"></script>



</body>
</html>
