package com.cn.util;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * 
 *
 */
public class safeFileter implements Filter {

	public void destroy()
	{
		
    }

	public void doFilter(ServletRequest arg0, ServletResponse arg1,FilterChain arg2) throws IOException, ServletException 
	{
		HttpServletRequest request=(HttpServletRequest)arg0;
		HttpServletResponse response=(HttpServletResponse)arg1;
		if(request.getSession().getAttribute("admin")==null)
		{
			String path=request.getContentType();
			response.sendRedirect(path+"/error1.html");
		}
		else
		{
			arg2.doFilter(request,response);
		}
	}	


	public void init(FilterConfig arg0) throws ServletException 
	{



	}

}
