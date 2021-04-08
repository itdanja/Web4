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
		// 세션 : 서버에 데이터 저장  [ 페이지가 변경되도 동일한 데이터 사용 ]
		
		String logid = (String)session.getAttribute("user"); // 세션ID 호출 =>  세션 의 값
		
		MemberDao dao = MemberDao.getinstance();
		
		int result =  dao.delete(logid);
		
		if( result == 1 ){
			PrintWriter script = response.getWriter();
			script.println( "<script>" );
			
				script.println( "alert('회원 탈퇴 되었습니다 ');" );    // 메시지  창 
				script.println( "location.href='logout.jsp'" ); // 링크 보내기 
							
			script.println( "</script>" );
		}
		else{
			
			PrintWriter script = response.getWriter();
			script.println( "<script>" );
			
				script.println( "alert('DB 오류 [ 관리자: 문의바랍니다 ]');" );    // 메시지  창 
				script.println( "location.href='main.jsp'" ); // 링크 보내기 
					
			script.println( "</script>" );

		}
		
	
	%>
	
		


</body>
</html>