package com.dailyblog.www.model.member.dto;

import java.util.Date;

public class MemberDto {
	private String user_id;
	private String nickname;
	private String passwd;
	private String user_name;
	private Date birth_date;
	private String mobile_num;
	private String address;
	private String email;
	private String domain;
	
	

	@Override
	public String toString() {
		return "MemberDto [user_id=" + user_id + ", nickname=" + nickname + ", passwd=" + passwd + ", user_name="
				+ user_name + ", birth_date=" + birth_date + ", mobile_num=" + mobile_num + ", address=" + address
				+ ", email=" + email + ", domain=" + domain + "]";
	}

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	public String getNickname() {
		return nickname;
	}

	public void setNickname(String nickname) {
		this.nickname = nickname;
	}

	public String getPasswd() {
		return passwd;
	}

	public void setPasswd(String passwd) {
		this.passwd = passwd;
	}

	public String getUser_name() {
		return user_name;
	}

	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}

	public Date getBirth_date() {
		return birth_date;
	}

	public void setBirth_date(Date birth_date) {
		this.birth_date = birth_date;
	}

	

	public String getMobile_num() {
		return mobile_num;
	}

	public void setMobile_num(String mobile_num) {
		this.mobile_num = mobile_num;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getDomain() {
		return domain;
	}

	public void setDomain(String domain) {
		this.domain = domain;
	}
	
}


