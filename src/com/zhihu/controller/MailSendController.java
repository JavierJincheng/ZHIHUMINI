package com.zhihu.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.zhihu.serviceimpl.UserService;
import com.zhihu.serviceinterface.IUserService;
import com.zhihu.util.EmailUtil;
import com.zhihu.util.Jsonutil;
import com.zhihu.util.MailSend;
@WebServlet("/MailSendController")
public class MailSendController extends HttpServlet{
	 protected void doGet(HttpServletRequest request, HttpServletResponse response){


	 }
	 protected void doPost(HttpServletRequest request, HttpServletResponse response){
		 MailSend MS=new MailSend();
		 Jsonutil JT=new Jsonutil();
		 EmailUtil EU=new EmailUtil();
		 IUserService iUserService=new UserService();
		 HttpSession session=request.getSession();
		 PrintWriter out = null;
		try {
			out = response.getWriter();
		} catch (IOException e1) {
			e1.printStackTrace();
		};
		 String sendMail=request.getParameter("Mail");
		 if(sendMail==null||"".equals(sendMail)){
		
		     out.write(JT.JSONRESPONSE(3).toJSONString()); 
			
		 }else{
			 if(iUserService.isRegister(sendMail)==1){
				 out.write(JT.JSONRESPONSE(-1).toJSONString()); 
			 }else{
			 boolean isEmail=EU.isEmail(sendMail);
			if(!isEmail){
			
		        out.write(JT.JSONRESPONSE(2).toJSONString());  
				
			}else{
			 
		 try {
			String result=MS.sendmail(sendMail);
			System.out.println(result+"----------result");
			session.setAttribute("EmailCode", result);
			session.setMaxInactiveInterval(60);
			System.out.println(session.getAttribute("EmailCode")+"-----------EmailCode");
			
	        out.write(JT.JSONRESPONSE(1).toJSONString());  
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		 
		 }}
		 }
	 }

}
