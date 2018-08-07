package com.dailyblog.www.service.upload;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.web.multipart.MultipartFile;

import com.dailyblog.www.model.upload.dto.UploadDto;

public interface UploadService {
	public void upload(UploadDto dto, HttpSession session, MultipartFile file) throws Exception;
	
}
