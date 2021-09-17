package com.coeding.spring.service.impl;

import java.util.List;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.coeding.spring.repository.JobDAO;
import com.coeding.spring.service.JobService;
import com.coeding.spring.vo.Job;

@Service("jobService")
public class JobServiceImpl implements JobService {
	
	@Autowired
	private JobDAO jobDao;
	
	@Override
	public void insert(Job vo) {
		jobDao.insert(vo);
	}

	@Override
	public void update(Job vo) {
		jobDao.update(vo);
	}

	@Override
	public void delete(Job vo) {
		jobDao.delete(vo);
	}

	@Override
	public Job get(Job vo) {	
		return jobDao.get(vo);
	}

	@Override
	public List<Job> list(Job vo) {	
		return jobDao.list(vo);
	}

	@Override
	public List<Job> listBusId(int vo) {
		return jobDao.listBusId(vo);
	}

	@Override
	public int listExpiration(int vo) {
		return jobDao.listExpiration(vo);
	}

	@Override
	public int listValidation(int vo) {
		return jobDao.listValidation(vo);
	}

	@Override
	public int listCountJob(int vo) {
		return jobDao.listCountJob(vo);
	}

	@Override
	public List<Job> listBusName(String vo) {
		return jobDao.listBusName(vo);
	}

	@Override
	public List<Job> listPage(Job vo) {		
		return jobDao.listPage(vo);
	}

	@Override
	public int countJob() {
		return jobDao.countJob();
	}

	@Override
	public void updateExpiry(Job vo) {
		jobDao.updateExpiry(vo);		
	}

	@Override
	public void updateValid(Job vo) {
		jobDao.updateValid(vo);			
	}

	@Override
	public List<Job> listJobByInterest() {
		return jobDao.listJobByInterest();
	}

	
	
		
}
