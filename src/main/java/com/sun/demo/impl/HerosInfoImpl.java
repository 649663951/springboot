package com.sun.demo.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.sun.demo.mapper.HeroMapper;
import com.sun.demo.model.Heros;
import com.sun.demo.service.IHerosInfoService;

@Service("herosInfoService")
public class HerosInfoImpl  implements IHerosInfoService{

	@Autowired
	private HeroMapper heroMapper;
	
	@Override
	public List<Heros> getAllHeros() {
		return heroMapper.getAllHeros();
	}

	@Override
	public List<Heros> getAllHero(String name , String site) {
		return heroMapper.getAllHero(name, site);
	}

	@Override
	public void insertHero(Heros hero) {
		heroMapper.insertHero(hero);
	}

	@Override
	public void deleteHero(String id) {
		heroMapper.deleteHero(id);
	}

}
