package com.zhihu.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sun.accessibility.internal.resources.accessibility;
import com.zhihu.serviceimpl.UserService;
import com.zhihu.serviceinterface.IUserService;
import com.zhihu.util.Jsonutil;

/**
 * Servlet implementation class UserLikeController
 */
@WebServlet("/UserLikeController")
public class UserLikeController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Jsonutil jsonutil=new Jsonutil();
		String uid=request.getParameter("uid");
		UserService userService=new UserService();
		PrintWriter out=response.getWriter();
		List list=new ArrayList();
		list=userService.selectLike(uid);
		if(list.size()!=0){
			out.write(jsonutil.JSONRESPONSE(1, null, list).toJSONString());
		}else{
			out.write(jsonutil.JSONRESPONSE(0, null, null).toJSONString());
		}
		
	}

}
