import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.GenericServlet;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.ServletRequest;
import jakarta.servlet.ServletResponse;
import jakarta.servlet.annotation.WebServlet;


@SuppressWarnings("serial")
@WebServlet("/form")

public class FormServlet extends GenericServlet
{

	@Override
	public void service(ServletRequest req, ServletResponse res) throws ServletException, IOException
	{
		PrintWriter pw = res.getWriter();
		res.setContentType("text/html");
		
		RequestDispatcher rd = req.getRequestDispatcher("input.html");
		rd.include(req, res);

		try 
		{
			int id = Integer.parseInt(req.getParameter("id"));
			String name = req.getParameter("name");
			String address = req.getParameter("address");
			long salary = Long.parseLong(req.getParameter("salary"));
			String gender = req.getParameter("gender");
			String profile = req.getParameter("profile");
			String[] hobbies = req.getParameterValues("hobbies");
			String hobbiesList = (hobbies != null) ? String.join(", ", hobbies) : "None";			
					
			pw.println("<html><body style='font-family: Arial, sans-serif; '>");
			pw.println("<h2>Employee Information</h2>");
			pw.println("<p><strong>Employee ID:</strong> " + id + "</p>");
			pw.println("<p><strong>Employee Name:</strong> " + name + "</p>");
			pw.println("<p><strong>Employee Address:</strong> " + address + "</p>");
			pw.println("<p><strong>Employee Salary:</strong> " + salary + "</p>");
			pw.println("<p><strong>Employee Gender:</strong> " + gender + "</p>");
			pw.println("<p><strong>Employee Profile:</strong> " + profile + "</p>");
			pw.println("<p><strong>Employee Hobbies:</strong> " + hobbiesList + "</p>");
			pw.println("</body></html>");

			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
	}
	
}
