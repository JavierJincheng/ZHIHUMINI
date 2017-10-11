package com.zhihu.controller;

import java.io.IOException;
import java.util.Collection;
import javax.servlet.http.Part;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import org.apache.catalina.connector.Request;

import com.zhihu.serviceimpl.UserService;
import com.zhihu.serviceinterface.IUserService;
import com.zhihu.util.Jsonutil;
@WebServlet("/UserPhotoController")
public class UserPhotoController extends HttpServlet{
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		this.doPost(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	      Jsonutil JS=new Jsonutil();
	      IUserService iUserService=new UserService();
	   
		
	
	
	}


}
