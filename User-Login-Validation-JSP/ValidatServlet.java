package ValidateServlateLogin;

import java.io.*;

import jakarta.servlet.GenericServlet;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.ServletRequest;
import jakarta.servlet.ServletResponse;
import jakarta.servlet.annotation.WebServlet;

@SuppressWarnings("serial")
@WebServlet("/login")
public class ValidateServalte extends GenericServlet
{

	@Override
	public void service(ServletRequest req, ServletResponse res) throws ServletException, IOException
	{
		PrintWriter pw = res.getWriter();
		res.setContentType("text/html");
		
		String name = "om";
		String password = "om";
		
		String lname = req.getParameter("Name");
		String lpassword = req.getParameter("Password");
		
		if(lname.equals(name) && lpassword.equals(password))   //It's just only for testing purpose because in this project i don't connect login data to database.
		{
			RequestDispatcher rd = req.getRequestDispatcher("Welcome.jsp");
			rd.forward(req, res);
		}
		else
		{
			RequestDispatcher rd = req.getRequestDispatcher("Index.html");
			rd.include(req, res);	
			pw.println("<h2 style='color: red;'>Sorry... Username or Password are Invalid !!!</h2>");
		}
	}

}
