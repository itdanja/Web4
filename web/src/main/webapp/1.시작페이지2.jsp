<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>

	<!-- java ����  -->
	<%! int count = 0;			// ���� ���� ���� [ ���� ���� ]
	
		public void �Լ�(){};	// �Լ� ���� ���� 
		
	%>
<body>

	<%-- java ��ũ��Ʈ��  --%>
	<%
	
		out.print( ++count );
	
	%>

	<!-- java ǥ����  -->	
	<%=count %>
	<br>
	<%= new java.util.Date() %> <!-- java Ŭ������ �̿��� ��� -->
	
	<p> ������ ����� </p>
	<%
		int count2 = 0;				// ���� ���� ����  [ ���� ���� ]
		//public void �Լ�(){};		// �Լ� ���� �Ұ��� 	
		
		for( int i = 1 ; i<9 ; i++ ){
			  // ���۰�  ; ���ǹ� ; ������ 
			out.print(  i + "x" + i + "=" + 2*i +"<br>" );
		}
		
		

	%>

	

</body>
</html>