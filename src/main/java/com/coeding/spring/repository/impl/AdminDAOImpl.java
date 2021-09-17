package com.coeding.spring.repository.impl;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.coeding.spring.repository.AdminDAO;
import com.coeding.spring.vo.Admin;

/**
 * 	DAO
 * @author NGOCHAI
 *
 */

@Repository
public class AdminDAOImpl implements AdminDAO{
	@Autowired
	private SqlSessionTemplate session;
	
	
	
	public  Admin get(Admin vo) {
		// TODO Auto-generated method stub
		return (Admin)session.selectOne("Admin.selectEmail", vo);
	}

	public Admin getOne(Admin vo) {
		return (Admin)session.selectOne("Admin.selectOne", vo);
	}
	
	
	public int getSum() {
		 return session.selectOne("Admin.selectCount");
	}
}
