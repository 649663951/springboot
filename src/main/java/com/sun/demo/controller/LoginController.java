package com.sun.demo.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import com.sun.demo.constant.URLConstant;
import com.sun.demo.constant.Views;
import com.sun.demo.model.Heros;
import com.sun.demo.model.User;
import com.sun.demo.service.IHerosInfoService;
import com.sun.demo.service.IUserService;

/**
  * 用户登陆
 * @author andy
 *
 */
@Controller
public class LoginController {
	
	@Autowired
	private IUserService userService;
	
	@Autowired
	private IHerosInfoService herosInfoService;
	
	private Logger logger = LogManager.getLogger(LoginController.class.getName());	

	
	@RequestMapping(value=URLConstant.LOGIN , method=RequestMethod.POST)
	public String login(Model model , HttpServletRequest request) {
		String userName = request.getParameter("userName");
		logger.info("*************当前登录用户："+userName+"*************");
		String password = request.getParameter("password");
		User user = userService.getUserByid(userName);
		if(null != user) {
			if(user.getPassword().equals(password)) {
				List<Heros> heros = herosInfoService.getAllHeros();
				model.addAttribute("heros", heros);
				return Views.HEROS;
			}else {
				model.addAttribute("0", "密码错误");
				return Views.BEGIN;
			}
		}else {
			model.addAttribute("2"," 用户不存在");
			return Views.BEGIN;
		}
	}

}
