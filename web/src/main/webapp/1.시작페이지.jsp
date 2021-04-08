<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

		<P> JSP 사용  </P>
		*그냥 입력하면 HTML BODY 구역  </p>
		* java는 태그 언어가 아님 => 태그와 언어와 같이 사용시 태그 안에서 사용    </p>
		<P> 1. 선언문 : 변수,메소드 선언시 </P>  <%! %>
		<P> 2. 스크립트문 : java 로직 </P> <% %>
		<P> 3. 표현문 : 결과 출력  </P> 
		
		<%! // 자바 코드 : 변수 , 메소드 만 가능 
			int count = 3;
			String 소문자변환(String 문자 ){
				
				return 문자.toLowerCase();
			}

		%>
		
		<%
			for( int i = 1 ; i<=count; i++ ){
				out.print("java Server Pages " + i + ".<br>");
				// html 작성 
			}
		
		%>
		<p> java 출력는 표현문 </p>
		<%=소문자변환("HELLO JSP") %> 
		



</body>
</html>