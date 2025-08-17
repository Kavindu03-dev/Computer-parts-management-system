	package Contact;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;


@WebServlet("/deleteInq")
public class deleteInq extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("id");
		
		boolean isTrue ;
		
		isTrue = InquiryDBUtil.deleteInquiry(id);
		
		if(isTrue == true) {
			
			List<Inquiry> inquiryDetails = InquiryDBUtil.getById(id);
			request.setAttribute("inquirydetails", inquiryDetails);
					
			RequestDispatcher dis = request.getRequestDispatcher("DeletedI.jsp");
			dis.forward(request, response);
		}
		else {
			RequestDispatcher dis2 = request.getRequestDispatcher("unsuccess.jsp");
			dis2.forward(request, response);
		}
	}

}
