package Contact;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/Emailget")
public class Emailget extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
			String email = request.getParameter("email");
			
			
				List<Feedback> feedbackDetails = Select.getFeedback(email);
				request.setAttribute("feedbackdetails", feedbackDetails);
				RequestDispatcher dis = request.getRequestDispatcher("ufeedbackForm.jsp");
				dis.forward(request, response);

			
		
	}

}
