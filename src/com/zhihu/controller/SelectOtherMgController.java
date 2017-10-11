package com.zhihu.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.zhihu.serviceimpl.UserService;
import com.zhihu.serviceinterface.IUserService;
import com.zhihu.util.Jsonutil;

@WebServlet("/SelectOtherMgController")
public class SelectOtherMgController extends HttpServlet{

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
		PrintWriter out = resp.getWriter();
		Jsonutil JS = new Jsonutil();
		String id=req.getParameter("OtherId");
		IUserService iu=new UserService();
		if (iu.selectOMg(id)==null) {
			out.write(JS.JSONRESPONSE(0).toJSONString());
		} else {

			out.write(JS.JSONRESPONSE(1, null, iu.selectOMg(id)).toJSONString());
		}
		
	}

}
