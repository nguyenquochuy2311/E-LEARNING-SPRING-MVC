package com.coeding.spring.repository.impl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.coeding.spring.repository.NoticeDAO;
import com.coeding.spring.vo.Notice;

@Repository
public class NoticeDAOImpl implements NoticeDAO{

	@Autowired
	private SqlSessionTemplate session;
	
	@Override
	public void insert(Notice vo) {
		// TODO Auto-generated method stub
		session.insert("Notice.insert", vo);
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
