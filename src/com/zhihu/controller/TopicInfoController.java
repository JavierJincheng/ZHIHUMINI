package com.zhihu.controller;

import java.io.IOException;
import java.util.LinkedList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.zhihu.dto.CommentDto;
import com.zhihu.dto.TopicDto;
import com.zhihu.model.User;
import com.zhihu.serviceimpl.CommentServiceImpl;
import com.zhihu.serviceimpl.TopicServiceImpl;
import com.zhihu.serviceinterface.CommentService;

/**
 * Servlet implementation class TopicInfoController
 */
@WebServlet(name="/TopicInfoController", urlPatterns = { "/TopicInfoServlet" })
public class TopicInfoController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public TopicInfoController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		selectTopic(request,response);
		selectTopicComments(request,response);
		request.getRequestDispatcher("topic/topicInfo.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

	private void selectTopic(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {		
		String topicId= request.getParameter("TopicId");
		User u=(User)request.getSession().getAttribute("User");
		if(u==null){
			System.out.println(topicId + " 傻逼游客");
			TopicDto td=TopicServiceImpl.getInstance().SelectTopic(topicId);
			request.setAttribute("Topic",td);
		}else{
			System.out.println(topicId +u.getUserNiceName()+" "+u.getUserId());
			TopicDto td=TopicServiceImpl.getInstance().SelectTopic(topicId,u.getUserId());
			request.setAttribute("Topic",td);
		}
		
		
//		request.setAttribute("TopicTitle",td.getTopicTitle());
//		request.setAttribute("TopicContent",td.getTopicContent());
//		request.setAttribute("TopicComments",td.getTopicComments());
//		request.setAttribute("TopicStars",td.getTopicStars());
//		request.setAttribute("TopicUserId",td.getTopicUser());
//		request.setAttribute("TopicUserNickName",td.getTopicUserNickName());
//		request.setAttribute("TopicUserDesc",td.getTopicUserDesc());
//		request.setAttribute("TopicUserHead",td.getTopicUserHead());
//		request.setAttribute("TopicTypeId",td.getTopicType());
//		request.setAttribute("TopicTypeName",td.getTopicTypeName());
//		request.setAttribute("TopicTypeName",td.getTopicTypePic());
//		request.setAttribute("TopicTime",td.getTopicTime());		
	}
	private void selectTopicComments(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String topicId= request.getParameter("TopicId");
		List<CommentDto>clist=CommentServiceImpl.getInstance().selectComment(topicId);
		request.setAttribute("Comments", clist);
		}

}

