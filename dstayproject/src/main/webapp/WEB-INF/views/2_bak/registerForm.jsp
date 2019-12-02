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

	<!-- 플러그인  -->
	<!-- <link rel="stylesheet" href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script> -->
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
.guide{display:none;}.ok{color:green;}.ng{color:red;}.guidePw{display:none;}.okPw{color:green;}.duplicate{color:red;}
.ngNum{color:red;}.ngSpe{color:red;}.ngLower{color:red;}.ngUpper{color:red;}
.hiddenNumber{display:none;}

#loader {
  border: 16px solid #f3f3f3; /* Light grey */
  border-top: 16px solid #ddd;
  border-radius: 50%;
  width: 50px;
  height: 50px;
  animation: spin 2s linear infinite;
  position: absolute;
  left: 50%;
  top: 50%;
  z-index: 1;
  width: 150px;
  height: 150px;
  margin: -75px 0 0 -75px;
  display:none;
}
@keyframes spin {
  0% { transform: rotate(0deg); }
  100% { transform: rotate(360deg); }
}
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
                        <form action="insertMember.do" method="post">
                           <!-- <div class="form-group">
                                <input type="text" class="form-control" id="fullname" placeholder="이름" required>
                            </div> --> 
                            <div class="form-group" >
                                <input type="email" class="form-control" id="ajaxEmail" placeholder="이메일(예:user01@dstay.com)" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$" name = "email" required >
                                <span class="helvetica-12 guide ok" >사용가능한 이메일 입니다</span>
                                <span class="helvetica-12 guide ng" >이메일 형식에 맞춰 입력해 주세요</span>
                                <span class="helvetica-12 guide duplicate" >이메일이 중복 됩니다</span>
                                <input type="hidden" id="hiddenCheck" value="0"><br>
                                <span class="text-gray-2 helvetica-12" align="center">이메일 내용을 확인한 후 인증하셔야 회원가입이 완료됩니다</span>
                                <div class="clearfix maya-tiny-padding"></div>
                                <button type="button" onclick="validateEmail()" class="btn btn-outline-primary" id="validatebtn" disabled>인증받기</button>
                            </div>
                            <div class="form-group hiddenNumber">
                                <input type="text" class="form-control" id="exampleInputPassword" placeholder="인증번호를 입력해주세요">
                                <div class="clearfix maya-tiny-padding"></div>
                                <button type="button" onclick="verifyEmail()" class="btn btn-outline-primary" >확인</button>
                                <!-- <button type="reset" onclick="resetInput()" class="btn btn-outline-primary" >재입력</button> -->
                            </div>
                            <div class="form-group">
                                <input type="password" class="form-control" id="exampleInputPassword1" pattern="(?=.*\d)(?=.*[A-Z])(?=.*[a-z])(?=.*[0-9])(?=.*[#?!@$%^&*-]).{8,}"
                                title="하나이상의 숫자/대문자/소문자/특수문자 를 전부 포함해 주세요" placeholder="비밀번호" name="password" required >
                            	<span class="helvetica-12 guidePw okPw" >적합한 비밀번호 입니다</span>
                            </div>
                            <div class="form-group">
                                <input type="password" class="form-control" id="exampleInputPassword2" placeholder="비밀번호확인">
                            </div>
                          <div class="form-group">
                                <input type="text" class="form-control" id="mobilenumber" placeholder="닉네임" name="nickName" required>
                          </div> 
                            <button type="submit" onclick="return checkResetPw()" class="btn btn-block button-green-free btn-lg" id="submitbtn" disabled>가입하기</button>
                        </form>
                        <div class="clearfix maya-tiny-padding"></div>
                       <!--  <p class="text-center">회원이신가요 &nbsp; <a href="loginForm.do" class="text-secondary">&nbsp;로그인</a></p> -->
                       
                </div>
            </div>
        </div>
    </div>
<input type="hidden" id="checkHiddenInput">
<input type="hidden" id="checkHiddenEmail">
</div><!-- /.container -->
<div id="loader"></div>
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
			var reg = new RegExp(/^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/);
			var check = $(this).val();
			if(check == "" || !reg.test(check)) {
				$(".ok").hide();
				$(".duplicate").hide();
				$(".ng").show();
				$("#hiddenCheck").val(0);
			}else if(reg.test(check)){
				duplicateCheck();
			}
		})
		$("#exampleInputPassword2").on("keyup", function() {
					if(($("#exampleInputPassword2").val()) != "" && ($("#exampleInputPassword2").val() == $("#exampleInputPassword1").val())) {
						$("#submitbtn").attr("disabled",false);
					}
				})
	})
		function duplicateCheck() {
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
						$("#hiddenCheck").val(1);
						$(".ng").hide();
						$(".duplicate").hide();
						$(".ok").show();
						$("#validatebtn").attr("disabled",false);
					}else {
						$("#hiddenCheck").val(0);
						$(".ok").hide();
						$(".ng").hide();
						$(".duplicate").show();
						$("#validatebtn").attr("disabled",true);
					}
				}
			})
		}
				var randomKey;
			function validateEmail() {
				if($("#hiddenCheck").val() == 1) {
					alert("인증번호를 발송하였습니다 잠시만 기다려 주세요");
					$("#loader").show();
					$.ajax({
						url:"ajaxVerifyEmail.do",
						method:"post",
						data:{email:$("#ajaxEmail").val()},
						error:function() {
							console.log("disconnected")
						},
						success:function(random) {
							$("#loader").hide();
							$(".hiddenNumber").show();
							randomKey = random;
							$("#exampleInputPassword").focus();
						}
						})
				}else {
					alert("올바른 이메일 형식으로 입력해 주세요");
					$("#ajaxEmail").focus();
				}
			}
			function verifyEmail() {
				if($("#exampleInputPassword").val() == randomKey) {
					$("#checkHiddenEmail").val(1);
					alert("인증이 완료되었습니다");
					$("#ajaxEmail").attr("readonly",true);
					$("#exampleInputPassword1").focus();
				}else {
					$("#checkHiddenEmail").val(0);
					alert("인증번호가 일치하지 않습니다");
					$("#exampleInputPassword").focus();
				}
			}
			function resetInput() {
				$(".guide").hide();$(".hiddenNumber").hide();$("#validatebtn").attr("disabled",true);
			}
				$("#exampleInputPassword1").change(function() {
				var reg = new RegExp(/^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[#?!@$%^&*-]).{8,}$/);
				var checkPw = $("#exampleInputPassword1").val();
				if(reg.test(checkPw)) {
					$(".okPw").show();
					$("#submitbtn").attr("disabled",false);
				}else {
					alert("하나이상의 대문자/숫자/소문자/특수문자를 각각 포함시켜주세요(8자리이상)");
					$(".okPw").hide();
					$("#exampleInputPassword1").focus().val("");
				}
			})
				$("#exampleInputPassword2").on("keyup", function() {
					if(($("#exampleInputPassword2").val()) != "" && ($("#exampleInputPassword2").val() == $("#exampleInputPassword1").val())) {
						$("#checkHiddenInput").val(1);
					}else {
						$("#checkHiddenInput").val(0);
					}
				})
			function checkResetPw() {
				if($("#checkHiddenEmail").val() == 0) {
					alert("이메일 인증을 완료해 주세요");
					return false;
				}else if($("#checkHiddenEmail").val() == 1 && $("#checkHiddenInput").val() == 0) {
					alert("비밀번호가 일치하지 않습니다");
					$("#exampleInputPassword2").focus().val("");
					return false;
				}else if($("#checkHiddenInput").val() == 1 && $("#checkHiddenEmail").val() == 1) {
					return true;
				}
			}
</script>
</body>
</html>