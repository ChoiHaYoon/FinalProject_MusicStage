<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>각각의 페이지에 들어갈 script</title>
</head>
<body>

<script>

 	$(document).ready(function(){
 		
 		// 공지사항 alarm 설정
 		$("#insertNotice").submit(function(){
 		 	var alarm_sender = "${loginUser.userId}";
 	 	 	var alarm_title = $("#title_write").val();
 	 	 	var alarm_content = $("#content_write").val();

 	 	 	var AlarmData = {
 	 	 			"alarm_sender" : alarm_sender,
 	 	 			"alarm_type" : "Notice",
 	 	 			"alarm_title" : "<b>MusicStage </b>"+ alarm_title,
 	 	 			"alarm_content" : "<pre>"+alarm_content+"</pre>"
 	 	 	};

 	 	 	//스크랩 알림 DB저장
 	 	 	$.ajax({
 	 	 		type : 'post',
 	 	 		url : 'saveAlarm.ws',
 	 	 		data : JSON.stringify(AlarmData),
 	 	 		contentType: "application/json; charset=utf-8",
 	 	 		dataType : 'text',
 	 	 		success : function(data){
 	 	 			if(socket){
 	 	 				let socketMsg = "Notice," + alarm_sender + ",AllMember,null"; // 소켓에 보낼 메세지
 	 	 				console.log("msgmsg : " + socketMsg); // 소켓 메세지 확인 콘솔
 	 	 				socket.send(socketMsg); // 소켓에 메세지를 보낸다.
 	 	 			}

 	 	 		},
 	 	 		error : function(err){
 	 	 			console.log(err); 
 	 	 		}
 	 	 	});
 		});
 		
 		
 		
 		
 	});
</script>

</body>
</html>