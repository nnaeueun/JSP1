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
	request.setCharacterEncoding("utf-8");
	String name = request.getParameter("name");
	String author = request.getParameter("author");
	int price = Integer.parseInt(request.getParameter("price"));
	//파라미터 가져와서 변수에 저장해주었다.
	
	
	Class.forName("com.mysql.jdbc.Driver");
	Connection conn=null;	//JSP와 DB연결
	PreparedStatement pstmt=null;	//SQL문장을 실행
	try{
		conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/web2","root","");
			//커넥션 만듦
		pstmt = conn.prepareStatement("insert into book (name,author,price) values (?,?,?)");
			//name author price가 ?에 매칭되는것
		pstmt.setString(1,name);
		pstmt.setString(2,author);
		pstmt.setInt(3,price);
		int count = pstmt.executeUpdate();
			//int count = stmt.executeUpdate("insert into book (name,author,price) values ('"+name+"','"+author+"',"+price+")");
			//(name,author,price)-> id값 안넣어주니까 뭘 넣을지 명시해주기
		out.println(count+"개의 레코드가 입력되었습니다.");
			
	}catch(SQLException e){
		e.printStackTrace();
	}finally{
		conn.close();
		pstmt.close();
	}
%>

</body>
</html>