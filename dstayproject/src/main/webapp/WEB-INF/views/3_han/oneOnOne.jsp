<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>1:1 채팅</title>
	<style>
		body{
			margin:0;
		}
		.jstalktheme{
			background-color: #d89bd5;
			padding: 4px 4px 0px 4px;
			width:320px;
		}
	
		.jstalktheme .clear{
			clear: both;
		}
	
		.jstalktheme .blank{
			clear: both;
			height: 4px;
		}
	
		.jstalktheme .msg{
			height: calc(100% - 72px);
			overflow-y: scroll;
			
			font-size: 12px;
		}
	
		.jstalktheme .msg .time{
			font-size: 10px;
		}
	
		.jstalktheme .msg .mytalk{
			float: right;
			width: 100%;
		}
	
		.jstalktheme .msg .mytalk .time{
			float: right;
			bottom: 0;
		}
	
		.jstalktheme .msg .mytalk .a{
			float: right;
			position: relative;
			min-height: 24px;
			max-width: calc(100% - 64px);
			left: 2px;
			background-color: #ffec42;
			border-radius: 3px;
			z-index: 2;
			padding: 0px 4px 0px 4px;
			word-break: break-all;
		}
	
		.jstalktheme .msg .mytalk .b{
			float: right;
			position: relative;
			width: 8px;
			height: 22px;
			background: url(./chat_balloon_yellow.right.png) no-repeat;
			z-index: 1;
		}
	
		.jstalktheme .msg .othertalk{
			float: left;
			width: 100%;
		}
	
		.jstalktheme .msg .othertalk .profile_image{
			float: left;
			height: 40px;
			border-radius: 14px; 
		}
	
		.jstalktheme .msg .othertalk .box{
			float: left;
			width: calc(100% - 48px);
		}
	
		.jstalktheme .msg .othertalk .box .profile_name{
			font-size: 12px;
		}
	
		.jstalktheme .msg .othertalk .box .a{
			float: left;
			position: relative;
			width: 8px;
			height: 22px;
			background: url(./chat_balloon_white.left.png) no-repeat;
			z-index: 1;
		}
	
		.jstalktheme .msg .othertalk .box .b{
			float: left;
			position: relative;
			min-height: 24px;
			max-width: calc(100% - 64px);
			left: -2px;
			background-color: #ffffff;
			border-radius: 3px;
			z-index: 2;
			padding: 0px 4px 0px 4px;
			word-break: break-all;
		}
	
		.jstalktheme .msg .othertalk .box .time{
			float: left;
		}
	
		.jstalktheme .sendmsg .textarea{
			float: left;
			width: calc(100% - 68px);
			height: 64px;
			border-radius: 8px 0px 0px 8px;
			margin: 0px 0px 0px 0px;
			padding: 2px 2px 2px 2px;
			resize: none;
		}
	
		.jstalktheme .sendmsg .button{
			float: right;
			width: 62px;
			height: 68px;
			background-color: #ffec42;
			border-radius: 0px 8px 8px 0px;
			margin: 0px 0px 0px 0px;
			padding: 0px 0px 0px 0px;
			text-align: center;
			display: table;
			cursor: pointer;
		}
	
		.jstalktheme .sendmsg .button p{
		display: table-cell;
		vertical-align: middle;
		}
	
		.jstalktheme p{
			margin:0;
			font-size:20px;
			border-bottom:2px solid white;
		}
		
	</style>
	<script>
		var test_type = 0;

		/*
		* type
		*      0 : mytalk
		*      1 : othertalk
		*/
		function jstalktheme_addmsg(type, name, time, msg){
			var ocontainer = document.getElementById("jstalktheme_test");
			var ocontainer_msg = ocontainer.getElementsByClassName("msg")[0];
			
			var onewmsg = document.createElement("div");
			var onewblank = document.createElement("div");
			
			if(type){
				onewmsg.className="othertalk";
				onewmsg.innerHTML = 
				"<div class=\"profile_image\" style=\"background: url(./profile_image.png) no-repeat;\">\n"+
				"</div>\n"+
				"<div class=\"box\">\n"+
				"<div class=\"profile_name\">\n"+
				name+"\n"+
				"</div>\n"+
				"<div class=\"a\">\n"+
				"</div>\n"+
				"<div class=\"b\">\n"+
				msg+"\n"+
				"</div>\n" +
				"<div class=\"time\">\n"+
				time+"\n"+
				"</div>\n"+
				"</div>\n";
			}else{
				onewmsg.className="mytalk";
				onewmsg.innerHTML = 
				"<div class=\"b\">\n"+
				"</div>\n"+
				"<div class=\"a\">\n"+
				msg+"\n"+
				"</div>\n"+
				"<div class=\"time\">\n"+
				time+"\n"+
				"</div>\n" +
				"";
			}
			
			onewmsg.innerHTML +=
			"<div class=\"clear\">\n"+
			"</div>";
			
			onewblank.className="blank";
			
			ocontainer_msg.appendChild(onewmsg);
			ocontainer_msg.appendChild(onewblank);
			
			ocontainer_msg.scrollTop = ocontainer_msg.scrollHeight;
		}


		function jstalktheme_testfunc(){
			var otxtmsg = document.getElementById("jstalktheme_testmsg");
			
			var d = new Date();
			var ampm = (d.getHours()>12 ?  "PM" : "AM");
			var h = (d.getHours()>12 ? d.getHours()-12 : d.getHours());
			var m = d.getMinutes();

			test_type ^= 0x01;
			jstalktheme_addmsg(test_type, "아무개", ampm+" "+h+":"+m, otxtmsg.value.replace("\n","<br />\n"));
		}

	</script>
</head>
<body>
	<div class="jstalktheme">
		<p>相扶三助 고객센터 1:1 채팅방</p>
	</div>
	<div class="jstalktheme" id="jstalktheme_test" style="height: 480px;">

		<div class="msg">

		</div>

		<div class="sendmsg">
			<textarea class="textarea" id="jstalktheme_testmsg" onkeypress="if(event.keyCode==13){ jstalktheme_testfunc(); this.value=''; return false; }else if(event.keyCode==10){ this.value+='\n'; }"></textarea>
			<div class="button" onclick="jstalktheme_testfunc()">
			<p>전송</p>
			</div>
			<div class="clear">
			</div>
		</div>

	</div>
</body>
</html>