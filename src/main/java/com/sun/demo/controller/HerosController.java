package com.sun.demo.controller;

import java.util.List;
import javax.servlet.http.HttpServletRequest;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import com.sun.demo.constant.Result;
import com.sun.demo.constant.URLConstant;
import com.sun.demo.constant.Views;
import com.sun.demo.model.Heros;
import com.sun.demo.service.IHerosInfoService;

/**
  * 英雄信息
 * @author andy
 *
 */
@Controller
@RequestMapping(value=URLConstant.HEROS)
public class HerosController {
	
	@Autowired
	private IHerosInfoService herosInfoService;
	
	private Logger logger = LogManager.getLogger(HerosController.class.getName());	
	
	@RequestMapping(value=URLConstant.INFOS , method=RequestMethod.GET)
	public String getHeros(Model model , HttpServletRequest request) {
		List<Heros> heros = herosInfoService.getAllHeros();
		model.addAttribute("heros", heros);
		return Views.HEROS;
	}
	
	@RequestMapping(value=URLConstant.INFO , method=RequestMethod.POST)
	public String getHero(Model model , HttpServletRequest request) {
		String name = request.getParameter("name");
		String site = request.getParameter("site");
		List<Heros> heros = herosInfoService.getAllHero(name ,site);
		model.addAttribute("name", name);
		model.addAttribute("role", site);
		model.addAttribute("heros", heros);
		return Views.HEROS;
	}
	
	@RequestMapping(value=URLConstant.ADD , method=RequestMethod.GET)
	public String addHero(Model model , HttpServletRequest request) {
		return Views.ADD;
	}
	
	@RequestMapping(value=URLConstant.ADD , method=RequestMethod.POST)
	public String addHeros(Model model , HttpServletRequest request) {
		String name = request.getParameter("name");
		String anotherName = request.getParameter("anotherName");
		String position = request.getParameter("position");
		String site = request.getParameter("site");
		String motto = request.getParameter("motto");
		String price = request.getParameter("price");
		String skill_q = request.getParameter("skill_q");
		String skill_w = request.getParameter("skill_w");
		String skill_e = request.getParameter("skill_e");
		String skill_r = request.getParameter("skill_r");
		String unactive = request.getParameter("unactive");
		Heros hero = new Heros();
		hero.setName(name);
		hero.setAnotherName(anotherName);
		hero.setPosition(position);
		hero.setSite(site);
		hero.setMotto("'"+motto+"'");
		hero.setPrice(price);
		hero.setSkill_q(skill_q);
		hero.setSkill_w(skill_w);
		hero.setSkill_e(skill_e);
		hero.setSkill_r(skill_r);
		hero.setUnactive(unactive);
		herosInfoService.insertHero(hero);
		List<Heros> heros = herosInfoService.getAllHeros();
		model.addAttribute("heros", heros);
		return Views.HEROS;
	}
	
	
	@RequestMapping(value=URLConstant.EDIT , method=RequestMethod.GET)
	public String editHero(Model model , @PathVariable String id) {
		Heros hero = herosInfoService.getHero(id);
		model.addAttribute("hero", hero);
		return Views.EDIT;
	}
	
	
	@RequestMapping(value=URLConstant.DETAILS , method=RequestMethod.GET)
	public String detailsHero(Model model , @PathVariable String id) {
		Heros hero = herosInfoService.getHero(id);
		model.addAttribute("hero", hero);
		return Views.DETAILS;
	}
	
	@RequestMapping(value=URLConstant.EDITS , method=RequestMethod.POST)
	public String editHeros(Model model , HttpServletRequest request) {
		String id = request.getParameter("id");
		String name = request.getParameter("name");
		String anotherName = request.getParameter("anotherName");
		String position = request.getParameter("position");
		String site = request.getParameter("site");
		String motto = request.getParameter("motto");
		String price = request.getParameter("price");
		String skill_q = request.getParameter("skill_q");
		String skill_w = request.getParameter("skill_w");
		String skill_e = request.getParameter("skill_e");
		String skill_r = request.getParameter("skill_r");
		String unactive = request.getParameter("unactive");
		Heros hero = new Heros();
		hero.setId(id);
		hero.setName(name);
		hero.setAnotherName(anotherName);
		hero.setPosition(position);
		hero.setSite(site);
		hero.setMotto("'"+motto+"'");
		hero.setPrice(price);
		hero.setSkill_q(skill_q);
		hero.setSkill_w(skill_w);
		hero.setSkill_e(skill_e);
		hero.setSkill_r(skill_r);
		hero.setUnactive(unactive);
		herosInfoService.updateHero(hero);
		List<Heros> heros = herosInfoService.getAllHeros();
		model.addAttribute("heros", heros);
		return Views.HEROS;
	}
	
	@RequestMapping(value=URLConstant.DELETE , method=RequestMethod.DELETE)
	public @ResponseBody Result deleteHero(Model model , @PathVariable String id) {
		 try {
			herosInfoService.deleteHero(id);
		} catch (Exception e) {
			logger.error(e);
			return new Result(0, e.getMessage());
		}
		return new Result(1);
	}

}
