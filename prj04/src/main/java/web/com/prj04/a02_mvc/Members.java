package web.com.prj04.a02_mvc;

public class Members {
	private String email;
	private String phoneNum;
	private String name;	
	private String pwd;
	private int memberId;
	public Members() {
	}
	public Members(String email, String phoneNum, String name, String pwd, int memberId) {
		super();
		this.email = email;
		this.phoneNum = phoneNum;
		this.name = name;
		this.pwd = pwd;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPhoneNum() {
		return phoneNum;
	}
	public void setPhoneNum(String phoneNum) {
		this.phoneNum = phoneNum;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public int getMemberId() {
		return memberId;
	}
	public void setMemberId(int memberId) {
		this.memberId = memberId;
	}
	
	
	
}
