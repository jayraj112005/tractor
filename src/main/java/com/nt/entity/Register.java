package com.nt.entity;

public class Register {
private int id;
private String userName;
private String userGmail;
private Long contactNo;

private String password;
private String tractorName;

public Register(){
	
} 

public Register(int id, String userName, String userGmail, Long contactNo, String password, String tractorName) {
	
	this.id = id;
	this.userName = userName;
	this.userGmail = userGmail;
	this.contactNo = contactNo;
	this.password = password;
	this.tractorName = tractorName;
}

public Register(int id, String userName, String userGmail, Long contactNo, String tractorName) {

	this.id = id;
	this.userName = userName;
	this.userGmail = userGmail;
	this.contactNo = contactNo;
	this.tractorName = tractorName;
}

public int getId() {
	return id;
}

public String getUserName() {
	return userName;
}

public String getUserGmail() {
	return userGmail;
}

public Long getContactNo() {
	return contactNo;
}

public String getPassword() {
	return password;
}

public String getTractorName() {
	return tractorName;
}

public void setId(int id) {
	this.id = id;
}

public void setUserName(String userName) {
	this.userName = userName;
}

public void setUserGmail(String userGmail) {
	this.userGmail = userGmail;
}

public void setContactNo(Long contactNo) {
	this.contactNo = contactNo;
}

public void setPassword(String password) {
	this.password = password;
}

public void setTractorName(String tractorName) {
	this.tractorName = tractorName;
}

@Override
public String toString() {
	return "Register [id=" + id + ", userName=" + userName + ", userGmail=" + userGmail + ", contactNo=" + contactNo
			+ ", password=" + password + ", tractorName=" + tractorName + "]";
}



}
