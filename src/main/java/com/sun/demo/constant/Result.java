package com.sun.demo.constant;

/**
   * 封装结果集
 * @author ex_sunqi
 *
 * @param <T>
 */
public class Result<T> {
	
	/** 状态码：1 成功，0 失败 */
	private Integer code;
	
	/** 返回信息 */
	private String message;
	
	/** 返回数据 */
	private T data;

	public Result(Integer code, String message, T data) {
		super();
		this.code = code;
		this.message = message;
		this.data = data;
	}

	@Override
	public String toString() {
		return "Result [code=" + code + ", message=" + message + ", data=" + data + "]";
	}

	public Integer getCode() {
		return code;
	}

	public void setCode(Integer code) {
		this.code = code;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	public T getData() {
		return data;
	}

	public void setData(T data) {
		this.data = data;
	}
	
	
}
