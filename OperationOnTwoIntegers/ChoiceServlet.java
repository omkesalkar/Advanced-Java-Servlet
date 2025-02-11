package OperationOnTwoNumbers;

import java.io.*;

import jakarta.servlet.GenericServlet;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.ServletRequest;
import jakarta.servlet.ServletResponse;
import jakarta.servlet.annotation.WebServlet;

@SuppressWarnings("serial")
@WebServlet("/choice")
public class ChoiceServlet extends GenericServlet
{

	@Override
	public void service(ServletRequest req, ServletResponse res) throws ServletException, IOException 
	{
		String sb = req.getParameter("sb");
		
		if(sb.equals("Add"))
		{
			RequestDispatcher rd = req.getRequestDispatcher("add");
			rd.forward(req, res);
		}
		else if(sb.equals("Avg"))
		{
			RequestDispatcher rd = req.getRequestDispatcher("avg");
			rd.forward(req, res);
		}
		
	}

}
