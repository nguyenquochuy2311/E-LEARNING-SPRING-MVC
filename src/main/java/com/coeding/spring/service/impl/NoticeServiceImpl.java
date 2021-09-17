package com.coeding.spring.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.coeding.spring.repository.NoticeDAO;
import com.coeding.spring.service.NoticeService;
import com.coeding.spring.vo.Notice;

@Service("noticeService")
public class NoticeServiceImpl implements NoticeService {

	@Autowired
	private NoticeDAO noticeDao;
	
	@Override
	public void insert(Notice vo) {
		// TODO Auto-generated method stub
		noticeDao.insert(vo);
	}

	@Override
	public void update(Notice vo) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void delete(Notice vo) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public Notice get(Notice vo) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Notice> list(Notice vo) {
		// TODO Auto-generated method stub
		return null;
	}

}
