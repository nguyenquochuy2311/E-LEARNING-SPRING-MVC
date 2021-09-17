package com.coeding.spring.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.coeding.spring.repository.ReferenceDAO;
import com.coeding.spring.service.ReferenceService;
import com.coeding.spring.vo.Reference;

@Service("refService")
public class ReferenceServiceImpl implements ReferenceService {

	@Autowired
	private ReferenceDAO refDao;
	
	@Override
	public void insert(Reference vo) {
		// TODO Auto-generated method stub
		refDao.insert(vo);
	}

	@Override
	public void update(Reference vo) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void delete(Reference vo) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public Reference get(Reference vo) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Reference> list(Reference vo) {
		// TODO Auto-generated method stub
		return null;
	}

}
