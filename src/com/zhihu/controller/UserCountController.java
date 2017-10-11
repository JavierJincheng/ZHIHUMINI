package com.zhihu.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.zhihu.serviceimpl.UserService;
import com.zhihu.util.Jsonutil;

/**
 * Servlet implementation class UserCountController
 */
@WebServlet("/UserCountController")
public class UserCountController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Jsonutil jsonutil=new Jsonutil();
		UserService userService=new UserService();
		String id=request.getParameter("UserId");
		int count=userService.selectCount(id);
		PrintWriter out=response.getWriter();
		out.write(jsonutil.JSONRESPONSE(1, null, count).toJSONString());
		
	}


}
