package com.coeding.spring.vo;

import java.sql.Date;

/**
 * 
 * @author Dang Vinh
 *
 */
public class Join extends Course{
	private int id;
	private int sumProcess;
	
	@Override
	public String toString() {
		return "Join [id=" + id + ", courseId=" + courseId + ", studentId=" + studentId + ", registerDate="
				+ registerDate + "]";
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	private int courseId;
	private int studentId;
	public int getStudentId() {
		return studentId;
	}

	public void setStudentId(int studentId) {
		this.studentId = studentId;
	}

	private Date registerDate;

	public Date getRegisterDate() {
		return registerDate;
	}

	public void setRegisterDate(Date registerDate) {
		this.registerDate = registerDate;
	}

	public int getCourseId() {
		return courseId;
	}

	public void setCourseId(int courseId) {
		this.courseId = courseId;
	}

	public int getSumProcess() {
		return sumProcess;
	}

	public void setSumProcess(int sumProcess) {
		this.sumProcess = sumProcess;
	}

}
