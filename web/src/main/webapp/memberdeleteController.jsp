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
		// ���� : ������ ������ ����  [ �������� ����ǵ� ������ ������ ��� ]
		
		String logid = (String)session.getAttribute("user"); // ����ID ȣ�� =>  ���� �� ��
		
		MemberDao dao = MemberDao.getinstance();
		
		int result =  dao.delete(logid);
		
		if( result == 1 ){
			PrintWriter script = response.getWriter();
			script.println( "<script>" );
			
				script.println( "alert('ȸ�� Ż�� �Ǿ����ϴ� ');" );    // �޽���  â 
				script.println( "location.href='logout.jsp'" ); // ��ũ ������ 
							
			script.println( "</script>" );
		}
		else{
			
			PrintWriter script = response.getWriter();
			script.println( "<script>" );
			
				script.println( "alert('DB ���� [ ������: ���ǹٶ��ϴ� ]');" );    // �޽���  â 
				script.println( "location.href='main.jsp'" ); // ��ũ ������ 
					
			script.println( "</script>" );

		}
		
	
	%>
	
		


</body>
</html>