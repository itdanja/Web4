

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

	<%  // �ڹ� ���� �±� 
	
		request.setCharacterEncoding("UTF-8"); // ��û �������� ���ڵ� UTF-8 [ �ѱ� ���� ]

		// 1. request.getparameter �̿��� �������� �Է°� �������� 
		String id = request.getParameter("id");
					// �� ������ form �ȿ� �ִ� name = id �� ���� ��û
		String password = request.getParameter("password");
					// �� ������ form �ȿ� �ִ� name = password �� ���� ��û	
		String name = request.getParameter("name");
					// �� ������ form �ȿ� �ִ� name = name �� ���� ��û
		String gender = request.getParameter("gender");
					// �� ������ form �ȿ� �ִ� name = gender �� ���� ��û
		String birthyy = request.getParameter("birthyy");
					// �� ������ form �ȿ� �ִ� name = birthyy �� ���� ��û
		String birthmm = request.getParameter("birthmm");
					// �� ������ form �ȿ� �ִ� name = birthmm �� ���� ��û
		String birthdd = request.getParameter("birthdd");
					// �� ������ form �ȿ� �ִ� name = birthdd �� ���� ��û
		String birth = birthyy + "/" + birthmm + "/"+birthdd ; 
					// �� �� �� ���ļ� ���� �ֱ� 
		
		String email1 = request.getParameter("email1");
			// �� ������ form �ȿ� �ִ� name = email1 �� ���� ��û
		String email2 = request.getParameter("email2");
			// �� ������ form �ȿ� �ִ� name = email2 �� ���� ��û
			
		String email = email1 + "@" + email2 ;
			
		String phone1 = request.getParameter("phone1");
				// �� ������ form �ȿ� �ִ� name = birthyy �� ���� ��û
		String phone2 = request.getParameter("phone2");
				// �� ������ form �ȿ� �ִ� name = birthmm �� ���� ��û
		String phone3 = request.getParameter("phone3");
				// �� ������ form �ȿ� �ִ� name = birthdd �� ���� ��û
		String phone = phone1 + "-" + phone2 + "-"+phone3 ; 
				// �� �� �� ���ļ� ���� �ֱ� 
		
		String address1 = request.getParameter("address1");
				// �� ������ form �ȿ� �ִ� name = address1 �� ���� ��û
		String address2 = request.getParameter("address2");
				// �� ������ form �ȿ� �ִ� name = address2 �� ���� ��û
		String address3 = request.getParameter("address3");
				// �� ������ form �ȿ� �ִ� name = address3 �� ���� ��û
		String address = address1 + "-" + address2 + "-"+address3 ; 
				// �� �� �� ���ļ� ���� �ֱ� 
			
		
		// 2. �Էµ� ������ ��üȭ 
		MemberDto memberDto = new MemberDto();
		
		memberDto.setId(id);
		memberDto.setPassword(password);
		memberDto.setName(name);
		memberDto.setGender(gender);
		memberDto.setBirth(birth);
		memberDto.setMail(email);
		memberDto.setPhone(phone);
		memberDto.setAddress(address);
		
			Date date = new Date(); // ���� �ð� �������� 
					
		memberDto.setRegist_day( date.toString() );
			
		// 3. db�� ��ü �ֱ� 
		MemberDao dao = MemberDao.getinstance();
		
		int result = dao.signup(memberDto);

		if( result == 1 ){
			
			out.print("ȸ������ ���� ");
		}
		if( result == -1 ){
			
			out.print("db���� ");
		}
	
		
	%>




</body>
</html>