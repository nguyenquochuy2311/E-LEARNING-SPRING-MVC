package com.coeding.spring.repository.impl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.coeding.spring.repository.BusinessDAO;
import com.coeding.spring.vo.Business;

@Repository
public class BusinessDAOImpl implements BusinessDAO {
	private static final Logger logger = 
			LoggerFactory.getLogger(Business.class);
	@Autowired
	private SqlSessionTemplate session;
	
	@Override
	public void insert(Business vo) {
		logger.info("insert :" + vo);
		session.insert("Business.insertBusiness", vo);
	}

	@Override
	public void update(Business vo) {
		logger.info("update : " + vo);
		session.update("Business.updateBusiness", vo);
	}

	@Override
	public void delete(Business vo) {
		logger.info("delete :" + vo);
		session.delete("Business.deleteBusiness", vo);
	}

	@Override
	public Business get(Business vo) {
		logger.info("select One :" + vo);
		return session.selectOne("Business.selectOne", vo);
	}

	@Override
	public List<Business> list(Business vo) {	
		logger.info("List full :" + vo);
		return session.selectList("Business.selectList", vo);
	}

	@Override
	public List<Business> listName(String vo) {
		logger.info("List By Name :" + vo);
		return session.selectList("Business.selectBusinessByName", vo);
	}

	@Override
	public void updateBusPass(Business vo) {
		logger.info("update Password : " + vo);
		session.update("Business.updatePassword", vo);		
	}

	@Override
	public Business checkLogin(Business vo) {
		// TODO Auto-generated method stub
		return session.selectOne("Business.checkLogin", vo);
	}

	@Override
	public Business checkEmail(Business vo) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Business checkUserName(Business vo) {
		// TODO Auto-generated method stub
		return session.selectOne("Business.checkUsername", vo);
	}

	

}
