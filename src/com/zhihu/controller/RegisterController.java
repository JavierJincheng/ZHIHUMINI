package com.zhihu.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.zhihu.model.User;
import com.zhihu.serviceimpl.UserService;
import com.zhihu.serviceinterface.IUserService;
import com.zhihu.util.EmailUtil;
import com.zhihu.util.Jsonutil;
import com.zhihu.util.MailSend;
@WebServlet("/RegisterController")
public class RegisterController  extends HttpServlet{
	
	 protected void doGet(HttpServletRequest request, HttpServletResponse response){


	 }
	 protected void doPost(HttpServletRequest request, HttpServletResponse response){
		 HttpSession session=request.getSession();
		 EmailUtil EU=new EmailUtil();
		 IUserService iUserService=new UserService();
		 Jsonutil JU=new Jsonutil();
		 User user=new User();
		 PrintWriter out=null;
		try {
			out = response.getWriter();
		} catch (IOException e) {
			e.printStackTrace();
		}  
		 String Email=request.getParameter("Mail");
		 String PassWord=request.getParameter("PassWord");
		 String NickName=request.getParameter("NickName");
		 String MailCode=request.getParameter("MailCode");
		
		 
	     user.setUserName(Email);
	     user.setUserNiceName(NickName);
	     user.setUserPass(PassWord);
	     //user.setUserHead("http://otq7c7vb0.bkt.clouddn.com/ew.png");
	     boolean result=EU.isEmail(Email);
	    
	     if("".equals(PassWord)||"".equals(Email)||"".equals(NickName)){
	    	 out.write(JU.JSONRESPONSE(0).toJSONString());//0输入信息不能为空
	    	 
	     }else{
	    	 if(!result){
		    	 out.write(JU.JSONRESPONSE(3).toJSONString());//3邮箱格式不正确
		     }
	    	else{
	    		if("".equals(MailCode)){
			    	 out.write(JU.JSONRESPONSE(2).toJSONString());//2验证码不能为空
			     }else{
			    	 String MailCodes=session.getAttribute("EmailCode").toString().trim();
			    	 if(!MailCodes.equalsIgnoreCase(MailCode.trim())){
			    		 out.write(JU.JSONRESPONSE(-1).toJSONString());//-1验证码错误
			    	 }else{
			    		 iUserService.Register(user);
			    		 out.write(JU.JSONRESPONSE(1).toJSONString());//1登陆成功
			    		 
			    		 
			    	 }
			    	 
			     }}
		    	 
		     
	    	 
	    	 
	     
	     }
         

	 }

}
