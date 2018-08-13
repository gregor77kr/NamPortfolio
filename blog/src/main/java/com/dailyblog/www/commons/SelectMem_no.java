package com.dailyblog.www.commons;

import java.util.Map;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Component;

import com.dailyblog.www.model.upload.dao.UploadDao;

@Component
public class SelectMem_no {
	
	@Inject
	UploadDao uploadDao;

	public String getMem_no(HttpSession session) {
		
		@SuppressWarnings("unchecked")
		Map<String, Object> map = (Map<String, Object>) session.getAttribute("user_info");
		String user_id = (String) map.get("user_id");
		
		return uploadDao.selectMem_no(user_id);
	}
	
}
