package com.coeding.spring.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.coeding.spring.repository.DiscussDAO;
import com.coeding.spring.service.DiscussService;
import com.coeding.spring.vo.Discuss;

@Service("discussService")
public class DiscussServiceImpl implements DiscussService {

	@Autowired
	private DiscussDAO discussDao;
	
	@Override
	public void insert(Discuss vo) {
		// TODO Auto-generated method stub
		discussDao.insert(vo);
	}

	@Override
	public void update(Discuss vo) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void delete(Discuss vo) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public Discuss get(Discuss vo) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Discuss> list(Discuss vo) {
		// TODO Auto-generated method stub
		return discussDao.list(vo);
	}

}
