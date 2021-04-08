<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
	<!-- 외부파일 css 가져오기 [부트스트랩] -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
	
	<!-- 디바이스 크기에 따라 크기 변경 [부트스트랩]  -->
	<meta name="viewport" content="width=device-width, initial-scale=1">
	
	<!-- 외부파일 js 가져오기 [부트스트랩]  -->
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
	
	
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<nav class="navbar navbar-default">
	
		<div class="container">
			<div class="navbar-header">
					<a class="navbar-brand" href="index.jsp"> HOME </a>
			</div>
		</div>
	</nav>
	
	<%! 
		String 제목 = "안녕하세요 부트스트랩 쇼핑몰 ";
		String 부제목 = "안녕하세요 웹쇼핑몰 입니다 ";
	%>
	
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">
				<%=제목 %>
			</h1>
		</div>
	</div>
	
	<div class="container">
		<div class="text-center">
			<h3><%=부제목 %></h3>
			<% // java 시작 
				for( int i = 0 ; i<5 ; i++ ){
			// 끝
			%>
				<img alt="" src="img/오렌지.jpg" width="100px">
				
			<%  // java 시작
				}
			// 끝
			%>
		</div>
	
	</div>
	
	<footer class="container">
			<p> &copy; 웹쇼핑몰</p>
	</footer>
	
	
	
	
	
	
	
	
	
	
	


</body>
</html>