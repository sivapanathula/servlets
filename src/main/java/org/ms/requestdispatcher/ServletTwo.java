package org.ms.requestdispatcher;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ServletTwo extends HttpServlet {

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

		out.println("ServletTwo.doGet()-start");
	//	RequestDispatcher dispatcher = request.getRequestDispatcher("ServletOne");
		
		RequestDispatcher dispatcher=getServletContext().getNamedDispatcher("ServletOne");

		// dispatcher.include(request, response);
		dispatcher.forward(request, response);

		// out.println("ServletTwo.doGet()");
		out.println("ServletTwo.doGet()-end");
		System.out.println("ServletTwo.end");
		out.flush();
		out.close();
	}

}
