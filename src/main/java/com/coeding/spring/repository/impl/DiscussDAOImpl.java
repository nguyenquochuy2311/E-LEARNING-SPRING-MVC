package com.coeding.spring.repository.impl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.coeding.spring.repository.DiscussDAO;
import com.coeding.spring.vo.Discuss;

/**
 *  @author Quoc Huy
 * */

@Repository
public class DiscussDAOImpl implements DiscussDAO {

	@Autowired
	private SqlSessionTemplate session;
	
	@Override
	public void insert(Discuss vo) {
		// TODO Auto-generated method stub
		session.insert("Discuss.insert", vo);
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
		int join_id = vo.getJoin().getId();
		return session.selectList("Discuss.selectList", join_id);
	}

}
