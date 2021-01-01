<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>Document</title>
    <script>
        $(document).ready(function(){
            $(".default_option").click(function(){
                $(this).parent().toggleClass("active");
            })

            $(".select_ul li").click(function(){
                var currentHtml = $(this).html();
                $(".default_option li").html(currentHtml);
                $(this).parents(".select_wrap").removeClass("active");
            })
        });
    </script>
<style>
    *{
        list-style: none;
        margin: 0;
        padding:0;
        box-sizing: border-box;
    }
    
    .box{
        margin-top: 100px;
    }

    .box h2{
        color: black;
        font-size: 30px;
        font-weight: 500;
        margin-bottom: 10px;
    }

    .box input, .box button[type="submit"]{
        position:absolute;
        display: inline-block;
        font-size: 20px;
        box-sizing: border-box;
        height:100%;
    }

    .box input[type="text"]{
        background: #fff;
        width: calc(100% - 150px);
        border:none;
        outline: none;
        padding: 5px 25px;
        left:125px;

    }

    .box button[type="submit"]{
        border:none;
        outline:none;
        cursor:pointer;
		right:0;
        padding:0 5px;
        background: transparent;
    }

    .search_form{
        position:relative;
        width:100%;
        border:5px solid brown;
        border-radius: 10px;
    }

    .select_wrap{
        width:125px;
        position:relative;
        user-select: none;
        display: inline-block;
    }

    .select_wrap ul{
        padding:0;
        margin:0;
        list-style: none;
    }

    .select_wrap .default_option{
        background:#fff;
        position: relative;
        cursor: pointer;
    }

    .select_wrap .default_option li{
        padding:10px 20px;
    }

    .select_wrap .default_option:before{
        content:"";
        position: absolute;
        top:12px;
        right: 18px;
        width:6px;
        height: 6px;
        border:2px solid;
        border-color: transparent transparent #555555 #555555;
        transform: rotate(-45deg);
    }

    .select_wrap .select_ul{
        position: absolute;
        top:55px;
        left:0;
        width:100%;
        background: #fff;
        display: none;
    }

    .select_wrap .select_ul li{
        padding: 10px 20px;
        cursor: pointer;
    }

    .select_wrap .select_ul li:hover{
        background: #fff4dd;
    }

    .select_wrap ul:nth-child(2){
        margin-top: -16px;
    }

    .select_wrap.active .select_ul{
        display: block;
    }

    .select_wrap.active .default_option:before{
        top:50%;
        transform: rotate(-225deg);
    }
</style>
</head>
<body>
    <div class="box">
        <h2>여기가 너의 STAGE</h2>
        <form>
            <div class="search_form">
                <div class="select_wrap">
                    <ul class="default_option">
                        <li>
                            <div class="option0">
                                <p>-- 선택 --</p>
                            </div>
                    </li>
                    </ul>
                    <ul class="select_ul">
                        <li>
                            <div class="option1">
                                <p>111</p>
                            </div>
                        </li>
                        <li>
                            <div class="option2">
                                <p>222</p>
                            </div>
                        </li>
                        <li>
                            <div class="option3">
                                <p>333</p>
                            </div>
                        </li>
                        <li>
                            <div class="option4">
                                <p>444</p>
                            </div>
                        </li>
                        <li>
                            <div class="option5">
                                <p>555</p>
                            </div>
                        </li>
                    </ul>
                </div>
                <input type="text" placeholder="검색">
                <button type="submit">
                    <i class="fas fa-search"></i>
                </button>
            </div>
        </form>
    </div>
</body>
</html>