<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="UTF-8">
	<title>SideBar Menu</title>
<style>
	header{z-index: 1; height:50px; position: fixed;}
    #centerWrap{margin:0 250px; height: 800px;}
    #left_div{display: inline-block; width:50%; height:500px; float: left;}
    #center_div{position: relative; top:150px; height:300px; margin:0 20px;}
    #quick_menu{display: flex; font-size: 0; padding:0; margin:20px auto;}
    #quick_menu li{display: inline-block; width: 25%; font-size: 12px; list-style: none; text-align: center;}
    #quick_menu img{max-width: 80%; max-height: 50%;}
    #right_div{display: inline-block; width:50%; height:500px; float: left;}

    #main_img{
        height: 100%;
        object-fit: cover;
        -webkit-filter: grayscale(100%);
        filter: gray;
        opacity: 0.2;
        max-width: -webkit-fill-available;
        max-height: 100%;
    }

    #slide_menu{
    	display: inline-block;
    	width:100%;
    	height:350px;
    	border: 1px solid brown;
    	margin-top:20px;
    }

	.section{
	  width: 100%;
	  height: 100vh;
	  margin-top: 50px;
	  z-index: 1;
	}
</style>
</head>
<body>
 	<%@ include file="../common/header.jsp" %>
	<section class="section">
		<div id="centerWrap"> <!-- 여기에다가 넣으면 됩니다 -->
            <div id="left_div">
                <div id="center_div">
                    <div>
                         <%@ include file="search.jsp" %>
                    </div>
                    <div>
                        <ul id="quick_menu">
                            <li><a href="#"><img src="<%= request.getContextPath() %>/resources/images/social.png" alt="소셜"></a></li>
                           	<li><a href="#"><img src="<%= request.getContextPath() %>/resources/images/find.png"></a></li>
                            <li><a href="#"><img src="<%= request.getContextPath() %>/resources/images/review.png"></a></li>
                            <li><a href="#"><img src="<%= request.getContextPath() %>/resources/images/column.png"></a></li>
                        </ul>
                    </div>
                </div>
            </div>
            <div id="right_div"><img src="<%= request.getContextPath() %>/resources/images/headset.jpeg" id="main_img"></div>
            <div id="slide_menu">
                <%@ include file="../common/slide_modal.jsp" %>
            </div>
            <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
            <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
            <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
            <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
        </div>
	</section>
</body>
</html>