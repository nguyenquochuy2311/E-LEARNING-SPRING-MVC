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

import com.coeding.spring.repository.InterestDAO;
import com.coeding.spring.vo.Business;
import com.coeding.spring.vo.Interest;

/**
 * @author minhhieu
 *
 * 
 */

@Repository
public class InterestDAOImpl implements InterestDAO {
	
	private static final Logger logger = 
			LoggerFactory.getLogger(Business.class);
	
	@Autowired
	private SqlSessionTemplate session;
	
	@Override
	public void insert(Interest vo) {				
	}

	@Override
	public void update(Interest vo) {
		logger.info("Update Interest");
		session.update("Interest.updateInterest", vo);	
	}

	@Override
	public void delete(Interest vo) {
				
	}

	@Override
	public Interest get(Interest vo) {		
		return session.selectOne("Interest.selectListByStuId", vo);
	}

	@Override
	public List<Interest> list(Interest vo) {		
		return null;
	}

}
