package com.coeding.spring.vo;

import java.util.List;

/**
 * 
 * @author Dang Vinh
 *
 */
public class Student extends User{

	private List<Join> join;
	private List<Course> course;
	private List<PaymentVO> payment;
	private List<Job> job;
	private List<Certificate> certificate;
	
	public List<Course> getCourse() {
		return course;
	}
	public void setCourseRegister(List<Course> course) {
		this.course = course;
	}
	public List<Job> getJob() {
		return job;
	}
	public void setJob(List<Job> job) {
		this.job = job;
	}
	public List<Certificate> getCertificate() {
		return certificate;
	}
	public void setCertificate(List<Certificate> certificate) {
		this.certificate = certificate;
	}
	public List<PaymentVO> getPayment() {
		return payment;
	}
	public void setPayment(List<PaymentVO> payment) {
		this.payment = payment;
	}
	public List<Join> getJoin() {
		return join;
	}
	public void setJoin(List<Join> join) {
		this.join = join;
	}

}
