<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

<link href="${ pageContext.request.contextPath }/resources/css/3_han/chatRoom.css?ver=1" rel="stylesheet">
<script type="text/javascript" src="${ pageContext.request.contextPath }/resources/js/3_han/chatRoom.js?ver=1"></script>
</head>
<body>
	<div class="chatRoom-head">
        <img src="${ pageContext.request.contextPath }/resources/images/3_han/logo.png" onclick="location.reload();"></img><p onclick="location.reload();">상담사 페이지</p>
    </div>
    <div class="chatRoom-search">
        <input type="text" placeholder="검색할 닉네임을 입력해주세요."><button onclick="searchEvent();">검색</button>
    </div>
    <div class="chatRoom-body">
        
    </div>

    <script>
        // 채팅방을 눌렀을 때 작동할 함수입니다.
        // index : 채팅방의 인덱스입니다. addChat으로 생성될 때 자동으로 지정됩니다.
        // mno : 채팅방의 회원 번호입니다. addChat으로 생성될 때 자동으로 지정됩니다.
        function openChatting(index, mno) {
            // 새창 띄우십시오.
        }

        // 검색했을 때 작동할 함수입니다.
        function searchEvent() {
            // ---------------------------------------------------------------
            // Setting. 특이한 경우가 아니면 아래를 수정하지 마십시오.
            // text 변수는 검색창에 입력된 텍스트를 뜻합니다.
            var text = $('.chatRoom-search input').val();
            $('.chatRoom-search input').val(""); // 검색된 내용은 지워줍니다.
            // ---------------------------------------------------------------
            // Setting End. 이하부터 코드를 작성하십시오.
        }
        
    </script>
</body>
</html>