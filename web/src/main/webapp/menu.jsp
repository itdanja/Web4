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
	
	<!-- 외부파일 jquery 가져오기 [부트스트랩] -->
	<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>	
	<script src="js/bootstrap.js"></script>


	<style type="text/css">
	
	body{ 
		width: 1000px;
		margin: 0 auto;
	 }
	
	</style>


<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<nav class="navbar navbar-default">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed"
								data-toggle="collapse" data-target="#bs-example-navbar-collapase-1"
								aria-expanded="false">
			
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
			</button>		
				
				<a class="navbar-brand" href="main.jsp"> <img src="img/로고.png" width="30px;" > </a>
				
		</div>	<!--  헤더 끝  -->
		
			<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
				<ul class="nav navbar-nav">
					<li> <a href="#"> 모든 상품 </a> </li>
					
					
					<li class="dropdown">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button"
						aria-haspopup="true" aria-expanded="false">TOP30 상품</a>
						
						<ul class="dropdown-menu">
							<li><a href="#"> 과일 </a> </li>
							<li><a href="#"> 야채 </a> </li>
						</ul>
					</li>
			
					<li> <a href="#"> 공지사항 </a> </li>
					<li> <a href="#"> 커뮤니티 </a> </li>
				</ul>
				
				
				
				<ul class="nav navbar-nav navbar-right">
				
							<% String logid = (String)session.getAttribute("user"); %>  
							
							<% 
								if( logid !=null ){
							%>		
									<li><a href="logout.jsp"> 로그아웃 </a> </li>
									<li><a href="memeberinfo.jsp"> 회원정보 </a> </li>
							<%	
									if(logid.equals("admin")){
							%>			<li><a href="#"> 관리자페이지 </a> </li>
							<% 		}
								}
								else{
							%>		<li><a href="login.jsp"> <img alt="" src="img/loginlogo.png" width="30">로그인 </a> </li>
									<li><a href="signup.jsp"> 회원가입 </a> </li>
							<%	}
							%>
							
							
							
							
							
							
				</ul>
		</div>
	</nav>
</body>
</html>