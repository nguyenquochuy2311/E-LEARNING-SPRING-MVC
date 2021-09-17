package com.coeding.spring.repository;

import java.util.List;

import com.coeding.spring.vo.PaymentVO;
import com.coeding.spring.vo.Student;

/**
 * 
 * @author Dang Vinh
 *
 */
public interface PaymentDAO extends DAO<PaymentVO> {
	List<PaymentVO> listPaymentB(Student vo);
	List<PaymentVO> listPaymentC(Student vo);
}
