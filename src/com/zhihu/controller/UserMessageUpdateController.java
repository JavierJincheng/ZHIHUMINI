package com.zhihu.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.zhihu.model.User;
import com.zhihu.util.Jsonutil;

/**
 * Servlet implementation class UserMessageUpdateController
 */
@WebServlet("/UserMessageUpdateController")
public class UserMessageUpdateController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session=request.getSession();
		PrintWriter out=response.getWriter();
		Jsonutil jsonutil=new Jsonutil();
		User user=(User)session.getAttribute("User");
		String id=request.getParameter("uid");
		if(user!=null){
		if(id.equals(user.getUserId())){
			
			out.write(jsonutil.JSONRESPONSE(1).toJSONString());
		}else{out.write(jsonutil.JSONRESPONSE(0).toJSONString());}}else{
			out.write(jsonutil.JSONRESPONSE(0).toJSONString());
			
		}
	}

}
