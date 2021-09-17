/**
 * 
 */
package com.coeding.spring.service;

import java.util.List;


import com.coeding.spring.vo.Job;

/**
 * @author Minh Hieu
 *
 * 
 */
public interface JobService extends SV<Job> {
	List<Job> listBusId(int vo);
	int listExpiration(int vo);
	int listValidation(int vo);
	int listCountJob(int vo);
	List<Job> listBusName(String vo);
	List<Job> listPage(Job vo);
	int countJob();
	void updateExpiry(Job vo);
	void updateValid(Job vo);
	List<Job> listJobByInterest();
}
