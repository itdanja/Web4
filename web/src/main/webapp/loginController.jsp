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
		// form 에서 action:보내고자하는 위치 
				 // method : 보내는 방식   get / post 
	
		String id = request.getParameter("id");
		String password = request.getParameter("password");
		
		MemberDao dao = MemberDao.getinstance();
		
		int result = dao.login( id, password);
		
		if( result == 1 ){ // 로그인 성공 
		
			//  세션 부여 
			session.setAttribute("user", id ); 
				//  setAttribute ( "세션ID" , 값 ); => 세션 저장소 
						
			PrintWriter script = response.getWriter();
			script.println( "<script>" );
			
				script.println( "alert('안녕하세요');" );    // 메시지  창 
				script.println( "location.href='main.jsp'" ); // 링크 보내기 
							
			script.println( "</script>" );
		}
		if( result == 2 ){ // 로그인 실패 // 아이디 /비번 틀림 
			out.print(" 아이디 혹은 비밀번호가 다릅니다 ");
		
		}
		if( result == -1  ){ // DB 오류 
			out.print(" DB 오류 ");
		}
		
		
		
		
	
	%>
	
	



</body>
</html>