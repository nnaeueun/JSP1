<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	request.setCharacterEncoding("utf-8");
	String member = request.getParameter("member");
	request.setAttribute("MB", member);
	String opt = request.getParameter("opt");
	request.setAttribute("opt",opt);
%>
<jsp:forward page="output.jsp"/>
</body>
</html>