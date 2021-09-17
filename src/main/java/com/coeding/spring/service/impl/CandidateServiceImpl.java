/**
 * @author minhhieu
 */
package com.coeding.spring.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.coeding.spring.repository.CandidateDAO;
import com.coeding.spring.repository.JobDAO;
import com.coeding.spring.service.CandidateService;
import com.coeding.spring.vo.Candidate;

/**
 * @author minhhieu
 *
 * 
 */

@Service("candidateService")
public class CandidateServiceImpl implements CandidateService {

	@Autowired
	private CandidateDAO canDao;
	
	@Override
	public void insert(Candidate vo) {
		canDao.insert(vo);
		
	}

	@Override
	public void update(Candidate vo) {
		canDao.update(vo);
		
	}

	@Override
	public void delete(Candidate vo) {
		
		
	}

	@Override
	public Candidate get(Candidate vo) {		
		return canDao.get(vo);
	}

	@Override
	public List<Candidate> list(Candidate vo) {		
		return canDao.list(vo);
	}

	@Override
	public List<Candidate> listPage(Candidate vo) {	
		return canDao.listPage(vo);
	}

	@Override
	public List<Candidate> listCanByStatus(int vo) {
		return canDao.listCanByStatus(vo);
	}

}
