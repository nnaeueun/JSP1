<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*" %><%--db를 가져오기 위한 sql클래스 모두 임포트 --%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>멤버 정보</title>
</head>
<body>
<%
	Class.forName("com.mysql.jdbc.Driver");
	Connection conn=null;	//JSP와 DB연결
	Statement stmt=null;	//SQL문장을 실행
	//ResultSet rs=null; insert.jsp는 입력하는 애기떄문에 ResultSet 필요 없다.
	try{//SQL문을 쓰려면 try catch구문 써주어야한다
		conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/web2","root","");
			//커넥션 만듦. 만드는 메소드 DriverManager.getConnection. "root", 비밀번호는 주지 않음
		stmt = conn.createStatement();
		int count = stmt.executeUpdate("update member set name='기성용',score=33 where memberid='b01'");
			//점수는 int형이므로 따옴표 없음
			//member라는 테이블을 업데이트, name을 기성용으로 score를 33으로 where memberid가 b01이라는 필드값인 애의..
			//where절 뒤에는 보통 프라이머리키로 쓴다..
		out.println(count+"개의 레코드가 수정되었습니다.");
			
	}catch(SQLException e){
		e.printStackTrace();
	}finally{
		conn.close();
		stmt.close();
	}
%>

</body>
</html>