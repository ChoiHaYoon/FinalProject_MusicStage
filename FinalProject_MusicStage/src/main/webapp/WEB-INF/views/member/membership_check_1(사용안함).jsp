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
<style>
        @import url('https://fonts.googleapis.com/css2?family=Nanum+Gothic&display=swap');
    </style>
</head>
<body>
<div class="div_main_frame">
		<form action="check2" accept-charset="UTF-8" method="get" style="display: inline;">
        <div class="headpoint">
            <span class="backbutton">
                <img src="${pageContext.request.contextPath}/resources/images/back.png" style="width: 15px;">
            </span>
            <span class="headpoint_dot">
                <img src="${pageContext.request.contextPath}/resources/images/gg.png " style="width: 5px;">
            </span>
            <span  class="headpoint_dot">
                <img src="${pageContext.request.contextPath}/resources/images/gg.png " style="width: 5px;">
            </span>
            <span class="headpoint_dot">
                <img src="${pageContext.request.contextPath}/resources/images/gg.png " style="width: 5px;">
            </span>
            <span class="headpoint_dot">
                <img src="${pageContext.request.contextPath}/resources/images/gg.png " style="width: 5px;">
            </span>
            <p class="text_p">관심사를 선택해 주세요!</p>
        </div>
        <div style="text-align:center; width:280px; margin-left: auto; margin-right: auto; margin-top: 10px;" >        
            <table>
                <tr>
                    <tb class="table_img_frame">
                        <img src="${pageContext.request.contextPath}/resources/images/gita.jpg" class="table_img" >
                    </tb>
                    <tb class="table_img_frame">
                        <img src="${pageContext.request.contextPath}/resources/images/ff.jpg" class="table_img" >
                    </tb>
                    <tb class="table_img_frame">
                        <img src="${pageContext.request.contextPath}/resources/images/1.jpg" class="table_img" >
                    </tb>
                    <tb class="table_img_frame">
                        <img src="${pageContext.request.contextPath}/resources/images/1.jpg" class="table_img" >
                    </tb>
                    <tb class="table_img_frame">
                        <img src="${pageContext.request.contextPath}/resources/images/1.jpg" class="table_img" >
                    </tb>
                </tr>

                <tr>
                    <tb class="table_img_frame">
                        <img src="${pageContext.request.contextPath}/resources/images/1.jpg" class="table_img" >
                    </tb>
                    <tb class="table_img_frame">
                        <img src="${pageContext.request.contextPath}/resources/images/1.jpg" class="table_img" >
                    </tb>
                    <tb class="table_img_frame">
                        <img src="${pageContext.request.contextPath}/resources/images/1.jpg" class="table_img" >
                    </tb>
                    <tb class="table_img_frame">
                        <img src="${pageContext.request.contextPath}/resources/images/1.jpg" class="table_img" >
                    </tb>
                    <tb class="table_img_frame">
                        <img src="${pageContext.request.contextPath}/resources/images/1.jpg" class="table_img" >
                    </tb>
                </tr>

                <tr>
                    <tb class="table_img_frame">
                        <img src="${pageContext.request.contextPath}/resources/images/gita.jpg" class="table_img" >
                    </tb>
                    <tb class="table_img_frame">
                        <img src="${pageContext.request.contextPath}/resources/images/1.jpg" class="table_img" >
                    </tb>
                    <tb class="table_img_frame">
                        <img src="${pageContext.request.contextPath}/resources/images/1.jpg" class="table_img" >
                    </tb>
                    <tb class="table_img_frame">
                        <img src="${pageContext.request.contextPath}/resources/images/1.jpg" class="table_img" >
                    </tb>
                    <tb class="table_img_frame">
                        <img src="${pageContext.request.contextPath}/resources/images/1.jpg" class="table_img" >
                    </tb>
                </tr>
            </table>
        </div>
        <div>        
            <button class="button_css5" type="submit"><p style="font-size: 5px; color: darkgray;">4개 선택</p></button>
        </div>
    </div>
   </form>
</body>
</html>