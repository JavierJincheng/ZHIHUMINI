package com.zhihu.controller;

import java.awt.List;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.zhihu.util.Jsonutil;
@WebServlet("/CookieController")
public class CookieController extends HttpServlet {
	 protected void doGet(HttpServletRequest request, HttpServletResponse response){


	 }
	 protected void doPost(HttpServletRequest request, HttpServletResponse response){
		    String username="";
		    String password="";
		    Cookie[] cookies=request.getCookies();
		    Jsonutil JS=new Jsonutil();
		    HashMap map=new HashMap();
		    try {
				PrintWriter out=response.getWriter();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		    if(cookies!=null&&cookies.length>0){
		        for(Cookie c:cookies){
		            if(c.getName().equals("username")){
		                username=c.getValue();
		            }
		            if(c.getName().equals("password")){
		                password=c.getValue();
		            }
		            map.put("username", username);
		            map.put("password", password);
		            JS.JSONRESPONSE(1, null, map);
		        }

		    }
		 
		 
	 }

}
