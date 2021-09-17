/**
 * @author minhhieu
 */
package com.coeding.spring.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.coeding.spring.repository.InterestDAO;
import com.coeding.spring.service.InterestService;
import com.coeding.spring.vo.Interest;

/**
 * @author minhhieu
 *
 * 
 */

@Service("interestService")
public class InterestServiceImpl implements InterestService {

	@Autowired
	private InterestDAO interDao;
	
	@Override
	public void insert(Interest vo) {
			
	}

	@Override
	public void update(Interest vo) {
		interDao.update(vo);
	}

	@Override
	public void delete(Interest vo) {
		
		
	}

	@Override
	public Interest get(Interest vo) {
		
		return interDao.get(vo);
	}

	@Override
	public List<Interest> list(Interest vo) {
		
		return null;
	}

}
