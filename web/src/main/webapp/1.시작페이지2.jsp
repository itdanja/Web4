<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>

	<!-- java 선언문  -->
	<%! int count = 0;			// 변수 선언 가능 [ 전역 변수 ]
	
		public void 함수(){};	// 함수 선언 가능 
		
	%>
<body>

	<%-- java 스크립트문  --%>
	<%
	
		out.print( ++count );
	
	%>

	<!-- java 표현식  -->	
	<%=count %>
	<br>
	<%= new java.util.Date() %> <!-- java 클래스를 이용한 출력 -->
	
	<p> 구구단 만들기 </p>
	<%
		int count2 = 0;				// 변수 선언 가능  [ 지역 변수 ]
		//public void 함수(){};		// 함수 선언 불가능 	
		
		for( int i = 1 ; i<9 ; i++ ){
			  // 시작값  ; 조건문 ; 증감식 
			out.print(  i + "x" + i + "=" + 2*i +"<br>" );
		}
		
		

	%>

	

</body>
</html>