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
import javax.servlet.http.HttpSession;

import com.zhihu.model.User;
import com.zhihu.serviceimpl.UserService;
import com.zhihu.serviceinterface.IUserService;
import com.zhihu.util.Jsonutil;

@WebServlet("/SelectAllUserController")
public class SelectAllUserController extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		super.doGet(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession session=req.getSession();
		User user=(User)session.getAttribute("User");
		PrintWriter out = resp.getWriter();
		Jsonutil JS = new Jsonutil();
		//int page = Integer.parseInt(req.getParameter("page"));
		IUserService u = new UserService();
		List list=new ArrayList();
	    list=u.selectAll();
		if (list == null) {
			out.write(JS.JSONRESPONSE(0).toJSONString());
		} else {

			out.write(JS.JSONRESPONSE(1, null,list,user.getUserId()).toJSONString());
		}
		out.close();
	}

}
