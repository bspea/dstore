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
        <div class="talk-bodyCenter">
        	상담원과의 대화 내용은 실시간으로 저장되며,<br>
        	욕설 및 음란성 채팅이나<br>
        	문제 해결을 위한 문의가 아닌 경우<br>
        	상담이 중단되거나 제재 될 수 있음을 알려드립니다.
        </div>
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
			
			//getNewTime();
			
			
			
			setInterval(function(){

				// getChatList();
				
				getChatNotRead();
				// getNewTime();
			}, 1000);
			
			
			
			
			
			
			
			
			
			$("#talk-submit-btn").on("click", function(){
				
				$.ajax({
					url:"chatInsert.do?mno=",
					data:{chatContents:$(".talk-chatBox textarea").val()},
					success:function(data){
						
						if(data == 1){
							// console.log(data);
							// 입력할 때 seq_chat_no -1 까지는 전부 읽음처리 해야하나?
							// 아닌데... 채팅 리스트를 불러온 순간 다 읽은 거 아닌가? 그 때 읽음처리 해줘야 하지 않나?
							// 내가 쓴 채팅은 전부 읽음처리 해야 함 -> 내가 쓴 채팅 위까지. 그러려면 번호를 알아야 함 seq_chat_no - 1
							// 남이 쓴 채팅도 전부 읽음처리 해야 함
							// 아 ㅅㅂ
							$(".talk-chatBox textarea").val("");
							getChatList();
						}else{
							alert("채팅 작성 실패");
						}
					},
					error:function(){
						console.log("ajax 통신 실패");
					}
				});
				
			});
			
		});
		
		
		
	
		function getChatList(){
			// 불러오는 과정
			$.ajax({
				url:"chatList.do",
				dataType:"json",
				success:function(data){
					$(".talk-body").html("");
					// 갖다붙이기
					$.each(data, function(index, value){
						
						if(value.chatSend == ${loginUser.no}){
							addChatMe(value.nickName, value.chatContents, value.chatTime);
						}else{
							addChatAnother(value.nickName, value.chatContents, value.chatTime);
						}
						
					});
					
					// 스크롤 가장 아래로
					$(".talk-body").scrollTop($(".talk-body")[0].scrollHeight);
					
				}
			});
		}
		
		
		
		function chattingSend() {
            $('.talk-chatBox>textarea').val("");
        }
		
		
		
		function getNewTime(){
			
			var d = new Date();
			
			var year = (String)(d.getFullYear());
			var month = (String)(d.getMonth() + 1);
			var date = (String)(d.getDate());
			var hour = (String)(d.getHours());
			var minute = (String)(d.getMinutes());
			var second = (String)(d.getSeconds());
			var millisecond = (String)(d.getMilliseconds());
			
			if(month < 10){
				month = "0" + month;
			}
			
			if(date < 10){
				date = "0" + date;
			}
			
			if(hour < 10){
				hour = "0" + hour;
			}
			if(minute < 10){
				minute = "0" + minute;
			}
			if(second < 10){
				second = "0" + second;
			}
			
			var currentTime = year + month + date + hour + minute + second + millisecond;
			
			// console.log("현재시간 : " + currentTime);
			
			
			
			
			$.ajax({
				url:"compareLastChatWithCurrentTime.do",
				data:{chatTime:currentTime},
				chache:false,
				async:false,
				success:function(data){
					// console.log("변경 전 currentTime : " + currentTime);
					// console.log("변경 전 lastChatTime : " + data);
					if(currentTime > data){
						
						location.reload(true);
						getLastTimeChat(currentTime);
						// currentTime = data;
						
					}else{
						
						// currentTime = data;
						
					}
					// console.log("변경 후 currentTime : " + currentTime);
					// console.log("변경 후 lastChatTime : " + data);
				}
			});
			
			getLastTimeChat(currentTime);
			
			
		}
		
		
		
		function getLastTimeChat(currentTime){
			
			$.ajax({
				method:"POST",
				url:"getLastChat.do",
				data:{chatTime:currentTime},
				chache: false,
				async: false,
				success:function(data){
					
					
					
					
					$.each(data, function(index, value){
						
						if(value.chatWriter == ${loginUser.no}){
							addChatMe(value.nickName, value.chatContents, value.chatTime);
						}else{
							addChatAnother(value.nickName, value.chatContents, value.chatTime);
						}
						
					});
					
					
					
					confirmChat();
					
					
					
					
					
				},
				error:function(){
					console.log("getLastChatTime() 실패");
				}
			});
		}
		
		function confirmChat(){
			
			$.ajax({
				url:"confirmChat.do",
				success:function(data){
					
					
				}
			});
		}
		
		function getChatNotRead(){
			
			$.ajax({
				url:"selectChatNotRead.do?mno=4",
				dataType:"json",
				success:function(data){
					
					$.each(data, function(index, value){
						if(value.chatSend == ${loginUser.no}){
							addChatMe(value.nickName, value.chatContents, value.chatTime);
						}else{
							addChatAnother(value.nickName, value.chatContents, value.chatTime);
						}
						
					});
					
					$(".talk-body").scrollTop($(".talk-body")[0].scrollHeight);
				}
			});
		}
	</script>
	
	
</body>
</html>