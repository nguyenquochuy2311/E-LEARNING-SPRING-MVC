package com.coeding.spring.repository.impl;

import java.util.List;
import java.util.Set;

import org.mybatis.spring.SqlSessionTemplate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.coeding.spring.repository.JobDAO;
import com.coeding.spring.vo.Business;
import com.coeding.spring.vo.Job;

@Repository
public class JobDAOImpl implements JobDAO {
	private static final Logger logger = 
			LoggerFactory.getLogger(Business.class);
	@Autowired
	private SqlSessionTemplate session;

	@Override
	public void insert(Job vo) {
		session.insert("Job.insertJob", vo);
	}

	@Override
	public void update(Job vo) {
		session.update("Job.updateJob", vo);
	}

	@Override
	public void delete(Job vo) {
		session.delete("Job.deleteJob", vo);
	}

	@Override
	public Job get(Job vo) {
		return session.selectOne("Job.selectOne", vo);
	}

	@Override
	public List<Job> list(Job vo) {
		return session.selectList("Job.selectList", vo);
	}

	@Override
	public List<Job> listBusId(int vo) {		
		return session.selectList("Job.selectJobByBusId", vo);
	}

	@Override
	public int listExpiration(int vo) {
		logger.info("List Expiration");
		return session.selectOne("Job.selectExpiration",vo);
	}

	@Override
	public int listValidation(int vo) {
		logger.info("List Validation");
		return session.selectOne("Job.selectValidation",vo);
	}

	@Override
	public int listCountJob(int vo) {
		logger.info("List Count Job By Bus");
		return session.selectOne("Job.selectCountJob",vo);
	}

	@Override
	public List<Job> listBusName(String vo) {
		logger.info("List By Name");
		return session.selectList("Job.selectJobByName", vo);
	}

	@Override
	public List<Job> listPage(Job vo) {
		logger.info("List By Page");
		return session.selectList("Job.selectPage",vo);
	}

	@Override
	public int countJob() {
		logger.info("Count All");
		return session.selectOne("Job.selectCount");
	}

	@Override
	public void updateExpiry(Job vo) {
		logger.info("Update Status Expiry Job");
		session.update("Job.updateExpiry", vo);
	}

	@Override
	public void updateValid(Job vo) {
		logger.info("Update Status Valid Job");
		session.update("Job.updateValid", vo);		
	}

	@Override
	public List<Job> listJobByInterest() {
		return session.selectList("Job.selectListByInterest");
	}


}
