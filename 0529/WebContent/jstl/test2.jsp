<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%request.setCharacterEncoding("utf-8"); %>
주소 : ${param.address}<br>
학과 : ${param.depart }<br>
취미 : <c:set var = "hobbies" value = "${paramValues.hobby }"/>
<c:forEach var="hobby" items="${hobbies }">
${hobby }<br>
</c:forEach>
</body>
</html>