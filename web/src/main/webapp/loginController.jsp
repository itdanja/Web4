<%@page import="java.io.PrintWriter"%>

<%@page import="dao.MemberDao"%>
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
		// form ���� action:���������ϴ� ��ġ 
				 // method : ������ ���   get / post 
	
		String id = request.getParameter("id");
		String password = request.getParameter("password");
		
		MemberDao dao = MemberDao.getinstance();
		
		int result = dao.login( id, password);
		
		if( result == 1 ){ // �α��� ���� 
		
			//  ���� �ο� 
			session.setAttribute("user", id ); 
				//  setAttribute ( "����ID" , �� ); => ���� ����� 
						
			PrintWriter script = response.getWriter();
			script.println( "<script>" );
			
				script.println( "alert('�ȳ��ϼ���');" );    // �޽���  â 
				script.println( "location.href='main.jsp'" ); // ��ũ ������ 
							
			script.println( "</script>" );
		}
		if( result == 2 ){ // �α��� ���� // ���̵� /��� Ʋ�� 
			out.print(" ���̵� Ȥ�� ��й�ȣ�� �ٸ��ϴ� ");
		
		}
		if( result == -1  ){ // DB ���� 
			out.print(" DB ���� ");
		}
		
		
		
		
	
	%>
	
	



</body>
</html>