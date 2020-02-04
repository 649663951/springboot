package com.sun.demo.service;

import java.util.List;
import com.sun.demo.model.User;

/**
  *  用户信息接口
 * @author andy
 *
 */
public interface IUserService {
	
	/**
	 * 查询所有用户信息
	 * @return
	 */
	List<User> findAll();
	
	/**
	   * 通过用户名查询用户信息
	 * @return
	 */
	User getUserByid(String userName);
	
	/**
	 * 导入excel
	 * @return
	 */
	String findAllExcel();

}
