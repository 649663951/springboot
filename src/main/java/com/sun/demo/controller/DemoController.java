package com.sun.demo.controller;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import com.sun.demo.constant.URLConstant;
import com.sun.demo.constant.Views;


/**
  * 样式测试
 * @author andy
 *
 */
@Controller
public class DemoController {
	
	private Logger logger = LogManager.getLogger(DemoController.class.getName());	
	
	@RequestMapping(value=URLConstant.DEMO , method=RequestMethod.GET)
	public String demo() {
		return  Views.DEMO;
	}
	
	@RequestMapping(value=URLConstant.SELECT , method=RequestMethod.GET)
	public String dubboSelect() {
		return Views.DUBBO_SELECT;
	}

}
