package Contact;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/ContactServlet")
public class ContactServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("fid");
		String name = request.getParameter("fullname");
		String email = request.getParameter("email");
		String feedback = request.getParameter("msg");
		
		
		
		boolean isTrue ;
		
		isTrue = ContactUsDbUtil.insertFeedback(name, email, feedback);
		
		
		if(isTrue == true) {
			
			List<Feedback> feedbackDetails = ContactUsDbUtil.getFeedback(email);
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
