<<<<<<< HEAD
<<<<<<< HEAD
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

    <!-- Custom css -->
    <link href="${ pageContext.request.contextPath }/resources/css/4_jong/logo-top.css?ver=4" rel="stylesheet">
    
    <!-- jQuery -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="http://ricostacruz.com/jquery.transit/jquery.transit.min.js"></script>

    <!-- Boot Strap -->
    <link href="${ pageContext.request.contextPath }/resources/css/1_common/bootstrap.min.css" rel="stylesheet">
    
    <!-- Custom css -->
    <link href="${ pageContext.request.contextPath }/resources/css/4_jong/top-menu.css?ver=1" rel="stylesheet">

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
</head>
<body>
    <div class="fixedArea">
    <div class="topFixedDiv">
    <div class="logo-top">
        <div class="topLeft">
                <a href=""><img src="${ pageContext.request.contextPath }/resources/images/4_jong/logo.png" width=100px></a>
        </div>

        <div class="topMiddle">
            <input type="text" placeholder="검색어를 입력해주세요.">
        </div>

        <div class="topRight">
             <!-- pc버전 -->
            <div class="size-pc">
                <a href="">로그인</a>
                <a href="">마이페이지</a>
                <a href="">장바구니</a>
                <a href="">고객센터</a>
            </div>

            <!-- 모바일버전 (화면작은) -->
            <div class="size-mobile">
                <img class="test" src="${ pageContext.request.contextPath }/resources/images/4_jong/listTest.png" onclick="mobileOpenMenu();">

                <!-- 아이콘 누르면 나타날 메뉴리스트 -->
                <div class="icon-menuList">
                    <div class="menuList-title">차종환 님</div>
                    <div id="menuList-select"></div>
                    <div><img src="${ pageContext.request.contextPath }/resources/images/4_jong/menusmallicon.png">로그인</div>
                    <div><img src="${ pageContext.request.contextPath }/resources/images/4_jong/menusmallicon.png">마이페이지</div>
                    <div><img src="${ pageContext.request.contextPath }/resources/images/4_jong/menusmallicon.png">장바구니</div>
                    <div><img src="${ pageContext.request.contextPath }/resources/images/4_jong/menusmallicon.png">고객센터</div>
                </div>
                <div class="icon-menuList-leave" onclick="mobileCloseMenu();">메뉴바 닫기</div>
            </div>
        </div>
    </div>

    <div class="menu-div">
        <div class="menu-line">메뉴목록</div>
        <div class="menu-line">베스트목록</div>
        <div class="menu-line">신상품</div>
        <div class="menu-line">할인품목</div>
    </div>
    </div>
    </div>
</body>
=======
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

    <!-- Custom css -->
    <link href="${ pageContext.request.contextPath }/resources/css/4_jong/logo-top.css?ver=3" rel="stylesheet">
    
    <!-- jQuery -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="http://ricostacruz.com/jquery.transit/jquery.transit.min.js"></script>

    <!-- Boot Strap -->
    <%-- <link href="${ pageContext.request.contextPath }/resources/css/1_common/bootstrap.min.css" rel="stylesheet"> --%>
    
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
    
    

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
</head>
<body>
    <div class="fixedArea">
    <div class="topFixedDiv">
    <div class="logo-top">
        <div class="topLeft">
                <a href=""><img src="${ pageContext.request.contextPath }/resources/images/4_jong/logo.png" width=100px></a>
        </div>

        <div class="topMiddle">
            <input type="text" placeholder="검색어를 입력해주세요.">
        </div>

        <div class="topRight">
             <!-- pc버전 -->
            <div class="size-pc">
                <a href="">로그인</a>
                <a href="">마이페이지</a>
                <a href="">장바구니</a>
                <a href="customerCenter.do">고객센터</a>
            </div>

            <!-- 모바일버전 (화면작은) -->
            <div class="size-mobile">
                <img class="test" src="${ pageContext.request.contextPath }/resources/images/4_jong/listTest.png" onclick="mobileOpenMenu();">

                <!-- 아이콘 누르면 나타날 메뉴리스트 -->
                <div class="icon-menuList">
                    <div class="menuList-title">차종환 님</div>
                    <div id="menuList-select"></div>
                    <div><img src="${ pageContext.request.contextPath }/resources/images/4_jong/menusmallicon.png">로그인</div>
                    <div><img src="${ pageContext.request.contextPath }/resources/images/4_jong/menusmallicon.png">마이페이지</div>
                    <div><img src="${ pageContext.request.contextPath }/resources/images/4_jong/menusmallicon.png">장바구니</div>
                    <div><img src="${ pageContext.request.contextPath }/resources/images/4_jong/menusmallicon.png">고객센터</div>
                </div>
                <div class="icon-menuList-leave" onclick="mobileCloseMenu();">메뉴바 닫기</div>
            </div>
        </div>
    </div>

    <div class="menu-div">
        <div class="menu-line">메뉴목록</div>
        <div class="menu-line">베스트목록</div>
        <div class="menu-line">신상품</div>
        <div class="menu-line">할인품목</div>
    </div>
    </div>
    </div>
</body>
>>>>>>> refs/remotes/origin/dobin
=======
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>menubar</title>

    <!-- Custom css -->
    <link href="${ pageContext.request.contextPath }/resources/css/4_jong/logo-top.css?ver=3" rel="stylesheet">
    
    <!-- jQuery -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="http://ricostacruz.com/jquery.transit/jquery.transit.min.js"></script>

    <!-- Boot Strap -->
    <link href="${ pageContext.request.contextPath }/resources/css/1_common/bootstrap.min.css" rel="stylesheet">
    
    <!--  -->
    <!-- Boot Strap -->
    <link href="resources/css/2_bak/bootstrap.min.css?after" rel="stylesheet">

    <!-- Template css-->
    <link href="resources/css/2_bak/kimi.css" rel="stylesheet">

    <!-- Custom css -->
    <link href="resources/css/2_bak/logo-top.css" rel="stylesheet">
    <link href="resources/css/2_bak/top-menu.css" rel="stylesheet">
    <link href="resources/css/2_bak/mainBanner.css" rel="stylesheet">

    <!-- Custom JavaScript-->
    <script type="text/javascript" src="resources/js/mobile-menu.js"></script>
    <script type="text/javascript" src="resources/js/mainBanner.js"></script>
    <!--  -->
    
    

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
</head>
<body>
    <div class="fixedArea">
    <div class="topFixedDiv">
    <div class="logo-top">
        <div class="topLeft">
                <a href="home.do"><img src="${ pageContext.request.contextPath }/resources/images/4_jong/logo.png" width=100px></a>
        </div>

        <div class="topMiddle">
            <input type="text" placeholder="검색어를 입력해주세요.">
        </div>

        <div class="topRight">
             <!-- pc버전 -->
            <div class="size-pc">
            <c:if test="${empty loginUser }">
            	<a href="loginForm.do">로그인</a>
                <a href="registerForm.do">회원가입</a>
            </c:if>
            <c:if test="${!empty loginUser && loginUser.email eq 'admin@dstay.com' }">
	            <a href="">관리자</a>
	            <a href="logout.do">로그아웃</a>
            </c:if>
            <c:if test="${!empty loginUser && loginUser.email ne 'admin@dstay.com'}">
                <a href="logout.do">로그아웃</a>
                <a href="">마이페이지</a>
            </c:if>
            
                <a href="">장바구니</a>
                <a href="">고객센터</a>
            </div>

            <!-- 모바일버전 (화면작은) -->
            <div class="size-mobile">
                <img class="test" src="${ pageContext.request.contextPath }/resources/images/4_jong/listTest.png" onclick="mobileOpenMenu();">

                <!-- 아이콘 누르면 나타날 메뉴리스트 -->
                <div class="icon-menuList">
                    <div class="menuList-title">차종환 님</div>
                    <div id="menuList-select"></div>
                    <div><img src="${ pageContext.request.contextPath }/resources/images/4_jong/menusmallicon.png">로그인</div>
                    <div><img src="${ pageContext.request.contextPath }/resources/images/4_jong/menusmallicon.png">마이페이지</div>
                    <div><img src="${ pageContext.request.contextPath }/resources/images/4_jong/menusmallicon.png">장바구니</div>
                    <div><img src="${ pageContext.request.contextPath }/resources/images/4_jong/menusmallicon.png">고객센터</div>
                </div>
                <div class="icon-menuList-leave" onclick="mobileCloseMenu();">메뉴바 닫기</div>
            </div>
        </div>
    </div>

    <div class="menu-div">
        <div class="menu-line">메뉴목록</div>
        <div class="menu-line">베스트목록</div>
        <div class="menu-line">신상품</div>
        <div class="menu-line">할인품목</div>
    </div>
    </div>
    </div>
</body>
>>>>>>> refs/remotes/origin/hyunjung
</html>