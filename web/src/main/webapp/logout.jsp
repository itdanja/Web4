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
		
		// session.invalidate(); // ��� ���� ���ֱ� 
		session.setAttribute("user", null ); // �ش� ����id null
			
		PrintWriter script = response.getWriter();
		script.println( "<script>" );
	
		script.println( "alert(' �α׾ƿ� �Ǿ����ϴ� ');" );    // �޽���  â 
		script.println( "location.href='main.jsp'" ); // ��ũ ������ 
						
		script.println( "</script>" );
			
		// jsp ������ �̵� 
		// response.sendRedirect("main.jsp");
		
	%>
	
</body>
</html>