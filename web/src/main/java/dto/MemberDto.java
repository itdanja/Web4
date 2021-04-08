package dto;

public class MemberDto {
	
	// DTO : 데이터 교환을 위한 객체 
	// 회원클래스 
	String id ; // 아이디 
	String password; // 비밀번호 
	String name; // 이름 
	String gender; // 성별 
	String birth; // 생년월일 
	String mail; // 메일주소
	String phone; // 전화번호 
	String address; // 우편번호 
	String regist_day; // 등록일자 
	
	
	// get 메소드 , get 메소드 / 자동생성 
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getBirth() {
		return birth;
	}
	public void setBirth(String birth) {
		this.birth = birth;
	}
	public String getMail() {
		return mail;
	}
	public void setMail(String mail) {
		this.mail = mail;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getRegist_day() {
		return regist_day;
	}
	public void setRegist_day(String regist_day) {
		this.regist_day = regist_day;
	}
	

	
	
}
