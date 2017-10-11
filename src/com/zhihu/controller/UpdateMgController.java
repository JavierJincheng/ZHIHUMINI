package com.zhihu.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import com.zhihu.model.User;
import com.zhihu.serviceimpl.UserService;
import com.zhihu.serviceinterface.IUserService;
import com.zhihu.util.Jsonutil;
import com.zhihu.util.QiniuUpload;

@WebServlet("/UpdateMgController")
@MultipartConfig()
public class UpdateMgController extends HttpServlet{

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
	
		IUserService us=new UserService();
		PrintWriter out=resp.getWriter();
		Jsonutil JS=new Jsonutil();
		String NiceName=req.getParameter("NiceName");
		int Age=Integer.parseInt(req.getParameter("Age"));
		String Desc=req.getParameter("Desc");
		//String Head=req.getParameter("Head");
		String Id=req.getParameter("id");
		int i=us.update(NiceName, Age, Desc, Id);
		if (i==0) {
			out.write(JS.JSONRESPONSE(0).toJSONString());
		}else{
			out.write(JS.JSONRESPONSE(1).toJSONString());
		}
		out.close();
		
	}
	
	

}
