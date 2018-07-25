package com.dailyblog.www.service.first;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.dailyblog.www.model.first.dao.FirstDao;

@Service
public class FirstServiceImple implements FirstService{
	
	@Inject
	FirstDao firstDao;

	@Override
	public int countOfUser() {
		
		return firstDao.countOfUser();
	}
	
	
}
