/**
 * @author minhhieu
 */
package com.coeding.spring.vo;

import java.sql.Date;
import java.util.Set;

/**
 * @author minhhieu
 *
 * 
 */
public class Candidate {
	private int id;
	private Set<Student> studentId;
	private Set<Job> jobId;
	private String cv;
	private int status;
	private Date applyDate;
	private int pageId;
	private int total;
	private int stId;
	private int jbId;
	
	
	
	/**
	 * @return the id
	 */
	public int getId() {
		return id;
	}
	/**
	 * @return the stId
	 */
	public int getStId() {
		return stId;
	}
	/**
	 * @param stId the stId to set
	 */
	public void setStId(int stId) {
		this.stId = stId;
	}
	/**
	 * @return the jbId
	 */
	public int getJbId() {
		return jbId;
	}
	/**
	 * @param jbId the jbId to set
	 */
	public void setJbId(int jbId) {
		this.jbId = jbId;
	}
	/**
	 * @param id the id to set
	 */
	public void setId(int id) {
		this.id = id;
	}
	/**
	 * @return the studentId
	 */
	public Set<Student> getStudentId() {
		return studentId;
	}
	/**
	 * @param studentId the studentId to set
	 */
	public void setStudentId(Set<Student> studentId) {
		this.studentId = studentId;
	}
	/**
	 * @return the jobId
	 */
	public Set<Job> getJobId() {
		return jobId;
	}
	/**
	 * @param jobId the jobId to set
	 */
	public void setJobId(Set<Job> jobId) {
		this.jobId = jobId;
	}
	/**
	 * @return the cv
	 */
	public String getCv() {
		return cv;
	}
	/**
	 * @param cv the cv to set
	 */
	public void setCv(String cv) {
		this.cv = cv;
	}
	/**
	 * @return the status
	 */
	public int getStatus() {
		return status;
	}
	/**
	 * @param status the status to set
	 */
	public void setStatus(int status) {
		this.status = status;
	}
	/**
	 * @return the applyDate
	 */
	public Date getApplyDate() {
		return applyDate;
	}
	/**
	 * @param applyDate the applyDate to set
	 */
	public void setApplyDate(Date applyDate) {
		this.applyDate = applyDate;
	}
	/**
	 * @return the pageId
	 */
	public int getPageId() {
		return pageId;
	}
	/**
	 * @param pageId the pageId to set
	 */
	public void setPageId(int pageId) {
		this.pageId = pageId;
	}
	/**
	 * @return the total
	 */
	public int getTotal() {
		return total;
	}
	/**
	 * @param total the total to set
	 */
	public void setTotal(int total) {
		this.total = total;
	}
	
	
	
	
	
	
	
}
