package com.zhihu.util;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

/**
 * Created by 木木高 on 2017/7/24.
 */
public class FilterUtil implements Filter {
    @Override
    public void init(FilterConfig filterConfig) throws ServletException {

    }

    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
        HttpServletRequest request=(HttpServletRequest)servletRequest;
        HttpServletResponse response=(HttpServletResponse)servletResponse;
        HttpSession session=request.getSession();
        String user=(String)session.getAttribute("user");
       String requestPath=request.getRequestURI();
        if(user==null){
         if(!requestPath.endsWith(".css")&&!requestPath.endsWith(".js")){
                //System.out.println(requestPath);
            response.sendRedirect("../loginPage.jsp");
        }
  }
        filterChain.doFilter(servletRequest,servletResponse);

    }

    @Override
    public void destroy() {

    }
}
