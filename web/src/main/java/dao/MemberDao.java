package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import dto.MemberDto;




public class MemberDao {
	
	//DAO : DB ���� ��ü 
	
	private Connection conn;  // db ���� �������̽� 
	private ResultSet rs; // SQL������ ��� ���� �������̽� 
	
	public MemberDao() { // ������ 
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");// mysql ����̹� ����
			conn = DriverManager.getConnection("jdbc:mysql://localhost:3307/web?serverTimezone=UTC", "root","1234");
		}
		catch (Exception e) {
			// TODO: handle exception
		}
	}
	
	// �ٸ� Ŭ�������� DB ����ϱ� ���� ��ü ���� 
	private static MemberDao instance = new MemberDao();
	
	// DB��ü ��ȯ���ִ� �޼ҵ� 
	public static MemberDao getinstance() { return instance; }
	
	
	
	// �α��� �޼ҵ� 
	public int login( String id , String password ) {
		
		
		String SQL = "select * from member where id = ? and password = ?";
		
		try {
			
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			
			pstmt.setString(1,id);
			pstmt.setString(2,password);
			
			rs = pstmt.executeQuery();
			
			if( rs.next() ) {
				return 1; // �α��� ����  
			}
			else {
				return 2;  // �α��� ���� 
			}
		}
		catch (Exception e) {
			// TODO: handle exception
		}
	
		return -1 ; // db ���� 
	}
	
	// ȸ������ �޼ҵ� 
	public int signup( MemberDto dto ) {
		
		
		String SQL = "insert into member values(?,?,?,?,?,?,?,?,?)";
		
		try {
			
			PreparedStatement pstmt = conn.prepareStatement(SQL);
				// 					����� DB�� SQL �ֱ� 
			// PreparedStatement : SQL ���� 
			pstmt.setString(1, dto.getId());
			pstmt.setString(2, dto.getPassword());
			pstmt.setString(3, dto.getName());
			pstmt.setString(4, dto.getGender());
			pstmt.setString(5, dto.getBirth());
			pstmt.setString(6, dto.getMail());
			pstmt.setString(7, dto.getPhone());
			pstmt.setString(8, dto.getAddress());
			pstmt.setString(9, dto.getRegist_day());
			
			pstmt.executeUpdate(); // insert , update  , DELETE => SQL ���� 
			
			return 1 ; // ȸ������ ���� 
	
		}
		catch (Exception e) {
			// TODO: handle exception
		}
	
		return -1 ; // db ���� 
	}
	
	// �α��� �� ȸ���� ���� ȣ�� �޼ҵ� 
	public MemberDto getmember( String logid ) {
		
		
		String SQL = "select * from member where id=?";
		
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, logid);
			
			rs = pstmt.executeQuery(); // ���� => SQL �� ��� 
			
			if( rs.next() ) {
				// rs.next() : ���� ���ڵ�[ ���� ]   // rs : null -> ���1 -> ���2 -> ���3 
				
				MemberDto memberDto = new MemberDto();
				
				memberDto.setId( rs.getString(1) );
				memberDto.setPassword( rs.getString(2) );
				memberDto.setName( rs.getString(3) );
				memberDto.setGender( rs.getString(4) );
				memberDto.setBirth( rs.getString(5) );
				memberDto.setMail( rs.getString(6) );
				memberDto.setPhone( rs.getString(7) );
				memberDto.setAddress( rs.getString(8) );
				memberDto.setRegist_day( rs.getString(9) );
				
				return memberDto;
			}
			
		}
		catch (Exception e) {
			// TODO: handle exception
		}
		return null;
	}
	// ȸ�� Ż�� �޼ҵ� 
	public int delete( String logid ) {
		String SQL = "delete from member where id=?";
		
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, logid);
			pstmt.executeUpdate();
			return 1;
		}
		catch (Exception e) {
			// TODO: handle exception
		}
		return -1;
	}
	
	// �α��� �� ȸ���� ���� ���� �޼ҵ� 
	public int update ( String logid , MemberDto dto ) {
		String SQL = "update member set password=? , name=? , gender=? ,birth=?, mail = ?, phone=? , address=? where id = ?" ;
		
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, dto.getPassword() );
			pstmt.setString(2, dto.getName() );
			pstmt.setString(3, dto.getGender() );
			pstmt.setString(4, dto.getBirth() );
			pstmt.setString(5, dto.getMail() );
			pstmt.setString(6, dto.getPhone() );
			pstmt.setString(7, dto.getAddress());
			pstmt.setString(8, logid );

			pstmt.executeUpdate();
		
			return 1 ; 
			
		}
		catch (Exception e) {
			// TODO: handle exception
		}
		return -1;
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	

}
