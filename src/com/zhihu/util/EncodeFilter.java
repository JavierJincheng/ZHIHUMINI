package com.zhihu.util;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.zhihu.serviceimpl.TopicServiceImpl;
import com.zhihu.serviceinterface.TopicService;

import java.io.IOException;

/**
 * Created by 木木高 on 2017/7/25.
 */
@WebFilter(filterName = "CharFilter", urlPatterns = "/*")
public class EncodeFilter implements Filter {
	private String encode = "UTF-8";
	private TopicService topicService = TopicServiceImpl.getInstance();
	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
		
		
	}

	@Override
	public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain)
			throws IOException, ServletException {
		HttpServletRequest request = (HttpServletRequest) servletRequest;
		HttpServletResponse response = (HttpServletResponse) servletResponse;
		request.setCharacterEncoding(encode);
		request.setAttribute("typeList", topicService.getAllTopicTypeList());
		response.setCharacterEncoding(encode);
		filterChain.doFilter(servletRequest, servletResponse);

	}

	@Override
	public void destroy() {

	}
}
