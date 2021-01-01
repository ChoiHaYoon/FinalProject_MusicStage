<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <script src="http://code.jquery.com/jquery-3.3.1.min.js"></script>
<link href="<c:url value="/resources/css/membership.css?after"/>" rel="stylesheet">
<link href="<c:url value="/resources/css/default.css?after"/>" rel="stylesheet">
<style>
        @import url('https://fonts.googleapis.com/css2?family=Nanum+Gothic&display=swap');
    </style>
</head>
<body>
  <div class="div_main_frame"> 
        <div class="headpoint">
            <span class="backbutton">
                <img src="${pageContext.request.contextPath}/resources/images/back.png" style="width: 15px;">
            </span>
            <span class="headpoint_dot">
                <img src="${pageContext.request.contextPath}/resources/images/gg.png " style="width: 5px;">
            </span>
            <span class="headpoint_dot">
                <img src="${pageContext.request.contextPath}/resources/images/gg.png " style="width: 5px;">
            </span>
            <span class="headpoint_dot">
                <img src="${pageContext.request.contextPath}/resources/images/gg.png " style="width: 5px;">
            </span>
            <span class="headpoint_dot">
                <img src="${pageContext.request.contextPath}/resources/images/gg.png " style="width: 5px;">
            </span>
            <p style="font-size: 4px;">마지막 단계입니다! 전문가이신가요?<br>
            전문가 등록을 하시면 다양한 혜택을 누리세요!</p>
        </div>
      
        <div style="margin-bottom: 20px; margin-top: 20px; text-align: center;" >        
            <button class="button_css5"><p class="text_p" >전문가 등록</p></button>
        </div>
        <div style="margin-bottom: 20px;  text-align: center;">
        <p class="text_pp">음악을 즐기러 가볼까요?</p>
        </div>
        <div style=" text-align: center;">        
            <button class="button_css5">
                <p  class="text_p">완료</p>
            </button>
        </div>
    </div>

</body>
</html>