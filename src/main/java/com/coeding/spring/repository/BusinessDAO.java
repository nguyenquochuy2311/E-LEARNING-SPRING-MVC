/**
 * 
 */
package com.coeding.spring.repository;

import java.util.List;

import com.coeding.spring.vo.Business;

/**
 * @author Minh Hieu
 *
 * 
 */
public interface BusinessDAO extends DAO<Business>, UserDAO<Business> {
	List<Business> listName(String vo);
	void updateBusPass(Business vo);
	
	
}
