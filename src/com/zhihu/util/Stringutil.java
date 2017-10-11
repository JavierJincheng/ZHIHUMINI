package com.zhihu.util;

import java.text.SimpleDateFormat;
import java.util.UUID;

/**
 * Created by 木木高 on 2017/3/27.
 */

public class Stringutil {

	public static boolean isEmpty(String str) {
		boolean flag = false;
		if ("".equals(str) || str == null) {
			flag = true;
		}
		if (!"".equals(str) && str != null) {
			flag = false;
		}

		return flag;

	}

	public static String stampToDate(String s) {
		String res;
		SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
		Long time = new Long(s);
		res = simpleDateFormat.format(time);
		return res;
	}

	public static String getUUID() {
		UUID u = UUID.randomUUID();
		return u.toString().replace("-", "");
	}

	public static void main(String[] args) {
		// System.out.println(Stringutil.stampToDate("2017-04-13"));
		System.out.println(getUUID().length());
	}

	public static boolean isBlank(String action) {
		if(action==null||action.length()==0){
			return true;
		}
		return false;
	}
}
