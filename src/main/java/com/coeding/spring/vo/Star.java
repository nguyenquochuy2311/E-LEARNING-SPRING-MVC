package com.coeding.spring.vo;

public class Star {

	public int getStar() {
		return star;
	}
	public void setStar(int star) {
		this.star = star;
	}
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	public int getSum() {
		return sum;
	}
	public void setSum(int sum) {
		this.sum = sum;
	}
	public int getPercent() {
		return percent;
	}
	public void setPercent(int percent) {
		this.percent = percent;
	}
	private int star;
	private int count;
	private int sum;
	private int percent;
	public Star(int star, int count, int sum, int percent) {
		super();
		this.star = star;
		this.count = count;
		this.sum = sum;
		this.percent = percent;
	}
	
	public Star() {
		super();
	}

}
