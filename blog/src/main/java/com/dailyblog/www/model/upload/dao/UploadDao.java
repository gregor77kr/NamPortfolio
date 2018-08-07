package com.dailyblog.www.model.upload.dao;

import java.util.List;

import com.dailyblog.www.model.upload.dto.UploadDto;

public interface UploadDao {
	public String selectMem_no(String user_id);
	public void uploadFile(UploadDto dto);
	public void uploadNormal(UploadDto dto);
	public List<UploadDto> readAll(String user_id);
}
