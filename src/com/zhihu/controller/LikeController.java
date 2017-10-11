package com.zhihu.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.Servlet;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.zhihu.serviceimpl.TopicServiceImpl;

/**
 * Servlet implementation class LikeController
 */
@WebServlet("/LikeController")
public class LikeController extends HttpServlet implements Servlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String userId = request.getParameter("UserId");
		String topicId = request.getParameter("TopicId");
		if (TopicServiceImpl.getInstance().isLike(userId, topicId)) {
			if (TopicServiceImpl.getInstance().like(userId, topicId)) {
				if (TopicServiceImpl.getInstance().addLike(topicId)) {
					PrintWriter out = response.getWriter(); // 设定传参变量
					out.print("success");
				}
			}
		}

	}

}
