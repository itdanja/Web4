<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>

	<style type="text/css">
	
	
		.loginbu{ padding: 20px; }
		
	
	</style>

</head>
<body>

	<%@include file="menu.jsp" %>
	
	<div class="container" style="padding-top: 20px">
				<div class="col-sm-3"></div>
				<div class="col-sm-6">
					<div class="jumbotron">
						<form action="loginController.jsp" method="post" >
							
							<div class="col-sm-7" > 
								<div class="form-group row" >
								
									<div>
										<p><input type="text" name="id" class="form-control" placeholder="ȸ�� ���̵�" maxlength="20">
										
									</div>
									<div>
										<p><input type="password" name="password" class="form-control" placeholder="ȸ�� ��й�ȣ" maxlength="20">
									</div>
								</div>
							</div>
							<div class="col-sm-5" > 
								<button type="submit" class="btn btn btn-lg btn-success btn-block" >�α���</button>
							</div>
							<p>
							
							<div class="form-group row">
							</div>
						</form>
					</div>
				</div>
				<div class="col-sm-3"></div>
			</div>
			
	


</body>
</html>