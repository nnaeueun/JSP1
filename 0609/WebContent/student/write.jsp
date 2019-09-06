<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix ="c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix ="fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<%@ page import ="dao.*,model.*, util.*, java.sql.*, java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<fmt:requestEncoding value = "utf-8"/>
<jsp:useBean id="student" class ="model.Student"/>
<jsp:setProperty property="*" name="student"/>

<%// db에서 가져오기 위해 쓰는 공식
	student.setStuDate(new java.util.Date());//얘는 여기서 java로 설정해준다
	Connection conn = ConnectionProvider.getConnection();
	try{
		StudentDao dao = new StudentDao();//dao만들어주기
		dao.insert(conn, student);//daoinsert함
	}catch(SQLException e){}
%><!-- 스크립트릿에 선언한 pets를 가져와서 el형태로 표현하는거임 -->
학생 정보 입력 완료. <a href = "list.jsp">리스트보기</a>
</body>
</html>