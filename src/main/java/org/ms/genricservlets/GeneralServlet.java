package org.ms.genricservlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.GenericServlet;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

public class GeneralServlet extends GenericServlet {

	@Override
	public void service(ServletRequest req, ServletResponse res) throws ServletException, IOException {

		PrintWriter printWriter = res.getWriter();
		printWriter.print("<h1>studentName<h1>"  + getInitParameter("studentName"));
		
		
		
	}

}
