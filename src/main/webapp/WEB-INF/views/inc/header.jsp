<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> <!-- prefix -->
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">

    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://kit.fontawesome.com/5a8cdaf6f7.js" crossorigin="anonymous"></script>

    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/footer.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/header.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/modal.css">
    
    <link rel="shortcut icon" sizes="192x192" href="${pageContext.request.contextPath}/resources/image/feel_logo.png" />
    <meta name="mobile-web-app-capable" content="yes">
    <meta name="apple-mobile-web-app-capable" content="yes">

    <title>feel in like</title>
    
</head>
<body>
    <header>
        <h1 class="myhidden">feel in like</h1>
        <nav class="navbar">
            <h2 class="myhidden">주메뉴</h2>
            <div class="navbar_logo">
                <img class="logo" src="${pageContext.request.contextPath}/resources/image/feel_1.png" />
            </div>
            <ul class="navbar_menu">
                <li class="highlight"><a href="today_content.feel">오늘의 콘텐츠</a></li>
                <li class="active">|</li>
                <li class="highlight"><a href="customer_board.feel">고객 문의</a></li>
                <li class="active">|</li>
                <li class="highlight"><a href="more_info.feel">FIL 알아보기</a></li>
            </ul>
            <where>
            	<if test=""></if>
            
            </where>
            <ul class="navbar_login">
                 <li><a href="login.js" class="login">LOGIN</a></li>
                 <li>|</li>
                 <li><a href="sign_agree.js">SIGNUP</a></li>
            </ul>

            <a href="#" class="navbar_togglebtn">
                <i class="fa-solid fa-bars"></i>
            </a>
        </nav>
    </header>