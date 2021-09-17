package com.coeding.spring.vo;

import java.sql.Date;

import org.springframework.stereotype.Repository;

/**
 * 
 * @author Dang Vinh + Quoc Huy
 *
 */

public class PaymentVO {

	private int pid;
	private String invoiceNo;
	private float amount;
	private Date paymentDate;
	private int pstatus;
	
	private float tax;

	public int getPid() {
		return pid;
	}

	public void setPid(int pid) {
		this.pid = pid;
	}

	public String getInvoiceNo() {
		return invoiceNo;
	}

	public void setInvoiceNo(String invoiceNo) {
		this.invoiceNo = invoiceNo;
	}

	public String getAmount() {
		return String.format("%.2f", amount);
	}

	public void setAmount(String amount) {
		this.amount = Float.parseFloat(amount);
	}
	
	public Date getPaymentDate() {
		return paymentDate;
	}

	public void setPaymentDate(Date paymentDate) {
		this.paymentDate = paymentDate;
	}

	public int getPstatus() {
		return pstatus;
	}

	public void setPstatus(int pstatus) {
		this.pstatus = pstatus;
	}

	public String getTax() {
		return String.format("%.2f", tax);
	}

	public void setTax(String tax) {
		this.tax = Float.parseFloat(tax);
	}

}