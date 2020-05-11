package com.sun.demo.model;

import java.io.Serializable;
import java.util.List;

/**
   * 英雄信息
 * @author andy
 *
 */
public class Heros implements Serializable{

	private static final long serialVersionUID = 3430354132630416673L;
	
	/**
	 * id
	 */
	private String id;
	
	/**
	 * 英雄
	 */
	private String name;
	
	/**
	 * 昵称
	 */
	private String anotherName;
	
	/**
	 * 定位
	 */
	private String position;
	
	/**
	 * 位置
	 */
	private String site;
	
	/**
	 * 座右铭
	 */
	private String motto;
	
	/**
	 * 价格
	 */
	private String price;
	
	/**
	 * 技能Q
	 */
	private String skill_q;
	
	/**
	 * 技能W
	 */
	private String skill_w;
	
	/**
	 * 技能E
	 */
	private String skill_e;
	
	/**
	 * 技能R
	 */
	private String skill_r;
	
	/**
	 * 被动
	 */
	private String unactive;
	
	/**
	 * 创建人
	 */
	private String created_By;
	
	/**
	 * 创建时间
	 */
	private String created_Date;
	
	/**
	 * 修改人
	 */
	private String update_By;
	
	/**
	 * 修改时间
	 */
	private String update_Date;
	
	/**
	 * 是否有效
	 */
	private String is_Vaild;
	
	/**
	 * 英雄皮肤
	 */
	private List<Skin>  skins;

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getAnotherName() {
		return anotherName;
	}

	public void setAnotherName(String anotherName) {
		this.anotherName = anotherName;
	}

	public String getPosition() {
		return position;
	}

	public void setPosition(String position) {
		this.position = position;
	}

	public String getSite() {
		return site;
	}

	public void setSite(String site) {
		this.site = site;
	}

	public String getMotto() {
		return motto;
	}

	public void setMotto(String motto) {
		this.motto = motto;
	}

	public String getPrice() {
		return price;
	}

	public void setPrice(String price) {
		this.price = price;
	}

	public String getSkill_q() {
		return skill_q;
	}

	public void setSkill_q(String skill_q) {
		this.skill_q = skill_q;
	}

	public String getSkill_w() {
		return skill_w;
	}

	public void setSkill_w(String skill_w) {
		this.skill_w = skill_w;
	}

	public String getSkill_e() {
		return skill_e;
	}

	public void setSkill_e(String skill_e) {
		this.skill_e = skill_e;
	}

	public String getSkill_r() {
		return skill_r;
	}

	public void setSkill_r(String skill_r) {
		this.skill_r = skill_r;
	}

	public String getUnactive() {
		return unactive;
	}

	public void setUnactive(String unactive) {
		this.unactive = unactive;
	}

	public String getCreated_By() {
		return created_By;
	}

	public void setCreated_By(String created_By) {
		this.created_By = created_By;
	}

	public String getCreated_Date() {
		return created_Date;
	}

	public void setCreated_Date(String created_Date) {
		this.created_Date = created_Date;
	}

	public String getUpdate_By() {
		return update_By;
	}

	public void setUpdate_By(String update_By) {
		this.update_By = update_By;
	}

	public String getUpdate_Date() {
		return update_Date;
	}

	public void setUpdate_Date(String update_Date) {
		this.update_Date = update_Date;
	}

	public String getIs_Vaild() {
		return is_Vaild;
	}

	public void setIs_Vaild(String is_Vaild) {
		this.is_Vaild = is_Vaild;
	}

	public List<Skin> getSkins() {
		return skins;
	}

	public void setSkins(List<Skin> skins) {
		this.skins = skins;
	}
	

}
