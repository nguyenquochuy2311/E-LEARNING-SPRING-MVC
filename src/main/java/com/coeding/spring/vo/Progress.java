package com.coeding.spring.vo;

import java.sql.Date;

public class Progress {
	private int id;
	private Join join;
	private Lesson lesson;
	private int progress;
	private int status;
	private Date lastDate;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public Join getJoin() {
		return join;
	}
	public void setJoin(Join join) {
		this.join = join;
	}
	public Lesson getLesson() {
		return lesson;
	}
	public void setLesson(Lesson lesson) {
		this.lesson = lesson;
	}
	public int getProgress() {
		return progress;
	}
	public void setProgress(int progress) {
		this.progress = progress;
	}
	public Date getLastDate() {
		return lastDate;
	}
	public void setLastDate(Date lastDate) {
		this.lastDate = lastDate;
	}
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}

}
