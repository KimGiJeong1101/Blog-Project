<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!-- JSTL Core태그 라이브러리를 사용하기 위한 선언 -->
<!DOCTYPE html>
<!-- 
ID 중복체크를 위한 화면
 -->
<html>
	<head>
	<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<title>IDcheck</title>
		<link rel="stylesheet" type="text/css" href="/whisky/css/member.css">
		<link rel="stylesheet"
			href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
		<script src="/whisky/script/member.js"></script>
		<link rel="stylesheet"
			href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css"
			integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA=="
			crossorigin="anonymous" referrerpolicy="no-referrer" />
		<meta charset="UTF-8">
		<title>이메일중복체크</title>
		<script src="/whisky/script/member.js"></script>
		
		<style>
        body, html {
            height: 100%;
        }

        .center-container {
            height: 100%;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        /* 추가 스타일을 필요로 하는 경우 여기에 추가하세요 */
    </style>
	</head>
	<body>
	<div class="center-container" style="background-color:rgba(5, 0, 38, 1);">
			<form action="emailCheck.do" method="get" name="frm"> 
			<!-- 이메일중복을 하기 위한 폼 생성. idCehck.do서블릿으로 get 방식으로 전송 -->
			<div class="d-flex flex-column justify-content-center align-items-center">
			<div style="color:rgba(242, 214, 162, 1);">
			<h2>이메일 중복확인</h2>
			</div>
				<div class="input-group-prepend">
				<span class="input-group-text"> 
				<i class="fa-solid fa-envelope"></i>
				</span> 
				<input type="text" name="email" value="${email}"> 
				<input type="hidden" name="reid2" id="reid2" value="${email}">
				<input type="submit" class="btn custom-button" value="중복체크" onclick="return emailCheck2()">
				</div>
				<c:if test="${result==1}"> <!-- 중복체크결과가 1이면 중복된 아이디임 -->
					<script>
				 		opener.document.frm.email.value=""; // 부모창의 입력 필드를 초기화
				 	</script>	
				 	<br>
				 	<div style="color:rgba(242, 214, 162, 1);">
				 <strong>	${email}</strong>는 이미 사용중인 이메일 입니다.
				 	 </div>	
				</c:if>
				
				<c:if test="${result==-1}"> <!-- 중복체크결과가 -1이면 중복되지않은 아이디임 -->
					<br>
					<div style="color:rgba(242, 214, 162, 1);">
					<strong>${email}</strong> 는 사용가능 합니다. 
					</div>
					<input type="button" class="btn custom-button" value="사용" class="cancel" onclick="emailok('${email}')"> 
					<!-- 사용가능한  이메일을 알리는 메시지와 사용 버튼 표시, 사용버큰을 틀릭하면 idok('${userid}') 함수가 호출 -->
				</c:if>
			</form>
			</div>
		</div>
	</body>
</html>