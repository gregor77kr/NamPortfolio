package com.dailyblog.www.service.upload;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Map;
import java.util.UUID;

import javax.annotation.Resource;
import javax.inject.Inject;
import javax.servlet.http.HttpSession;
import javax.sound.midi.MidiDevice.Info;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
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

	private String basicPath = "D:\\SpringWorkSpace\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\blog\\WEB-INF\\views\\images\\";
	private static final Logger log = LoggerFactory.getLogger(UploadServiceImple.class);
	
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
		dto.setOrigin_file_name(file.getOriginalFilename());
		
		if(!file.isEmpty()) {
			dto.setFile_name(uploadFile(user_id ,file.getOriginalFilename(), file.getBytes()));
			uploadDao.uploadFile(dto);
		} else {
			uploadDao.uploadNormal(dto);
		}
		
	}// upload ends
	
	
	private String uploadFile(String user_id ,String originalName, byte[] fileData) throws IOException {
		
		log.info("확장자명 :" + originalName.substring(originalName.lastIndexOf('.')));
		
		// 파일명 암호화
		String file_name =  UUID.randomUUID().toString().replaceAll("-", "") + originalName.substring(originalName.indexOf('.'));
		log.info("file_name :" + file_name);
		
		// uploadPath = basicPath 밑의 user_id
		String uploadPath = basicPath + user_id;
		log.info("uploadPath :" + uploadPath);
		
		// images 폴더에 해당 id의 디렉토리가 없는 경우에 생성
		if(!new File(uploadPath).exists()) {
			new File(uploadPath).mkdirs();
		}
		
		// 파일 객체 생성
		File fin = new File(uploadPath, file_name);
		
		// 해당 경로에 fileData 생성
		FileCopyUtils.copy(fileData, fin);
		
		return file_name;
	}

	
}
