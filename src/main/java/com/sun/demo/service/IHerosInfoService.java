package com.sun.demo.service;

import java.util.List;
import com.sun.demo.model.Heros;

/**
  * 英雄信息接口
 * @author andy
 *
 */
public interface IHerosInfoService {
	
	public List<Heros> getAllHeros();
	
	public Heros getHero(String id);
	
	public List<Heros> getAllHero(String name , String site);
	
	public void insertHero(Heros hero);
	
	public void deleteHero(String id);
	
	public void updateHero(Heros hero);


}
