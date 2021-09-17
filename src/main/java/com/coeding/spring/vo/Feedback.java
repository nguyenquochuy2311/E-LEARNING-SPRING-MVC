package com.coeding.spring.vo;

import java.sql.Date;

public class Feedback {

	private int id;
	private int studentId;
	private String title;
	private String content;
	private int courseId;
	private int bookId;
	private int star;
	private int status;
	private Date createDate;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getStudentId() {
		return studentId;
	}
	public void setStudentId(int studentId) {
		this.studentId = studentId;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public int getCourseId() {
		return courseId;
	}
	public void setCourseId(int courseId) {
		this.courseId = courseId;
	}
	public int getBookId() {
		return bookId;
	}
	public void setBookId(int bookId) {
		this.bookId = bookId;
	}
	public int getStar() {
		return star;
	}
	public void setStar(int star) {
		this.star = star;
	}
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	public Date getCreateDate() {
		return createDate;
	}
	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}
	
	public Feedback(int id, int studentId, String title, String content, int courseId, int bookId, int star, int status,
			Date createDate) {
		super();
		this.id = id;
		this.studentId = studentId;
		this.title = title;
		this.content = content;
		this.courseId = courseId;
		this.bookId = bookId;
		this.star = star;
		this.status = status;
		this.createDate = createDate;
	}
	public Feedback() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public Student getStudent() {
		return student;
	}
	public void setStudent(Student student) {
		this.student = student;
	}

	private Student student;
	
}
