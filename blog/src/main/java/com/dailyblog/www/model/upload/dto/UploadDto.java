package com.dailyblog.www.model.upload.dto;

import java.util.Date;

public class UploadDto {
	private String up_no;
	private String mem_no;
	private String user_id;
	private String comments;
	private String file_name;
	private Date up_date;
	private String pub_yn;

	@Override
	public String toString() {
		return "UploadDto [up_no=" + up_no + ", mem_no=" + mem_no + ", user_id=" + user_id + ", comments=" + comments
				+ ", file_name=" + file_name + ", up_date=" + up_date + ", pub_yn=" + pub_yn + "]";
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

	public String getComments() {
		return comments;
	}

	public void setComments(String comments) {
		this.comments = comments;
	}

	public String getFile_name() {
		return file_name;
	}

	public void setFile_name(String file_name) {
		this.file_name = file_name;
	}

	public Date getUp_date() {
		return up_date;
	}

	public void setUp_date(Date up_date) {
		this.up_date = up_date;
	}

	public String getPub_yn() {
		return pub_yn;
	}

	public void setPub_yn(String pub_yn) {
		this.pub_yn = pub_yn;
	}

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	
	

}
