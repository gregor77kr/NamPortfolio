package com.dailyblog.www.model.reply.dto;

public class ReplyDto {
	private String reply_no;
	
	private String up_no;
	private String mem_no;
	private String reply;
	
	private String nickname;
	private String user_name;
	
	@Override
	public String toString() {
		return "ReplyDto [reply_no=" + reply_no + ", up_no=" + up_no + ", mem_no=" + mem_no + ", reply=" + reply
				+ ", nickname=" + nickname + ", user_name=" + user_name + "]";
	}

	public String getReply_no() {
		return reply_no;
	}

	public void setReply_no(String reply_no) {
		this.reply_no = reply_no;
	}

	public String getUp_no() {
		return up_no;
	}

	public void setUp_no(String up_no) {
		this.up_no = up_no;
	}

	public String getMem_no() {
		return mem_no;
	}

	public void setMem_no(String mem_no) {
		this.mem_no = mem_no;
	}

	public String getReply() {
		return reply;
	}

	public void setReply(String reply) {
		this.reply = reply;
	}

	public String getNickname() {
		return nickname;
	}

	public void setNickname(String nickname) {
		this.nickname = nickname;
	}

	public String getUser_name() {
		return user_name;
	}

	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}
	
	
	
}
