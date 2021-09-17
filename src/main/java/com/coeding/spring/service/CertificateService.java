package com.coeding.spring.service;

import java.util.List;

import com.coeding.spring.vo.Certificate;
import com.coeding.spring.vo.Join;
import com.coeding.spring.vo.Student;

/**
 * @author Dang Vinh
 */
public interface CertificateService extends SV<Certificate> {
	
	List<Certificate> ListCert(Student vo);
	
	Certificate get(Join join);

}