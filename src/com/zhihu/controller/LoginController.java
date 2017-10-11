package com.zhihu.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.zhihu.model.User;
import com.zhihu.serviceimpl.UserService;
import com.zhihu.serviceinterface.IUserService;
import com.zhihu.util.Jsonutil;
import com.zhihu.util.MD5Util;

@WebServlet("/LoginController")
public class LoginController extends HttpServlet{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		HttpSession session=req.getSession();
		MD5Util md5=new MD5Util();
		Jsonutil JS=new Jsonutil();
		PrintWriter out=resp.getWriter();
		
		String Mail=req.getParameter("LoginUserName");
		String Psd=req.getParameter("LoginPassWord");
		String Code=req.getParameter("J_codetext");
		
		IUserService us=new UserService();
		String Codes=session.getAttribute("check_code").toString().trim();

		if("".equals(Mail)||"".equals(Psd)||"".equals(Code)){
			out.write(JS.JSONRESPONSE(-2).toJSONString());
		}else{
			
			String Password=md5.md5Encode(Psd);
			int result=us.login(Mail, Password);
		if(result==-1){
			out.write(JS.JSONRESPONSE(-1).toJSONString());
			
		}else{
			if(result==0){
				out.write(JS.JSONRESPONSE(0).toJSONString());
			}
			else{
				if(!Codes.equalsIgnoreCase(Code.trim())){
					out.write(JS.JSONRESPONSE(2).toJSONString());
				}else{
					
					 String[] getcookie=req.getParameterValues("cookie");
				        if(getcookie!=null&&getcookie.length>0){

				            Cookie cookiename=new Cookie("username",Mail) ;
				            Cookie cookiepassword=new Cookie("password",Psd) ;
				            cookiename.setMaxAge(1111111);
				            cookiepassword.setMaxAge(111111111);
				            resp.addCookie(cookiename);
				            resp.addCookie(cookiepassword);

				        }else{
				            Cookie[] cookies=req.getCookies();
				            if(cookies!=null&&cookies.length>0){
				                for(Cookie c:cookies){
				                    if(c.getName().equals("username")||c.getName().equals("password")){
				                        c.setMaxAge(0);
				                        resp.addCookie(c);
				                    }
				                }

				            }
				        }
					User u=us.selectMg(Mail, Password);
					session.setAttribute("User", u);
					out.write(JS.JSONRESPONSE(1).toJSONString());
					
				}}
			}
		}
		out.close();
		
		
	}

	
	


}
