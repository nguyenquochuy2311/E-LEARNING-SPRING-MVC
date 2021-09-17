package com.coeding.spring.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.coeding.spring.repository.impl.AdminDAOImpl;
import com.coeding.spring.vo.Admin;

/**
 * 	DAO
 * @author NGOCHAI
 *
 */
@Service
public class AdminServiceImpl {

	@Autowired
	private AdminDAOImpl dao;
	
	
	public Admin login(Admin vo) {
		return dao.get(vo);
	}
	public Admin getProfile(Admin vo) {
		return dao.getOne(vo);
	}
	
	public int getSum() {
		return dao.getSum();
	}
	
	
}
