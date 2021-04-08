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

	
	
	

	<% // db 연동 
	
		MemberDao dao = MemberDao.getinstance();
	
		MemberDto memberDto = dao.getmember(logid);
		
	%>
		<table>
			<tr>
				<td> 아이디 </td>
				<td> <input type="text" name="id" placeholder="ID" value=<%=memberDto.getId() %>>
					<button>중복체크</button>
				</td>
			</tr>
			<tr>
				<td> 비밀번호 </td>
				<td> <input type="password" name="password" placeholder="password"> </td>
			</tr>
			
			<tr>
				<td> 이름 </td>
				<td> <input type="text" name="name" placeholder="name"> </td>
			</tr>
			
			<tr>
				<td> 성별 </td>
				<td> <input type="text" name="gender" value="남" >
				</td>
			</tr>
			
			<tr>
				<td> 생년월일 </td>
				<td> <input type="text" name="birth">

				</td>
			</tr>
			
			<tr>
				<td> 이메일주소 </td>
				<td> <input type="text" name="email">
				</td>
			</tr>
			
			<tr>
				<td> 연락처 </td>
				<td> <input type="text" name="phone1">
					<input type="text" name="phone2">
					<input type="text" name="phone3">
				</td>
			</tr>
			
			<tr>
				<td> 주소 </td>
				<td> 	<input type="text" name="address"> </td>
			</tr>
			<tr>
				<td> <input type="submit" value="등록"> </td>
				<td> <input type="reset" value="취소"> </td>
			</tr>
		</table>
		
		
		<!--  회원 탈퇴  -->
		<a href="memberdeleteController.jsp"> 회원탈퇴 </a>
		
		<a href="memberModify.jsp"> 회원정보수정 </a>
		
		
























</body>
</html>