/**
 * @author minhhieu
 */
package com.coeding.spring.repository;

import java.util.List;

import com.coeding.spring.vo.Candidate;



/**
 * @author minhhieu
 *
 * 
 */
public interface CandidateDAO extends DAO<Candidate> {
	List<Candidate> listPage(Candidate vo);
	List<Candidate> listCanByStatus(int vo);
}
