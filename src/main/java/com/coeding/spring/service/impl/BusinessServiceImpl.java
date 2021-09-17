package com.coeding.spring.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.coeding.spring.repository.BusinessDAO;
import com.coeding.spring.repository.DAO;
import com.coeding.spring.service.BusinessService;
import com.coeding.spring.vo.Business;

@Service("businessService")
public class BusinessServiceImpl implements BusinessService {

	@Autowired
	 private BusinessDAO businessDao;
	
	@Override
	public void insert(Business vo) {
		businessDao.insert(vo);
	}

	@Override
	public void update(Business vo) {
		businessDao.update(vo);
	}

	@Override
	public void delete(Business vo) {
		businessDao.delete(vo);
	}

	@Override
	public Business get(Business vo) {
		return businessDao.get(vo);
	}

	@Override
	public List<Business> list(Business vo) {	
		return businessDao.list(vo);
	}

	@Override
	public List<Business> listName(String vo) {
		return businessDao.listName(vo);
	}

	@Override
	public void updateBusPass(Business vo) {
		businessDao.updateBusPass(vo);
		
	}

	@Override
	public Business checkLogin(Business vo) {
		// TODO Auto-generated method stub
		return businessDao.checkLogin(vo);
	}

	@Override
	public Business checkUserName(Business vo) {
		// TODO Auto-generated method stub
		return businessDao.checkUserName(vo);
	}

	@Override
	public Business checkEmail(Business vo) {
		// TODO Auto-generated method stub
		return null;
	}

	

}
