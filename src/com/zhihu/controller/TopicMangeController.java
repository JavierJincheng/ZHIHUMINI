package com.zhihu.controller;

import java.io.IOException;
import java.util.LinkedList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.zhihu.dto.TopicDto;
import com.zhihu.serviceimpl.TopicServiceImpl;
import com.zhihu.serviceinterface.TopicService;
import com.zhihu.util.Stringutil;

@SuppressWarnings("serial")
@WebServlet("/topicmanage")
public class TopicMangeController extends HttpServlet {
	private TopicService topicService = TopicServiceImpl.getInstance();
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		String action = req.getParameter("action");
		if (!Stringutil.isBlank(action)) {
			switch (action) {
			case "getAllTopic": // 
				getAllTopic(req, resp);
				return;
			case "deleteTopicById": // 
				deleteTopicById(req, resp);
				return;
			default: //
				resp.getWriter().print("error request!");
				return;
			}
		}
	}

	private void deleteTopicById(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		if(topicService.deleteTopicById(req.getParameter("topicId"))){
			req.getRequestDispatcher("/topicmanage?action=getAllTopic&PageNow=1").forward(req, resp);
		}
	}

	private void getAllTopic(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int i = Integer.parseInt(req.getParameter("PageNow"));
		String un = req.getParameter("uname");
		System.out.println(i + " " + un);
		TopicServiceImpl ts = new TopicServiceImpl();
		List<TopicDto> tlist = new LinkedList<>();
		tlist = ts.pagingSelectTopic(i);
		int pc = ts.getPageCount();
		System.out.println(pc);
		req.setAttribute("PageNow", i);
		req.setAttribute("list", tlist);
		req.setAttribute("PageCount", pc);
		req.setAttribute("typeList", topicService.getAllTopicTypeList());
		req.getRequestDispatcher("/topic/topicmanage.jsp").forward(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

	}

}
