<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원가입</title>
</head>
<body>
회원정보 입력 <br><hr><br>
<form action = "process.jsp" method = "post">
아이디 : <input type = "text" name = "memberId" size = "5">
비밀번호 : <input type = "password" name = "password" size = "5">
이름 : <input type = "text" name = "userName" size = "5">
<input type = "submit" value = "가입하기">
</form>
</body>
</html>