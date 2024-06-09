<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
   <link rel="icon" href="data:;base64,iVBORw0KGgo=">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>회원정보</title>
    <link rel="stylesheet" type="text/css" href="/whisky/css/member.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
    <script src="/whisky/script/member.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" 
    integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA==" 
    crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
<body>
<div style="height: 80px; background-color: rgba(5, 0, 38, 1);">
<div align="center" class="mt-5 mb-custom">
    <a href="whiskyMain.do">
        <img src="/whisky/img/mypage.png" width="190" height="auto" alt="마이페이지로고" width="500" height="auto">
    </a>
</div>
</div>
<form action="memberUpdate.do" method="post" name="frm">
    <div class="d-flex flex-column justify-content-center align-items-center">
        <div class="mb-3">
            <a href="login.do"> 
                <img src="/whisky/img/update.png" width="230" height="auto" alt="로고이미지" width="500" height="auto" class="mt-5 mb-custom">
            </a>
            <div class="input-group;,text-left">
                <div class="mb-3">
                    <div class="input-group-prepend">
                        <span class="input-group-text"> 
                            <i class="fa-solid fa-user"></i>
                        </span> 
                        <input type="text" name="userid" value="${mVo.userid}"readonly>
                    </div>
                </div>      
                <div class="mb-3">
                    <div class="input-group-prepend">
                        <span class="input-group-text"> 
                            <i class="fa-solid fa-user"></i>
                        </span>
                        <input type="text" name="name" value="${mVo.name}" >
                      
                    </div>
                </div>  
                <div class="mb-3">
                    <div class="input-group-prepend">
                        <span class="input-group-text"> 
                            <i class="fa-solid fa-key"></i>
                        </span>
                        <input type="password" name="pwd">
                    </div>
                </div>
              <!--    <div class="mb-3">
                    <div class="input-group-prepend">
                        <span class="input-group-text"> 
                            <i class="fa-solid fa-key"></i>
                        </span>
                        <input type="password" name="pwd_check">
                    </div>
                </div> -->
                <div class="mb-3">
                    <div class="input-group-prepend">
                        <span class="input-group-text"> <i class="fa-solid fa-cake-candles"></i></span> 
                        <input type="text" name="birthdate" value="${mVo.birthdate}"readonly>
                      
                    </div>
                </div>
                <div class="mb-3">
                    <div class="input-group-prepend">
                        <span class="input-group-text"> <i class="fa-solid fa-envelope"></i></span> 
                        <input type="text" name="email" value="${mVo.email}"readonly>
                          <!-- 값을 ${mVo.email} 불러옴 -->
                    </div>
                </div>
                <div class="mb-custom2"></div>
                <div align="center">
                    <input type="submit" class="btn custom-button" value="수정" onclick="return joinCheck2()">
                    <input type="reset" class="btn custom-button" value="취소" onclick="return cancel()">
                </div>
                <div>
                    ${message}
                </div>
                <!-- ${message}: 서버로부터 전달된 메시지를 출력하는 JSP 표현식 -->
            </div>
        </div>
    </div>
</form>
</body>
</html>
