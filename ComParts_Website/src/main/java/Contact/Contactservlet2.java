package Contact;

import java.io.IOException;
import java.util.List;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/Contactservlet2")
public class Contactservlet2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
   

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("fid");
		String name = request.getParameter("fullname");
		String email = request.getParameter("email");
		String feedback = request.getParameter("msg");
		
		boolean isTrue ;
		
		isTrue = ContactUsDbUtil.updateFeedback(id,name, email, feedback);
		
		if(isTrue == true) {
			
			List<Feedback> feedbackDetails = ContactUsDbUtil.getById(id);
			request.setAttribute("feedbackdetails", feedbackDetails);
			RequestDispatcher dis = request.getRequestDispatcher("FeedbackDisplay.jsp");
			dis.forward(request, response);
		}
		else {
			RequestDispatcher dis2 = request.getRequestDispatcher("unsuccess.jsp");
			dis2.forward(request, response);
		}
		

		
	}
}
