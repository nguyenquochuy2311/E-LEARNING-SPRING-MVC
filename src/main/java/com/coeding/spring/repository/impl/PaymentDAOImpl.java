package com.coeding.spring.repository.impl;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.coeding.spring.repository.PaymentDAO;
import com.coeding.spring.vo.PaymentVO;
import com.coeding.spring.vo.Student;

/**
 * 
 * @author Dang Vinh + Quoc Huy
 *
 */
@Repository
public class PaymentDAOImpl implements PaymentDAO{
	
	@Autowired
	private SqlSessionTemplate session;
	
	@Override
	public void insert(PaymentVO vo) {
		// TODO Auto-generated method stub
		session.insert("Payment.insert", vo);
	}

	@Override
	public void update(PaymentVO vo) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void delete(PaymentVO vo) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public PaymentVO get(PaymentVO vo) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<PaymentVO> list(PaymentVO vo) {
		// TODO Auto-generated method stub
		return null;
	}

	/**
	 * @author Dang Vinh
	 */
	@Override
	public List<PaymentVO> listPaymentB(Student vo) {
//		return session.selectList("Payment.selectListPmtB", vo);
		return null;
	}

	/**
	 * @author Dang Vinh
	 */
	@Override
	public List<PaymentVO> listPaymentC(Student vo) {
//		return session.selectList("Payment.selectListPmtC", vo);
		return null;
	}

}
