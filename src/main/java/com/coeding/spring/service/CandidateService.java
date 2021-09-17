/**
 * @author minhhieu
 */
package com.coeding.spring.service;

import java.util.List;

import com.coeding.spring.vo.Candidate;

/**
 * @author minhhieu
 *
 * 
 */
public interface CandidateService extends SV<Candidate> {
	List<Candidate> listPage(Candidate vo);
	List<Candidate> listCanByStatus(int vo);
}
