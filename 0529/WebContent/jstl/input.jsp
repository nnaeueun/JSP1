<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="test2.jsp" method ="post">
주소 : <input type = "text" name = "address" value = "부천">
학과 : <input type = "text" name = "depart" value = "it경영">
취미 : <input type = "checkbox" name = "hobby" value ="독서">독서
	<input type = "checkbox" name = "hobby" value ="게임">게임
	<input type = "checkbox" name = "hobby" value ="요리">요리
<input type = "submit" value = "입력">
</form>
</body>
</html>