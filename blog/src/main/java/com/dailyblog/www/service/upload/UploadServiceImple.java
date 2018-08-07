package com.dailyblog.www.service.upload;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.annotation.Resource;
import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.stereotype.Service;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.multipart.MultipartFile;

import com.dailyblog.www.model.upload.dao.UploadDao;
import com.dailyblog.www.model.upload.dto.UploadDto;

@Service
public class UploadServiceImple implements UploadService {

	//private static final Log log = LogFactory.getLog(UploadServiceImple.class);

	@Inject
	UploadDao uploadDao;

	@Resource(name = "uploadPath")
	private String uploadPath;

	@Override
	public void upload(UploadDto dto, HttpSession session, MultipartFile file) throws Exception {
		@SuppressWarnings("unchecked")
		// session user_info map 가져오기
		Map<String, Object> map = (Map<String, Object>)session.getAttribute("user_info");
		String user_id = (String) map.get("user_id");
		
		// user_id로 mem_no 가져오기
		String mem_no = uploadDao.selectMem_no(user_id);
		
		// yyyyMMdd + mem_no로 up_no의 앞부분 생성
		SimpleDateFormat date = new SimpleDateFormat("yyyyMMdd");
		String up_no = date.format(new Date())+mem_no;
		
		dto.setMem_no(mem_no);
		dto.setUp_no(up_no);
		
		if(file.getSize() >0) {
			dto.setFile_name(uploadFile(file.getOriginalFilename(), file.getBytes()));
			uploadDao.uploadFile(dto);
		} else {
			uploadDao.uploadNormal(dto);
		}
		
	}// upload ends
	
	
	private String uploadFile(String originalName, byte[] fileData) throws IOException {
		
		// 파일명 암호화
		String file_name =  UUID.randomUUID().toString().replaceAll("-", "");
		
		// file 객체 생성
		File target = new File(uploadPath, file_name);
		
		// file을 target에 생성
		FileCopyUtils.copy(fileData, target);
		
		return file_name;
	}

	
}
