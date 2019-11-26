<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>제안 내용 보기</title>
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
			<td>${ s.suggestionWriter }</td>
			<td>진행 여부</td>
			<td>${ s.progress }</td>
		</tr>
		<tr>
			<td>대분류</td>
			<td>${ s.suggestionCategory }</td>
			<td>중소분류</td>
			<td>${ s.suggestionDivision }</td>
		</tr>
		<tr>
			<td colspan="4">내용</td>
		</tr>
		<tr>
			<td colspan="4">${ s.suggestionContents }</td>
		</tr>
	</table>
	
</body>
</html>