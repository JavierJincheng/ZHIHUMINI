package com.zhihu.controller;

import java.io.IOException;
import java.util.LinkedList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;

import com.zhihu.serviceimpl.TopicServiceImpl;
import com.zhihu.dto.TopicDto;
import com.zhihu.model.Topic;

//import org.apache.commons.lang.StringUtils;

import com.zhihu.model.User;
import com.zhihu.serviceinterface.TopicService;
import com.zhihu.util.FileUpLoadUtil;
import com.zhihu.util.FormFieldHandler;
import com.zhihu.util.Stringutil;

/**
 * 
 * joecqupt 涓嬪崍7:56:08
 */

@WebServlet(name = "TopicServlet", urlPatterns = { "/TopicServlet" })
public class TopicController extends HttpServlet {
	private TopicService topicService = TopicServiceImpl.getInstance();
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		String action = req.getParameter("action");
		if (!Stringutil.isBlank(action)) {
			switch (action) {
			case "publish": // 
				publishTopic(req, resp);
				return;
			case "getAllType": // 
				getAllType(req, resp);
				return;
			case "getAllTopicByType": // 
				getAllTopicByType(req, resp);
				return;
			default: //
				resp.getWriter().print("error request!");
				return;
			}
		}
		// 请不要删除这一段代码

		int i = Integer.parseInt(req.getParameter("PageNow"));
		User u = (User) req.getSession().getAttribute("User");

		if (u == null) {
			System.out.println(i + " 傻逼游客");
			List<TopicDto> tlist = new LinkedList<>();
			tlist = TopicServiceImpl.getInstance().pagingSelectTopic(i);
			int pc = TopicServiceImpl.getInstance().getPageCount();
			req.setAttribute("PageNow", i);
			req.setAttribute("list", tlist);
			req.setAttribute("PageCount", pc);
			req.setAttribute("typeList", topicService.getAllTopicTypeList());
			req.getRequestDispatcher("index.jsp").forward(req, resp);
		} else {
			System.out.println(i + " " + u.getUserNiceName() + " " + u.getUserId());

			List<TopicDto> tlist = new LinkedList<>();
			tlist = TopicServiceImpl.getInstance().pagingSelectTopic(u.getUserId(), i);
			int pc = TopicServiceImpl.getInstance().getPageCount();
			System.out.println(pc);
			req.setAttribute("PageNow", i);
			req.setAttribute("list", tlist);
			req.setAttribute("PageCount", pc);
			req.setAttribute("typeList", topicService.getAllTopicTypeList());
			req.getRequestDispatcher("index.jsp").forward(req, resp);
		}

		// 以上是首页展示代码 请不要随意更改
	}

	private void getAllTopicByType(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		User u = (User) req.getSession().getAttribute("User");
		if (u == null) {
			System.out.println("d 游客");
			List<TopicDto> tlist = new LinkedList<>();
			tlist = TopicServiceImpl.getInstance().pagingSelectTopicByType(Integer.parseInt(req.getParameter("type")));
			req.setAttribute("list", tlist);
			req.setAttribute("typeList", topicService.getAllTopicTypeList());
			req.getRequestDispatcher("/topic/topicTypeList.jsp").forward(req, resp);
		} else {

			List<TopicDto> tlist = new LinkedList<>();
			tlist = TopicServiceImpl.getInstance().pagingSelectTopicByType(
					((User) req.getSession().getAttribute("User")).getUserId(),
					Integer.parseInt(req.getParameter("type")));
			req.setAttribute("list", tlist);
			req.setAttribute("typeList", topicService.getAllTopicTypeList());
			req.getRequestDispatcher("/topic/topicTypeList.jsp").forward(req, resp);
		}

	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		String action = req.getParameter("action");
		if (!Stringutil.isBlank(action)) {
			switch (action) {
			case "publish": // 鍙戝竷璇濋
				publishTopic(req, resp);
				break;
			case "getAllType": // 鍙戝竷璇濋
				getAllType(req, resp);
				break;
			default: // 榛樿action 鎻愰啋鐢ㄦ埛閿欒鐨勮姹�
				resp.getWriter().print("error request!");
				break;
			}
		}

	}

	private void getAllType(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setAttribute("typeList", topicService.getAllTopicTypeList());
		req.getRequestDispatcher("topic/topicType.jsp").forward(req, resp);
	}

	private void publishTopic(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		final Topic topic = new Topic();
		// 前端直接做 判空 和校验操作
		// 后台省略校验代码
		topic.setTopicComments(0);
		topic.setTopicId(Stringutil.getUUID());
		topic.setTopicStars(0);

		topic.setTopicUser(((User) req.getSession().getAttribute("User")).getUserId());

		// 设置测试session的用户id
		// topic.setTopicUser(Stringutil.getUUID());

		String topicPic = null;
		try {
			topicPic = FileUpLoadUtil.upLoadFile(req, "topic-images", new FormFieldHandler() {
				@Override
				public void handleFormField(FileItem item) {
					try {
						if (item.getFieldName().equals("topicContent"))
							topic.setTopicContent(new String(item.getString().getBytes("ISO-8859-1"), "UTF-8"));
						if (item.getFieldName().equals("topicTitle"))
							topic.setTopicTitle(new String(item.getString().getBytes("ISO-8859-1"), "UTF-8"));
						if (item.getFieldName().equals("topicType"))
							topic.setTopicType(Integer.parseInt(item.getString()));
					} catch (Exception e) {
						e.printStackTrace();
					}
				}
			});
		} catch (Exception e) {
			e.printStackTrace();
		}
		System.out.println(topicPic);
		topic.setTopicPic(topicPic);
		if (topicService.publishTopic(topic)) {
			// 发布成功
			req.getRequestDispatcher("first.jsp").forward(req, resp);
			return;
		} else {
			// 发布失败
			resp.getWriter().print("error request!");
			return;
		}

	}

}
