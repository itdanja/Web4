

<%@page import="dao.*"%>
<%@page import="dto.*"%>
<%@page import="java.util.Date"%>
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

	<%  // 자바 로직 태그 
	
		request.setCharacterEncoding("UTF-8"); // 요청 변수들의 인코딩 UTF-8 [ 한글 포함 ]

		// 1. request.getparameter 이용한 전페이지 입력값 가져오기 
		String id = request.getParameter("id");
					// 전 페이지 form 안에 있는 name = id 인 변수 요청
		String password = request.getParameter("password");
					// 전 페이지 form 안에 있는 name = password 인 변수 요청	
		String name = request.getParameter("name");
					// 전 페이지 form 안에 있는 name = name 인 변수 요청
		String gender = request.getParameter("gender");
					// 전 페이지 form 안에 있는 name = gender 인 변수 요청
		String birthyy = request.getParameter("birthyy");
					// 전 페이지 form 안에 있는 name = birthyy 인 변수 요청
		String birthmm = request.getParameter("birthmm");
					// 전 페이지 form 안에 있는 name = birthmm 인 변수 요청
		String birthdd = request.getParameter("birthdd");
					// 전 페이지 form 안에 있는 name = birthdd 인 변수 요청
		String birth = birthyy + "/" + birthmm + "/"+birthdd ; 
					// 년 월 일 합쳐서 변수 넣기 
		
		String email1 = request.getParameter("email1");
			// 전 페이지 form 안에 있는 name = email1 인 변수 요청
		String email2 = request.getParameter("email2");
			// 전 페이지 form 안에 있는 name = email2 인 변수 요청
			
		String email = email1 + "@" + email2 ;
			
		String phone1 = request.getParameter("phone1");
				// 전 페이지 form 안에 있는 name = birthyy 인 변수 요청
		String phone2 = request.getParameter("phone2");
				// 전 페이지 form 안에 있는 name = birthmm 인 변수 요청
		String phone3 = request.getParameter("phone3");
				// 전 페이지 form 안에 있는 name = birthdd 인 변수 요청
		String phone = phone1 + "-" + phone2 + "-"+phone3 ; 
				// 년 월 일 합쳐서 변수 넣기 
		
		String address1 = request.getParameter("address1");
				// 전 페이지 form 안에 있는 name = address1 인 변수 요청
		String address2 = request.getParameter("address2");
				// 전 페이지 form 안에 있는 name = address2 인 변수 요청
		String address3 = request.getParameter("address3");
				// 전 페이지 form 안에 있는 name = address3 인 변수 요청
		String address = address1 + "-" + address2 + "-"+address3 ; 
				// 년 월 일 합쳐서 변수 넣기 
			
		
		// 2. 입력된 값들을 객체화 
		MemberDto memberDto = new MemberDto();
		
		memberDto.setId(id);
		memberDto.setPassword(password);
		memberDto.setName(name);
		memberDto.setGender(gender);
		memberDto.setBirth(birth);
		memberDto.setMail(email);
		memberDto.setPhone(phone);
		memberDto.setAddress(address);
		
			Date date = new Date(); // 현재 시간 가져오기 
					
		memberDto.setRegist_day( date.toString() );
			
		// 3. db에 객체 넣기 
		MemberDao dao = MemberDao.getinstance();
		
		int result = dao.signup(memberDto);

		if( result == 1 ){
			
			out.print("회원가입 실패 ");
		}
		if( result == -1 ){
			
			out.print("db오류 ");
		}
	
		
	%>




</body>
</html>