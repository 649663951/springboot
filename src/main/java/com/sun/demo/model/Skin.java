package com.sun.demo.model;

import java.io.Serializable;

/**
   * 皮肤
 * @author andy
 *
 */
public class Skin implements Serializable{

	private static final long serialVersionUID = -4694886774181936320L;
	
	/**
	 * id
	 */
	private String id;
	
	/**
	 * 名称
	 */
	private String name;
	
	/**
	 * 皮肤图片链接
	 */
	private String skinUrl;
	
	/**
	 * 价格
	 */
	private String price;
	
	/**
	 * 是否有效
	 */
	private String is_Vaild;
	
	/***
	 * 属性
	 */
	private String attribute;

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

	public String getSkinUrl() {
		return skinUrl;
	}

	public void setSkinUrl(String skinUrl) {
		this.skinUrl = skinUrl;
	}

	public String getPrice() {
		return price;
	}

	public void setPrice(String price) {
		this.price = price;
	}

	public String getIs_Vaild() {
		return is_Vaild;
	}

	public void setIs_Vaild(String is_Vaild) {
		this.is_Vaild = is_Vaild;
	}

	public String getAttribute() {
		return attribute;
	}

	public void setAttribute(String attribute) {
		this.attribute = attribute;
	}

}
