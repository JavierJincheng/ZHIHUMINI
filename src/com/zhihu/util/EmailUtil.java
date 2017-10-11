package com.zhihu.util;

public class EmailUtil {
	public static boolean isEmail(String str){
		String format = "\\w[-\\w.+]*@([A-Za-z0-9][-A-Za-z0-9]+\\.)+[A-Za-z]{2,14}";
    	boolean result=str.matches(format);
        
		return result;
		
	}

}
