package dto;

public class MemberDto {
	
	// DTO : ������ ��ȯ�� ���� ��ü 
	// ȸ��Ŭ���� 
	String id ; // ���̵� 
	String password; // ��й�ȣ 
	String name; // �̸� 
	String gender; // ���� 
	String birth; // ������� 
	String mail; // �����ּ�
	String phone; // ��ȭ��ȣ 
	String address; // ������ȣ 
	String regist_day; // ������� 
	
	
	// get �޼ҵ� , get �޼ҵ� / �ڵ����� 
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