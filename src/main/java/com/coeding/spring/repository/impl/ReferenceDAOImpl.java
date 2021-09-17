package com.coeding.spring.repository.impl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.coeding.spring.repository.ReferenceDAO;
import com.coeding.spring.vo.Reference;

@Repository
public class ReferenceDAOImpl implements ReferenceDAO{

	@Autowired
	private SqlSessionTemplate session;
	
	@Override
	public void insert(Reference vo) {
		// TODO Auto-generated method stub
		session.insert("Ref.insert", vo);
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
