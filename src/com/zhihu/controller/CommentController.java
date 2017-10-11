package com.zhihu.controller;

import java.io.IOException;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.lang.StringUtils;

import com.zhihu.dto.CommentDto;
import com.zhihu.model.Comment;
import com.zhihu.model.User;
import com.zhihu.serviceimpl.CommentServiceImpl;
import com.zhihu.serviceinterface.CommentService;
import com.zhihu.util.Stringutil;

@WebServlet(name = "CommentServlet", urlPatterns = "/comment")
public class CommentController extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private CommentService commentService = CommentServiceImpl.getInstance();

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		this.doPost(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String action = req.getParameter("action");
		if (!StringUtils.isBlank(action)) {
			switch (action) {
			case "publishComment": // 发布评论
				publishComment(req, resp);
				break;
			case "getAllComment": // 获取所有的评论
				getAllComment(req, resp);
				break;
			default: // 默认action 提醒用户错误的请求
				resp.getWriter().print("error request!");
				break;
			}
		}
	}

	private void getAllComment(HttpServletRequest req, HttpServletResponse resp) {
		List<CommentDto> clist = new LinkedList<>();
		// String commentTopic=(String)req.getSession().getAttribute("topicId");
		clist = CommentServiceImpl.getInstance().selectComment("2");
		req.setAttribute("Comments", clist);

		try {
			req.getRequestDispatcher("topic/topicInfo.jsp").forward(req, resp);
		} catch (ServletException | IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	private void publishComment(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		Comment comment = new Comment();
		// 前端校验参数的合法性 后台省略
		comment.setCommentContent(req.getParameter("commentContent"));
		comment.setCommentId(Stringutil.getUUID());
		comment.setCommentReplay(
				req.getParameter("commentRepay") == null ? "0" : req.getParameter("commentRepay").toString());
		comment.setCommentTopic(req.getParameter("commentTopic"));
		 comment.setCommentUser(((User)req.getSession().getAttribute("User")).getUserId());
//		comment.setCommentUser("df96e27893854e9f9f14e8ab8876ea45");
//		System.out.println("开始插入");
		if (commentService.publishComment(comment)) {
			try {
				resp.sendRedirect("TopicInfoServlet?TopicId=" + req.getParameter("commentTopic"));
				return;
			}  catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		} else {
			resp.getWriter().print("error request");
			return;
		}
	}

}
