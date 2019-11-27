<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>1:1 채팅(이라 쓰고 댓글이라 읽는다)</title>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<style>
	#writeTable{
		position:absolute;
		top:460px;
		margin-bottom:0px;
	}
	#writeTable textarea{
		line-height:15px;
		vertical-align:middle;
	}
	#writeTable td{
		padding-top:0px;
		padding-bottom:0px;
		border:0;
		vertical-align:middle;
	}
</style>
</head>
<body>
	<table class="table table-bordered">
		<tr>
			<td style="width:30%">아이디칸</td>
			<td style="width:30%">작성시간</td>
			<td style="width:50%"></td>
		</tr>
		<tr>
			<td colspan="3">내용(내용부분)</td>
		</tr>
	</table>
	
	<table class="table" id="writeTable">
		<tr>
			<td style="width:90%;"><textarea rows="3" style="width:100%; resize:none;">작성내용</textarea></td>
			<td style="width:9%;"><button style="width:100%;" class="btn" type="submit">작성</button></td>
		</tr>
	</table>
		
	<script>
		$(function(){
			getChatList();
		});
	
		function getChatList(){
			
			$.ajax({
				url:"chatList.do",
				dataType:"json",
				success:function(data){
					console.log(data);
				}
			});
		}
	</script>
</body>
</html>