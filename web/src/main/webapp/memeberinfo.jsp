<%@page import="dto.MemberDto"%>
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

	


	<%@include file="menu.jsp" %>

	
	
	

	<% // db ���� 
	
		MemberDao dao = MemberDao.getinstance();
	
		MemberDto memberDto = dao.getmember(logid);
		
	%>
		<table>
			<tr>
				<td> ���̵� </td>
				<td> <input type="text" name="id" placeholder="ID" value=<%=memberDto.getId() %>>
					<button>�ߺ�üũ</button>
				</td>
			</tr>
			<tr>
				<td> ��й�ȣ </td>
				<td> <input type="password" name="password" placeholder="password"> </td>
			</tr>
			
			<tr>
				<td> �̸� </td>
				<td> <input type="text" name="name" placeholder="name"> </td>
			</tr>
			
			<tr>
				<td> ���� </td>
				<td> <input type="text" name="gender" value="��" >
				</td>
			</tr>
			
			<tr>
				<td> ������� </td>
				<td> <input type="text" name="birth">

				</td>
			</tr>
			
			<tr>
				<td> �̸����ּ� </td>
				<td> <input type="text" name="email">
				</td>
			</tr>
			
			<tr>
				<td> ����ó </td>
				<td> <input type="text" name="phone1">
					<input type="text" name="phone2">
					<input type="text" name="phone3">
				</td>
			</tr>
			
			<tr>
				<td> �ּ� </td>
				<td> 	<input type="text" name="address"> </td>
			</tr>
			<tr>
				<td> <input type="submit" value="���"> </td>
				<td> <input type="reset" value="���"> </td>
			</tr>
		</table>
		
		
		<!--  ȸ�� Ż��  -->
		<a href="memberdeleteController.jsp"> ȸ��Ż�� </a>
		
		<a href="memberModify.jsp"> ȸ���������� </a>
		
		
























</body>
</html>