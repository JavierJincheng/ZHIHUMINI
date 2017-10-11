package com.zhihu.util;

import com.alibaba.fastjson.JSONObject;

/**
 * Created by 木木高 on 2017/3/27.
 */

public class Jsonutil {

public static JSONObject JSONRESPONSE(int code, String message, Object data) {
	JSONObject jo = new JSONObject();
		jo.put("code", code);
	jo.put("message", message);
	jo.put("data", data);
	return jo;

	}

	public static JSONObject JSONRESPONSE(int code) {
		JSONObject jo = new JSONObject();
		jo.put("code", code);
		return jo;

	}

	public static JSONObject JSONRESPONSE(int code, String message, Object data, int size) {
		JSONObject jo = new JSONObject();
		jo.put("code", code);
		jo.put("message", message);
	    jo.put("data", data);
	    jo.put("size", size);
		return jo;

	}
	public static JSONObject JSONRESPONSE(int code, String message, Object data, String size) {
		JSONObject jo = new JSONObject();
		jo.put("code", code);
		jo.put("message", message);
	    jo.put("data", data);
	    jo.put("size", size);
		return jo;

	}
	
}
