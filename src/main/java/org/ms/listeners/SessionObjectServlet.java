package org.ms.listeners;

import java.io.IOException;
import java.io.PrintWriter;
import java.net.http.HttpResponse;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.ws.rs.core.HttpHeaders;
import javax.ws.rs.core.Response.Status;

public class SessionObjectServlet extends HttpServlet {

	/**
	 * The doGet method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to get.
	 * 
	 * @param request  the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException      if an error occurred
	 */
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
//System.out.println("requestedSessionid " + request.getRequestedSessionId());
		HttpSession session = request.getSession(true);
		System.out.println("sessionId " + session.getId());
		//response.setHeader("STATUS", "200");
		//  System.out.println("session " + session);
		  
		//  if (session==null) { request.getSession(); }
		 
	//	session.setMaxInactiveInterval(60*1);
		//session.setMaxInactiveInterval(10);
		session.setMaxInactiveInterval(1*60);
		/*
		 * if (session.isNew()) { System.out.println("new"); } else {
		 * System.out.println("old"); }
		 */
		out.flush();
		out.close();
	}

}
