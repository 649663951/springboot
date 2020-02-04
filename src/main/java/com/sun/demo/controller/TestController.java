package com.sun.demo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import com.sun.demo.constant.Result;
import com.sun.demo.constant.URLConstant;
import com.sun.demo.model.User;
import com.sun.demo.service.IUserService;

/**
  * 数据库测试
 * @author andy
 *
 */
@RestController
public class TestController {

	@Autowired
	private IUserService userService;
	
	@RequestMapping(value=URLConstant.TEST , method=RequestMethod.GET)
	public Result<User> getUser(String userName) {
		User user = userService.findAll().get(0);
		return new Result<User>(1,"用户信息",user);
	}
}
