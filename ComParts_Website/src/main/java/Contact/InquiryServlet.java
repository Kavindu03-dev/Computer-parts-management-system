package Contact;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/InquiryServlet")
public class InquiryServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
     
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		
			
			String id = request.getParameter("id");
			String name = request.getParameter("fullname");
			String phone = request.getParameter("phone");
			String product = request.getParameter("pname");
			String inquiry = request.getParameter("msg");
			
			
			
			boolean isTrue ;
			
			isTrue = InquiryDBUtil.insertInquiry(name,phone,product,inquiry);
			
			
			if(isTrue == true) {
				
				List<Inquiry> inquiryDetails = InquiryDBUtil.getInquiry(phone);
				request.setAttribute("inquirydetails", inquiryDetails);
				RequestDispatcher dis = request.getRequestDispatcher("InquiryDisplay.jsp");
				dis.forward(request, response);
			}
			else {
				RequestDispatcher dis2 = request.getRequestDispatcher("unsuccess.jsp");
				dis2.forward(request, response);
			}
			
	}

}
