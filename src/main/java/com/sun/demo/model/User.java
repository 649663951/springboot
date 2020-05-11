package com.sun.demo.model;

import java.io.Serializable;

/**
   * 用户信息
 * @author andy
 *
 */
public class User implements Serializable {

	private static final long serialVersionUID = -3797296344820936933L;
	
	private String id;
	
	private String username;
	
	private String password;
	
	private String createdBy;
	
	private String createdDate;
	
    private String updateBy;
	
	private String updateDate;
	
	private String isVaild;

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getCreatedBy() {
		return createdBy;
	}

	public void setCreatedBy(String createdBy) {
		this.createdBy = createdBy;
	}

	public String getCreatedDate() {
		return createdDate;
	}

	public void setCreatedDate(String createdDate) {
		this.createdDate = createdDate;
	}

	public String getUpdateBy() {
		return updateBy;
	}

	public void setUpdateBy(String updateBy) {
		this.updateBy = updateBy;
	}

	public String getUpdateDate() {
		return updateDate;
	}

	public void setUpdateDate(String updateDate) {
		this.updateDate = updateDate;
	}

	public String getIsVaild() {
		return isVaild;
	}

	public void setIsVaild(String isVaild) {
		this.isVaild = isVaild;
	}

	@Override
	public String toString() {
		return "User [id=" + id + ", username=" + username + ", password=" + password + ", createdBy=" + createdBy
				+ ", createdDate=" + createdDate + ", updateBy=" + updateBy + ", updateDate=" + updateDate
				+ ", isVaild=" + isVaild + "]";
	}
	

}
