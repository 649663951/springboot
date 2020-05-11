package com.sun.demo.mapper;

import java.util.List;
import org.springframework.stereotype.Repository;
import com.sun.demo.model.User;

/**
 * 
 * @author ex_sunqi
 *
 */
@Repository
public interface UserMapper {
	
	/**
	  * 查询所有用户
	 * @return
	 */
	 public List<User> findAll();
	 
	 
	 /**
	  * 通过用户名查询
	  * @param username
	  * @return
	  */
	 public User getUserByid(String username);

}
