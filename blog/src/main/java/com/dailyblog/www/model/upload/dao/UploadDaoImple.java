package com.dailyblog.www.model.upload.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.dailyblog.www.model.upload.dto.UploadDto;

@Repository
public class UploadDaoImple implements UploadDao{
	
	@Inject
	SqlSession sqlSession;

	@Override
	public void uploadFile(UploadDto dto) {
		sqlSession.insert("upload.insertFile", dto);
		
	}

	@Override
	public void uploadNormal(UploadDto dto) {
		sqlSession.insert("upload.insertNormal", dto);
		
	}

	@Override
	public String selectMem_no(String user_id) {
	
		return sqlSession.selectOne("member.select_mem_no", user_id);
	}

	@Override
	public List<UploadDto> readAll(String user_id) {
		
		return null;
	}

	
	
}
