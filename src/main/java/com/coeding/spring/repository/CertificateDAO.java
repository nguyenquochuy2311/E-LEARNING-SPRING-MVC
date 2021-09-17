package com.coeding.spring.repository;

import java.util.List;

import com.coeding.spring.vo.Certificate;
import com.coeding.spring.vo.Join;
import com.coeding.spring.vo.Student;

/**
 * @author Dang Vinh
 */
public interface CertificateDAO extends DAO<Certificate> {

	List<Certificate> list(Student vo);

	Certificate get(Join join);
	
}
