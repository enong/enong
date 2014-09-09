package com.enong.utils;

public class JsonResult {

	// �������
	private int code;

	// �쳣��Ϣ
	private String message;

	// ��������
	private Object content;

	public JsonResult() {

	}

	public JsonResult(int code, String message) {
		this.code = code;
		this.message = message;
	}

	public JsonResult(int code, String message, Object content) {
		this.code = code;
		this.message = message;
		this.content = content;
	}

	public int getCode() {
		return code;
	}

	public void setCode(int code) {
		this.code = code;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	public Object getContent() {
		return content;
	}

	public void setContent(Object content) {
		this.content = content;
	}

}
