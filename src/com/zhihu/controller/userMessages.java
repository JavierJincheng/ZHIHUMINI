package com.zhihu.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.zhihu.model.User;
import com.zhihu.serviceimpl.UserService;
import com.zhihu.util.Jsonutil;

/**
 * Servlet implementation class userMessages
 */
@WebServlet("/userMessages")
public class userMessages extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void  doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String id=request.getParameter("UserId");
	     HttpSession session=request.getSession();
	     ArrayList<User> list=new ArrayList<>();
	     UserService userService=new UserService();
	     PrintWriter out=response.getWriter();
	     User user=(User)session.getAttribute("User");
	    
	     Jsonutil jsonutil=new Jsonutil();
	    
	     if(id!=null){
	    	 userService.updateCount(id);
        list=userService.getUserMessage(id);
         System.out.println(list);
	    out.write(jsonutil.JSONRESPONSE(1, null, list).toJSONString());}else{
	    	 out.write(jsonutil.JSONRESPONSE(0, null, 0).toJSONString());
	    }
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		doGet(request, response);
	}

}
