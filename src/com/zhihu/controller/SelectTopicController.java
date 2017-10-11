package com.zhihu.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.zhihu.model.Topic;
import com.zhihu.serviceimpl.UserService;
import com.zhihu.util.Jsonutil;

/**
 * Servlet implementation class SelectTopicController
 */
@WebServlet("/SelectTopicController")
public class SelectTopicController extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		Jsonutil jsonutil=new Jsonutil();
		PrintWriter out=response.getWriter();
		UserService userService=new UserService();
		String UserId=request.getParameter("UserId");
		List<Topic> Topiclist=userService.selectTopics(UserId);
		if(Topiclist.size()!=0){
		for(int i=0;i<Topiclist.size();i++){
			System.out.println(Topiclist.get(i));
		}
		
		out.write(jsonutil.JSONRESPONSE(1, null, Topiclist).toJSONString());}else{
			
			
			out.write(jsonutil.JSONRESPONSE(0, null, null).toJSONString());
		}
		
		
	}

}
