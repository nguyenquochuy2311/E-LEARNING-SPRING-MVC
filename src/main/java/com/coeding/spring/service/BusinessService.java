/**
 * 
 */
package com.coeding.spring.service;

import java.util.List;

import com.coeding.spring.vo.Business;

/**
 * @author Minh Hieu
 *
 * 
 */
public interface BusinessService extends SV<Business>, UserService<Business> {
	List<Business> listName(String vo);
	void updateBusPass(Business vo);
}
