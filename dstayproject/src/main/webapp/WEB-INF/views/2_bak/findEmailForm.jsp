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
	<title>findEmail</title>
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

	<!-- 휴대폰 인증용 자바스크립트 -->
<!-- 	<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
	<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script> -->
    <![endif]-->
</head>
<!-- <script>
	var IMP = window.IMP;
	IMP.init("imp82047249");
</script> -->
<body>
<jsp:include page="../1_common/menubar.jsp"/>




<div class="container">

    <div class="kimi-container">
        <!--breadcrumb start-->
        <ol class="breadcrumb hidden-xs">
            <li><a href="home.do">Home</a></li>
            <li class="active">이메일아이디찾기</li>
        </ol>

        <div class="clearfix"></div>


        <div class="row">
            <div class="col-md-4 col-md-offset-4">
                <div class="row">
                    <div class="box-bg-white col-md-12 col-xs-12 form-medium-padding">
                        <h3 class="text-center text-gray-1">이메일아이디 찾기</h3>
                        <p class="text-center">회원정보에 등록한 휴대전화를 입력</p>
                        <div class="clearfix maya-small-padding"></div>

                        <form id="ajaxFindEmailForm" action="" method="post">
<!--                              <div class="form-group">
                                <input type="text" class="form-control" id="business_name" placeholder="이름" required name="importName">
                            </div>
                           <div class="form-group">
                                <input type="text" class="form-control" id="tagline" placeholder="생년월일(예:20191115)" required name="importBirth">
                            </div>  -->
                            
<!--                             <div class="form-group">
                                <input type="email" class="form-control" id="bank_account" placeholder="이메일">
                            </div>  -->
                            <div class="form-group">
                                <input type="tel" class="form-control" id="account_number" placeholder="휴대폰 번호" required name="phone">
                            </div> 

                            <button type="button" onclick="sendSMS()" class="btn btn-outline-primary">인증받기</button>
                            <div class="clearfix maya-tiny-padding"></div>
                            <div class="form-group">
                                <input type="text" class="form-control" id="bank_account_name" placeholder="인증번호 6자리 숫자입력" disabled>
                            </div> 
                            <button type="button" onclick="compareSMS()" class="btn btn-block button-green-free btn-lg">확인</button>
                           <!-- <button type="button" class="btn btn-block button-green-free btn-lg" data-toggle="tooltip" data-placement="top" 
                            		title="인증번호가 오지 않으면 다시 한 번 눌러주세요"
                            		onclick="callImport()">
                            	인증받기
                            </button> -->
                            <input type="hidden" id="hiddenEmail">
                        </form>
                        <div class="clearfix maya-tiny-padding"></div>
                        <!-- <p class="text-center"><a href="emailVerify.me" class="text-secondary">이메일로 인증</a></p> -->
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
<script src="resources/2_bak/js/jquery.min.js"></script>
<script>window.jQuery || document.write('<script src="../../assets/js/vendor/jquery.min.js"><\/script>')</script>
<script src="resources/2_bak/js/bootstrap.min.js"></script>

<!--kimi basic js-->
<script src="resources/2_bak/js/kimi.js"></script>
<!--tooltip  -->
<script>
$(function () {
	  $('[data-toggle="tooltip"]').tooltip()
	
/*   // IMP.certification(param, callback) 호출
  function callImport() {
	
	  IMP.certification({ // param
	    
	  }, function (rsp) { // callback
	    if (rsp.success) {
	      console.log("success");
	    } else {
	      console.log("fail");
	    }
	  });
	} */
	//$("#ajaxFindEmailForm").on("submit",function() {
		})
		var randomSMS;
		var infoMem;
		function sendSMS() {
		$.ajax({
			url:"ajaxfindEmail.do",
			method:"post",
			data:{phone:$("#account_number").val()},
			dataType:"json",
			error:function() {
				console.log("disconnected");
			},
			success:function(infoMap) {
				if( infoMap != null) {
					randomSMS = infoMap.SMS;
					infoMem = infoMap.mem;
					console.log(randomSMS);
					$("#bank_account_name").attr("disabled", false);
				}else {
					alert("휴대폰 번호를 잘 입력해 주세요");
				}
			}
		})
	}
		function compareSMS() {
			if($("#bank_account_name").val() == randomSMS) {
				//console.log(infoMem);
				/* $.ajax({
					url:"loginForm.do",
					method:"post",
					data:{email:infoMem},
					error:function() {
						console.log("disconnected");
					},
					success:function() {
						//console.log("connected");
					}
					}) */
						alert("귀하의 이메일은 " + infoMem + " 입니다");
						location.href="loginForm.do";
				}else {
				alert("인증번호가 다릅니다");
			}
		}

</script>
</body>
</html>
