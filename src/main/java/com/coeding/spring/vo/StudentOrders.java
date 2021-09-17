package com.coeding.spring.vo;

import java.sql.Date;

import org.springframework.stereotype.Repository;

/**
 * @author Quoc Huy
 * */

public class StudentOrders extends PaymentVO{

	private int id;
	private float dueMount;
	private Date orderDate;
	private int status;
	
	private Student studentId;
	private Book BookId;
	private Course CourseId;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getDueMount() {
		return String.format("%.2f", dueMount);
	}
	public void setDueMount(String dueMount) {
		this.dueMount = Float.parseFloat(dueMount);
	}
	public Date getOrderDate() {
		return orderDate;
	}
	public void setOrderDate(Date orderDate) {
		this.orderDate = orderDate;
	}
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	public Student getStudentId() {
		return studentId;
	}
	public void setStudentId(Student studentId) {
		this.studentId = studentId;
	}
	public Book getBookId() {
		return BookId;
	}
	public void setBookId(Book bookId) {
		BookId = bookId;
	}
	public Course getCourseId() {
		return CourseId;
	}
	public void setCourseId(Course courseId) {
		CourseId = courseId;
	}
	@Override
	public String toString() {
		return "StudentOrders [id=" + id + ", dueMount=" + dueMount + ", orderDate=" + orderDate + ", status=" + status
				+ ", studentId=" + studentId + ", BookId=" + BookId + ", CourseId=" + CourseId + "]";
	}


}
