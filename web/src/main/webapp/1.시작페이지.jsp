<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

		<P> JSP ���  </P>
		*�׳� �Է��ϸ� HTML BODY ����  </p>
		* java�� �±� �� �ƴ� => �±׿� ���� ���� ���� �±� �ȿ��� ���    </p>
		<P> 1. ���� : ����,�޼ҵ� ����� </P>  <%! %>
		<P> 2. ��ũ��Ʈ�� : java ���� </P> <% %>
		<P> 3. ǥ���� : ��� ���  </P> 
		
		<%! // �ڹ� �ڵ� : ���� , �޼ҵ� �� ���� 
			int count = 3;
			String �ҹ��ں�ȯ(String ���� ){
				
				return ����.toLowerCase();
			}

		%>
		
		<%
			for( int i = 1 ; i<=count; i++ ){
				out.print("java Server Pages " + i + ".<br>");
				// html �ۼ� 
			}
		
		%>
		<p> java ��´� ǥ���� </p>
		<%=�ҹ��ں�ȯ("HELLO JSP") %> 
		



</body>
</html>