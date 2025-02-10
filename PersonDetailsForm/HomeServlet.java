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
public class HomeServlet extends GenericServlet
{

	@Override
	public void service(ServletRequest req, ServletResponse res) throws ServletException, IOException 
	{

		PrintWriter pw = res.getWriter();
		res.setContentType("text/html");
		
		RequestDispatcher rd = req.getRequestDispatcher("home.html");
		rd.include(req, res);
		try
		{
			String name = req.getParameter("name");
			int age = Integer.parseInt(req.getParameter("age"));
			long mobileNo = Long.parseLong(req.getParameter("mobileNo"));
			String gender = req.getParameter("gender");
			String[] hobbies = req.getParameterValues("hobbies");
			String hobbieList = (hobbies != null) ? String.join(", ", hobbies) : "none" ;
			
			pw.println("<html><body style='font-family: Arial, sans-serif; '>");
			pw.println("<h2><u>Person Information</u></h2>");
			pw.println("<p><strong>Name:- </strong>" + name + "</p>");
			pw.println("<p><strong>Age:- </strong>" + age +"</p>");
			pw.println("<p><strong>Mobile No:- </strong>" + mobileNo +"</p>");
			pw.println("<p><strong>Gender:- </strong>" + gender +"</p>");
			pw.println("<p><strong>Hobbies:- </strong>" + hobbieList +"</p>");
			pw.println("</body></html>");
			
		}
		catch (Exception e) 
		{
			e.printStackTrace();
			pw.println("<p style='color:red;'>Error: Invalid input. Please check your details.</p>");
		}
	}

}
