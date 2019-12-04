<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

    <!-- Custom css -->
    <link href="${ pageContext.request.contextPath }/resources/css/4_jong/logo-top.css?ver=5" rel="stylesheet">
    
    <!-- jQuery -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="http://ricostacruz.com/jquery.transit/jquery.transit.min.js"></script>

    <!-- Boot Strap -->
    <link href="${ pageContext.request.contextPath }/resources/css/1_common/bootstrap.min.css" rel="stylesheet">
    
    <!-- Custom css -->
    <link href="${ pageContext.request.contextPath }/resources/css/4_jong/top-menu.css?ver=8" rel="stylesheet">

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
    /* 테스트용 CSS */
    </style>
    <!--네이버   -->
<script type="text/javascript" src="https://static.nid.naver.com/js/naverLogin_implicit-1.0.3.js" charset="utf-8"></script>
<!--구글  -->
<script src="https://apis.google.com/js/platform.js?onload=init" async defer></script>
<!--카카오 -->
<meta charset="utf-8"/>
<meta http-equiv="X-UA-Compatible" content="IE=edge"/>
<meta name="viewport" content="user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, width=device-width"/>
<script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>
</head>
<body>
    <div class="fixedArea">
    <div class="topFixedDiv">
    <div class="logo-top">
        <div class="topLeft">
                <a href="${ pageContext.request.contextPath }/main.do"><img src="${ pageContext.request.contextPath }/resources/images/4_jong/logo.png" width=100px></a>
        </div>

        <div class="topMiddle">
            <input type="search" placeholder="검색어를 입력해주세요.">
        </div>

		<div class="topRight">
             <!-- pc버전 -->
            <div class="size-pc">
            <c:if test="${empty loginUser }">
            	<a href="${ pageContext.request.contextPath }/loginForm.do">로그인</a>
                <a href="${ pageContext.request.contextPath }/registerForm.do">회원가입</a>
            </c:if>
            <c:if test="${!empty loginUser && loginUser.email eq 'admin@dstay.com' }">
	            <a href="">관리자</a>
	            <a href="${ pageContext.request.contextPath }/logout.do">로그아웃</a>
            </c:if>
            <c:if test="${!empty loginUser && loginUser.email ne 'admin@dstay.com'}">
                <a href="javascript:logout()">로그아웃</a>
                <a href="${ pageContext.request.contextPath }/mypage/info.do">마이페이지</a>
            </c:if>
            
                <a href="${ pageContext.request.contextPath }/selectShoppingCart.do">장바구니</a>
                <a href="${ pageContext.request.contextPath }/customerCenter.do">고객센터</a>
            </div>

            <!-- 모바일버전 (화면작은) -->
            <div class="size-mobile">
                <img class="test" src="${ pageContext.request.contextPath }/resources/images/4_jong/listTest.png" onclick="mobileOpenMenu();">

                <!-- 아이콘 누르면 나타날 메뉴리스트 -->
                <div class="icon-menuList">
                
                <c:choose>
                	<c:when test="empty ${loginUser} ">
                		<div class="menuList-title">${loginUser.nickName }님</div>
                	</c:when>
                	
                	<c:otherwise>
                		<div class="menuList-title">로그인을 해주세요</div>
                	</c:otherwise>
                </c:choose>
                    
                    <div id="menuList-select"></div>
                    <c:if test="${empty loginUser}">
                    	<div onclick="location.href = '${ pageContext.request.contextPath }/loginForm.do'"><img src="${ pageContext.request.contextPath }/resources/images/4_jong/menusmallicon.png">로그인</div>
                    </c:if>
                    
                    <c:if test="${!empty loginUser}">
                    	<div onclick="location.href = '${ pageContext.request.contextPath }/logout.do'"><img src="${ pageContext.request.contextPath }/resources/images/4_jong/menusmallicon.png">로그아웃</div>
                    </c:if>
                    
                    
                    <div onclick="location.href = '${ pageContext.request.contextPath }/mypage/info.do'"><img src="${ pageContext.request.contextPath }/resources/images/4_jong/menusmallicon.png">마이페이지</div>
                    <div onclick="location.href = '${ pageContext.request.contextPath }/selectShoppingCart.do'"><img src="${ pageContext.request.contextPath }/resources/images/4_jong/menusmallicon.png">장바구니</div>
                    <div onclick="location.href = '${ pageContext.request.contextPath }/customerCenter.do'"><img src="${ pageContext.request.contextPath }/resources/images/4_jong/menusmallicon.png">고객센터</div>
                </div>
                <div class="icon-menuList-leave" onclick="mobileCloseMenu();">메뉴바 닫기</div>
            </div>
        </div>
    </div>

    <div class="menu-div">
        <div class="menu-line"><a href="product.do">메뉴목록</a></div>
        <div class="menu-line"><a href="product.do">베스트목록</a></div>
        <div class="menu-line"><a href="product.do">신상품</a></div>
        <div class="menu-line"><a href="product.do">할인품목</a></div>
    </div>
    </div>
    </div>

<script type='text/javascript'>
	 var googleAuth;
	 function init() {
		  gapi.load('auth2', function() {
		    /* Ready. Make a call to gapi.auth2.init or some other API */
		   console.log("auth2 loaded");  
		  googleAuth = gapi.auth2.init({
			  client_id: "772225320155-psolb8vekpte4t7h2bl88b0tt3p3sfn6.apps.googleusercontent.com"
		  })
		  });
		}  
	Kakao.init('b6ca5845154feff6cc055835f1f75513');
	function logout() {
		Kakao.Auth.logout(function() {
			location.href="logout.do";
		})

			googleAuth.signOut().then(function() {
				location.href="logout.do";

		})
	}

</script>
</body>
</html>