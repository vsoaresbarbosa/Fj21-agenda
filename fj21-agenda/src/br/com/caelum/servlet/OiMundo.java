package br.com.caelum.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet ("/oi")
public class OiMundo extends HttpServlet {
	@Override
	protected void service(HttpServletRequest arg0, HttpServletResponse arg1) throws ServletException, IOException {
		PrintWriter out = arg1.getWriter();
		
		System.out.println("service");
		
		out.println("<html>");
		out.println("<head>");
		out.println("<title> Primeira servlet </title>");
		out.println("</head>");
		out.println("<body>");
		out.println("<h1> Oi Mundo servlet </h1>");
		out.println("</body>");
		out.println("</html>");
	}
	
	@Override
	public void init() throws ServletException {
		System.out.println("init");
		super.init();
	}
	
	@Override
	public void destroy() {
		System.out.println("Destroy");
		super.destroy();
	}
}
