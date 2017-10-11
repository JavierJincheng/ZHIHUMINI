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
import com.zhihu.serviceimpl.UserService;
import com.zhihu.serviceinterface.IUserService;
import com.zhihu.util.Jsonutil;

@WebServlet("/DeleteUserController")
public class DeleteUserController extends HttpServlet{

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
		UserService us=new UserService();
		Jsonutil JS=new Jsonutil();
		String Id=req.getParameter("id");
		int i=us.delete(Id);
		PrintWriter out=resp.getWriter();
		if (i==0) {
			out.write(JS.JSONRESPONSE(0).toJSONString());
		}else{
			out.write(JS.JSONRESPONSE(1).toJSONString());
		}
		out.close();
	}
	

}
