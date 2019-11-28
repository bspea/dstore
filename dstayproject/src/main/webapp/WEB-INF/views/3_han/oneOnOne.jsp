<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>1:1 채팅(이라 쓰고 댓글이라 읽는다)</title>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<link href="${ pageContext.request.contextPath }/resources/css/3_han/kakaoChatCSS.css?ver=1" rel="stylesheet">
<script type="text/javascript" src="${ pageContext.request.contextPath }/resources/js/3_han/kakaoChatScript.js?ver=1"></script>
<style>
	
</style>
</head>
<body>

	   <div class="talk-bgHeader">
        <div class="talk-header">
            디스테이 1:1문의
        </div>
    </div>
    <div class="talk-body">
        <div class="talk-bodyCenter">상담원과의 대화 내용은 실시간으로 저장되며, 욕설 및 음란성 채팅이나 문제 해결을 위한 문의가 아닌 경우 상담이 중단되거나 제재 될 수 있음을 알려드립니다.</div>
    </div>
    <div class="talk-bottom">
        <div class="talk-chatBox">
            <textarea></textarea>
            <button id="talk-submit-btn" onclick="chattingSend();">입력</button>
        </div>
    </div>

    
	
	
	
	
	
	
		
	<script>
		$(function(){
			getChatList();
			
			/* $("#talk-submit-btn").on("click", function(){
				
				$.ajax({
					url:"chatInsert.do",
					data:{},
					
				});
				
			}); */
			
		});
		
		
		
	
		function getChatList(){
			
			$.ajax({
				url:"chatList.do",
				dataType:"json",
				success:function(data){
					// console.log(data);
					
					console.log(${loginUser.no});
					
					$.each(data, function(index, value){
						
						if(value.chatWriter == ${loginUser.no}){
							addChatMe(value.nickName, value.chatContents, value.chatTime);
						}else{
							addChatAnother(value.nickName, value.chatContents, value.chatTime);
						}
						
					});
				}
			});
		}
	</script>
	
	<script>
        function chattingSend() {
            $('.talk-chatBox>textarea').val("");
        }
    </script>
</body>
</html>