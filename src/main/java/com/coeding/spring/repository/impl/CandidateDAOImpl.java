/**
 * @author minhhieu
 */
package com.coeding.spring.repository.impl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.coeding.spring.repository.CandidateDAO;
import com.coeding.spring.vo.Business;
import com.coeding.spring.vo.Candidate;

/**
 * @author minhhieu
 *
 * 
 */

@Repository
public class CandidateDAOImpl implements CandidateDAO {
	private static final Logger logger = 
			LoggerFactory.getLogger(Business.class);
	
	@Autowired
	private SqlSessionTemplate session;
	
	
	@Override
	public void insert(Candidate vo) {
		logger.info("Insert Candidate");
		session.insert("Can.insertCan", vo);
	}

	@Override
	public void update(Candidate vo) {
		logger.info("Update Status");
		session.update("Can.updateStatus", vo);
	}

	@Override
	public void delete(Candidate vo) {
				
	}

	@Override
	public Candidate get(Candidate vo) {		
		return session.selectOne("Can.selectCanById", vo);
	}

	@Override
	public List<Candidate> list(Candidate vo) {		
		return session.selectList("Can.selectCanJoin", vo);
	}

	@Override
	public List<Candidate> listPage(Candidate vo) {
		logger.info("List Page Candidate");
		return session.selectList("Can.selectPage", vo);
	}

	@Override
	public List<Candidate> listCanByStatus(int vo) {
		logger.info("List Status Candidate");
		return session.selectList("Can.selectCanByStatus", vo);
	}

}
