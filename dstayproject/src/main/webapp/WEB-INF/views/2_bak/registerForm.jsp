<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
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
	<!--  -->
	
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css" />
	<!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" crossorigin="anonymous"> 
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" crossorigin="anonymous"> -->

    <!--  -->

    <!-- Bootstrap core CSS -->
    <link href="resources/css/2_bak/bootstrap.min.css?after" rel="stylesheet">
    <link href="resources/css/2_bak/kimi.css" rel="stylesheet">
    <link href="resources/css/2_bak/font-awesome.min.css?after" rel="stylesheet">
	<title>registerForm</title>
<!-- jQuery -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="http://ricostacruz.com/jquery.transit/jquery.transit.min.js"></script>


    <!-- Boot Strap -->
    <link href="resources/css/2_bak/bootstrap.min.css?after" rel="stylesheet">

    <!-- Template css-->
    <link href="resources/css/2_bak/kimi.css" rel="stylesheet">

    <!-- Custom css -->
    <link href="resources/css/2_bak/logo-top.css" rel="stylesheet">
    <link href="resources/css/2_bak/top-menu.css" rel="stylesheet">
    <link href="resources/css/2_bak/mainBanner.css" rel="stylesheet">

    <!-- Custom JavaScript-->
    <script type="text/javascript" src="resources/js/2_bak/mobile-menu.js"></script>
    <script type="text/javascript" src="resources/js/2_bak/mainBanner.js"></script>



    <style>
    html, body {
        height: 100%;
        margin: 0px;
        padding: 0px;
        background:rgb(245, 245, 245);
    }
    html {
        padding-bottom: 50px;
    min-height: 100%;
    box-sizing: border-box;
    -moz-box-sizing: border-box;
    position: relative;
    }

.modal {
        text-align: center;
}
 
@media screen and (min-width: 768px) { 
        .modal:before {
                display: inline-block;
                vertical-align: middle;
                content: " ";
                height: 100%;
        }
}
 
.modal-dialog {
        display: inline-block;
        text-align: left;
        vertical-align: middle;
}
.p-3 {padding: 5px;}
.guide{display:none;}.ok{color:green;}.ng{color:red;}


    /* 테스트용 CSS */
    </style>
</head>
<body>   
<jsp:include page="../1_common/menubar.jsp"/> 
<div class="container">

    <div class="kimi-container">
        <!--breadcrumb start-->
        <ol class="breadcrumb hidden-xs">
            <li><a href="home.do">Home</a></li>
            <li class="active">회원가입</li>
        </ol>

        <div class="clearfix"></div>


        <div class="row">
            <div class="col-md-4 col-md-offset-4">
                <div class="row">
                    <div class="box-bg-white col-md-12 col-xs-12 form-medium-padding">
                        <h3 class="text-center text-gray-1">디스테이 회원가입</h3>
                        <div class="clearfix maya-tiny-padding"></div>

<!--                         <div class="row">
                            <div class="col-md-12">
                                <button class="button-connect-google btn-block">Connect with Google <i class="fa fa-google" aria-hidden="true"></i></button>
                            </div>
                        </div>
                        <div class="clearfix maya-small-padding"></div> -->

                        <form>
                           <!-- <div class="form-group">
                                <input type="text" class="form-control" id="fullname" placeholder="이름" required>
                            </div> --> 
                            <div class="form-group" >
                                <input type="email" class="form-control" id="ajaxEmail" placeholder="이메일(예:user01@dstay.com)" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$" required >
                                <span class="helvetica-12 guide ok" >사용가능한 이메일 입니다</span>
                                <span class="helvetica-12 guide ng" >이메일 형식에 맞춰 입력해 주세요</span>
                                <input type="hidden" id="hiddenCheck" value="0"><br>
                                <span class="text-gray-2 helvetica-12" align="center">이메일 내용을 확인한 후 인증하셔야 회원가입이 완료됩니다</span>
                                <div class="clearfix maya-tiny-padding"></div>
                                <button type="submit" onclick="return validateEmail()" class="btn btn-outline-primary" id="validatebtn" disabled>인증받기</button>
                            </div>
                            <div class="form-group">
                                <input type="password" class="form-control" id="exampleInputPassword1" placeholder="비밀번호" required>
                            </div>
                            <div class="form-group">
                                <input type="password" class="form-control" id="exampleInputPassword2" placeholder="비밀번호확인" required>
                            </div>
<!--                             <div class="form-group">
                                <input type="tel" class="form-control" id="mobilenumber" placeholder="휴대폰 번호" required>
                            </div> -->

<!--인증추가  -->
<!--                              <div class="checkbox" align="center">
                                <label>
                                    <input type="radio" name="certification" value="email"> <span class="text-gray-2 helvetica-12">이메일인증</span>
                                </label>
                                                                <label>
                                    <input type="radio" name="certification" value="phone"> <span class="text-gray-2 helvetica-12">휴대폰인증</span>
                                </label>
                            </div>  -->
                            
                            <button type="submit" class="btn btn-block button-green-free btn-lg" id="submitbtn" disabled>가입하기</button>
                        </form>
                        <div class="clearfix maya-tiny-padding"></div>
                        <p class="text-center">회원이신가요 &nbsp; <a href="loginForm.do" class="text-secondary">&nbsp;로그인</a></p>
                        
                        <!-- <p class="text-center">비회원으로 주문하셨나요&nbsp;<a href="nonMemOrderViewForm.me" class="text-secondary">&nbsp;비회원주문조회</a></p> -->
                    </div>
                     
                     
                     
                     
                     
                     
                     
                     
                     
                     
                </div>
            </div>
        </div>
    </div>

</div><!-- /.container -->

<!--include footer-->
<div class="include-footer"></div>


<!-- Bootstrap core JavaScript
================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
<script src="resources/js/2_bak/jquery.min.js"></script>
<script>window.jQuery || document.write('<script src="../../assets/js/vendor/jquery.min.js"><\/script>')</script>
<script src="resources/js/2_bak/bootstrap.min.js"></script>

<!--kimi basic js-->
<script src="resources/2_bak/kimi.js"></script>
<script>
	$(document).ready(function() {
		$("#ajaxEmail").on("keyup",function() {
			var reg = new RegExp("[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$");
			var check = $(this).val();
			if(check == "" || !reg.test(check)) {
				$(".ok").hide();
				$(".ng").show();
				//$(".guide").hide();
				$("#hiddenCheck").val(0);
			}else if(reg.test(check)){
			    $(".ng").hide();
				$(".ok").show(); 
				duplicateCheck();
			}
		})
	})
		function duplicateCheck() {
		//var reg = "[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$";
		//$.ajaxPrefilter(function() {
			//if(reg.test($("#ajaxEmail").val())) {
					//console.log(reg.test($("ajaxEmail")));	
					
				
				$.ajax({
				url:"ajaxDuplicateCheck.do",
				method:"post",
				data:{checkEmail:$("#ajaxEmail").val()},
				error:function() {
					console.log("disconnected")
				},
				success:function(string) {
					console.log("ongoing");
					if(string == "available") {
						/* $(".ok").show();
						$(".ng").hide(); */
						$("#hiddenCheck").val(1);
						//$("#validatebtn").attr("disabled","false");
						
					}else {
						$("#hiddenCheck").val(0);
						/* $(".ok").hide();
						$(".ng").show(); */
						
					}
				}
			})
		}
			/* function validateEmail() {
				var reg = new RegExp("[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$");
				var check = $("#ajaxEmail").val();
				if(check == "" || reg.test(check)) {
					duplicateCheck();
				}else {
					alert("올바른 이메일 형식으로 입력해주세요");
					}
				} */
				
			function validateEmail() {
				if($("#hiddenCheck").val() == 1) {
					$("#validatebtn").attr("disabled","false");
					return true;
				}else {
					$("#validatebtn").attr("disabled","true");
					alert("올바른 이메일 형식으로 입력해 주세요");
					$("#ajaxEmail").focus();
					return false;
				}
			}
				
</script>
</body>
</html>