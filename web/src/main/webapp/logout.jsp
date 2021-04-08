<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

	
	<% 
		
		// session.invalidate(); // 모든 세션 없애기 
		session.setAttribute("user", null ); // 해당 세션id null
			
		PrintWriter script = response.getWriter();
		script.println( "<script>" );
	
		script.println( "alert(' 로그아웃 되었습니다 ');" );    // 메시지  창 
		script.println( "location.href='main.jsp'" ); // 링크 보내기 
						
		script.println( "</script>" );
			
		// jsp 페이지 이동 
		// response.sendRedirect("main.jsp");
		
	%>
	
</body>
</html>