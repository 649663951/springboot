package com.sun.demo.controller;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import com.sun.demo.constant.URLConstant;
import com.sun.demo.constant.Views;


/**
  * 进入登陆页面
 * @author andy
 *
 */
@Controller
public class IndexController {
	
	private Logger logger = LogManager.getLogger(IndexController.class.getName());	
	
	@RequestMapping(value=URLConstant.INDEX , method=RequestMethod.GET)
	public String index() {
		logger.info("*************进入登陆页面*************");
		return Views.LOGIN;
	}

}
