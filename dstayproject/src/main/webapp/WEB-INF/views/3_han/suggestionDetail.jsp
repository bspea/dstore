<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>제안 내용 보기</title>
<script  src="http://code.jquery.com/jquery-latest.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
</head>
<body>
	<h3>제안 세부내용</h3>
	<table class="table table-bordered">
		<tr>
			<td>제목</td>
			<td>${ s.suggestionTitle }</td>
			<td>날짜</td>
			<td>${ s.writeDate }</td>
		</tr>
		<tr>
			<td>작성자</td>
			<td>${ s.suggestionWriterName }</td>
			<td>전화번호</td>
			<td>${ s.suggestionWriterPhone }</td>
		</tr>
		<tr>
			<td>진행 여부</td>
			<td>${ s.progress }</td>
			<td>번호</td>
			<td>${ s.suggestionNo }</td>
		</tr>
		<tr>
			<td>대분류</td>
			<td>
            	<c:choose>
            		<c:when test="${ s.suggestionCategory eq 'suggestion'}">제안</c:when>
            		<c:when test="${ s.suggestionCategory eq 'error'}">장애/오류</c:when>
            	</c:choose>
			</td>
			<td>중소분류</td>
			<td>
               	<c:choose>
               		<c:when test="${ s.suggestionDivision eq 'sales'}">상품 판매 제안</c:when>
               		<c:when test="${ s.suggestionDivision eq 'event'}">이벤트/혜택 제안</c:when>
               		<c:when test="${ s.suggestionDivision eq 'service'}">서비스 제안</c:when>
               		<c:when test="${ s.suggestionDivision eq 'systeam'}">시스템 제안</c:when>
               		<c:when test="${ s.suggestionDivision eq 'compliment'}">서비스 칭찬</c:when>
               		<c:when test="${ s.suggestionDivision eq 'other'}">기타 제안</c:when>
               		<c:when test="${ s.suggestionDivision eq 'error'}">시스템장애(PC/Mobile)</c:when>
               		<c:when test="${ s.suggestionDivision eq 'mark'}">표기 오류</c:when>
               	</c:choose>
			</td>
		</tr>
		<tr>
			<td colspan="4">내용</td>
		</tr>
		<tr>
			<td colspan="4">${ s.suggestionContents }</td>
		</tr>
		<tr>
			<td>처리할 작업을 선택하세요</td>
			<td>
				<select id="select">
					<option value="C">확인</option>
					<option value="P">관련부서 전달</option>
				</select>
			</td>
			<td><button id="pBtn">처리</button></td>
		</tr>
	</table>
	
	<script>
		$(function(){
			$("#pBtn").on("click", function(){
				
				var result = confirm("처리하시겠습니까?");
				
				if(result){
					
					console.log($("#select option:selected").val());
					
					$.ajax({
						url:"suggestionOperation.do",
						data:{progress:$("#select option:selected").val(), suggestionNo:${ s.suggestionNo }},
						success:function(data){
							
							if(data == "success"){
								console.log("오케이");
								
								opener.location.reload();
								self.close();
								
							}else{
								console.log("");
							}
						},
						error:function(){
							
						}
					});
					
					
				}
				
				
				
			});
		});
	</script>
</body>
</html>