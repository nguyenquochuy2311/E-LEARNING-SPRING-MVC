package com.coeding.spring.service;

import java.util.List;

import com.coeding.spring.vo.PaymentVO;
import com.coeding.spring.vo.Student;

/**
 * 
 * @author Dang Vinh
 *
 */
public interface PaymentService extends SV<PaymentVO> {
	List<PaymentVO> listPaymentB(Student vo);
	List<PaymentVO> listPaymentC(Student vo);
}