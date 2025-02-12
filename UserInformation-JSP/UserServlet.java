package UserInfo;

import java.io.*;

import jakarta.servlet.GenericServlet;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.ServletRequest;
import jakarta.servlet.ServletResponse;
import jakarta.servlet.annotation.WebServlet;

@SuppressWarnings("serial")
@WebServlet("/user")	//HTML form action name
public class UserServlet extends GenericServlet 
{
	@Override
	public void service(ServletRequest req, ServletResponse res) throws ServletException, IOException
	{
		RequestDispatcher rd = req.getRequestDispatcher("Display.jsp");
		rd.forward(req, res);
	}
	
}
