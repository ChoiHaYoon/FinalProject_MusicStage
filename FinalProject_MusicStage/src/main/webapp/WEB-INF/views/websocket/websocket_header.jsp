<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>websocket header에 들어갈 script</title>
</head>
<body>

<script>
var socket = null; // socket 전역변수 선언.
$(document).ready(	function() {
	connectWS();
});
	
function connectWS() { // connect() 함수. 웹소켓을 연결하고 처리하는 함수.
	
	var ws = new WebSocket("ws://localhost:8080/replyEcho?bno=1234"); // 게시글 번호 1234에 대한 웹소켓 생성
	socket = ws; // 전역변수 socket에 웹소켓 요청 주소를 저장.
	
	ws.onopen = function() {
		console.log('Info: connection opened.'); // 커넥션이 연결되었을 때 확인 메세지.
	};

	ws.onmessage = function (event) {
		console.log(event.data + '\n');
	}
	
	ws.onclose = function (event){
		console.log('Info: connection closed.'); // 커넥션이 닫혔을때 확인 메세지.
// 		setTimeout( function(){ connect(); }, 1000); // 커넥션이 닫혔을 경우, 1초 후에 커넥션을 재연결.
	};
	
	ws.onerror = function(err) { console.log('Error:', err); }; // 커넥션 연결에 에러가 발생한 경우 확인 메세지. 

}

</script>

</body>
</html>