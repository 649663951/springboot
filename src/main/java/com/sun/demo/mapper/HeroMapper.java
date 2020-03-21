package com.sun.demo.mapper;

import java.util.List;
import org.springframework.stereotype.Repository;
import com.sun.demo.model.Heros;

/**
 * 
 * @author ex_sunqi
 *
 */
@Repository
public interface HeroMapper {
	
	/**
	  * 查询所有英雄
	 * @return
	 */
	 public List<Heros> getAllHeros();
	 
	 /**
	  * 查询英雄信息
	 * @return
	 */
	 public List<Heros> getAllHero(String name , String site);
	 
	 /**
	  * 新增英雄信息
	  * @param hero
	  */
	 public void insertHero(Heros hero);
	 
	 /**
	  * 删除英雄信息
	  * @param hero
	  */
	 public void deleteHero(String id);
	 
	 /**
	  * 根据人物id查询英雄信息
	  * @param hero
	  */
	 public Heros getHero(String id);
	 
	 /**
	  * 修改人物信息
	  * @param hero
	  */
	 public Heros updateHero(Heros hero);
	 

}
