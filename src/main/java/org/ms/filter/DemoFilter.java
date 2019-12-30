package org.ms.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

public class DemoFilter implements Filter {

	@Override
	public void init(FilterConfig filterConfig) throws ServletException {

		System.out.println("init() -> studentname " + filterConfig.getInitParameter("studentName"));
	}

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {

		System.out.println("DemoFilter.dofilter().pre");
        System.out.println("Iam testing the filter performance");
        System.out.println("Iam testing the DemoFilter performance");
		chain.doFilter(request, response);
		System.out.println("DemoFilter.doFilter().post");

	}

	@Override
	public void destroy() {
		System.out.println("destroy()");
	}
}
