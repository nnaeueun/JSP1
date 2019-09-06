<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix ="c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix ="fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<%@ page import = "model.*, dao.*, util.*, java.sql.*, java.util.*" %><%--기본적으로 필요한 5가지 임포트 해주기 --%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%	request.setCharacterEncoding("utf-8");%>
<jsp:useBean id = "food" class = "model.Food"/>
<jsp:setProperty property = "*" name = "food"/>

<%
	food.setFoodDate(new java.util.Date());
	Connection conn = ConnectionProvider.getConnection();
	int count =0;
	try{
		FoodDao dao = new FoodDao();
		count = dao.update(conn, food);//dao.update값이 void이므로 MovieDao.java에 update를 int형으로 수정하기
	}catch(SQLException e){}%>
	
<%=count %>개의 음식정보가 수정되었습니다.<br>
<a href = "/0612/food/list.jsp">리스트보기</a>
</body>
</html>