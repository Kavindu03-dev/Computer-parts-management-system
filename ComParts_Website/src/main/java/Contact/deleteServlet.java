package Contact;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/deleteServlet")
public class deleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("fid");
		
		boolean isTrue ;
		
		isTrue = ContactUsDbUtil.deleteFeedback(id);
		
		if(isTrue == true) {
			
			List<Feedback> feedbackDetails = ContactUsDbUtil.getById(id);
			request.setAttribute("feedbackdetails", feedbackDetails);
			String alertm = "Feedback Deleted!";
			response.getWriter().println("<script>alert('"+alertm+"');</script>");
			RequestDispatcher dis = request.getRequestDispatcher("Deleted.jsp");
			dis.forward(request, response);
		}
		else {
			RequestDispatcher dis2 = request.getRequestDispatcher("unsuccess.jsp");
			dis2.forward(request, response);
		}
	}

}
