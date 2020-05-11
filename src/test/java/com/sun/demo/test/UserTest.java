package com.sun.demo.test;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;
import com.sun.demo.model.User;
import com.sun.demo.service.IUserService;

/**
 * 用户测试类
 * @author andy
 *
 */
@RunWith(SpringRunner.class)
@SpringBootTest
public class UserTest {
	
	@Autowired
	private IUserService userService;
	
	//@Test
	//public void test() {
		//User user =userService.findAll().get(0);
		//System.out.println(user.toString());
	//}
	
	@Test
	public void excelTest() {
		String aa = userService.findAllExcel();
		System.out.println(aa);
	}

}
