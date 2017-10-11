package com.zhihu.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.zhihu.model.Comment;
import com.zhihu.model.Topic;
import com.zhihu.serviceimpl.UserService;
import com.zhihu.util.Jsonutil;

/**
 * Servlet implementation class SelectTopicController
 */
@WebServlet("/SelectCommentController")
public class SelectCommentController extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		Jsonutil jsonutil=new Jsonutil();
		PrintWriter out=response.getWriter();
		UserService userService=new UserService();
		String UserId=request.getParameter("UserId");
		HashMap map=new HashMap<>();
		List<Comment> Topiclist=userService.selectComment(UserId);
		if(Topiclist.size()!=0){
		for(int i=0;i<Topiclist.size();i++){
			System.out.println(Topiclist.get(i).getCommentTopic()+"11111111");
		System.out.println(userService.getTopic(Topiclist.get(i).getCommentTopic())+"1111");
		Topiclist.get(i).setCommentReplay(userService.getTopic(Topiclist.get(i).getCommentTopic()));	
			System.out.println(Topiclist.get(i).getCommentReplay()+"2222222");
		}
		
		out.write(jsonutil.JSONRESPONSE(1, null, Topiclist).toJSONString());}else{
			
			
			out.write(jsonutil.JSONRESPONSE(0, null, null).toJSONString());
		}
		
		
	}

}
