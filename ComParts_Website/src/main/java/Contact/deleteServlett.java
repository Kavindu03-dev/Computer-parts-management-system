package Contact;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/DeleteServelett")
public class deleteServlett extends HttpServlet {
	private static final long serialVersionUID = 1L;
     
	


		protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			
			String idStr = request.getParameter("cus.id");
	        boolean isTrue;
	        
	        customerDButil dbUtil = new customerDButil(); // Create instance of customerDButil

	        try {
	            int id = Integer.parseInt(idStr); // Convert String to int
	            isTrue = dbUtil.deleteCustomer(id); // Use instance to delete customer
	            
	            if (isTrue) {
	                RequestDispatcher dis = request.getRequestDispatcher("Succesfuldelete.jsp");
	                dis.forward(request, response);
	            } else {
	                List<customer> cusDetails = dbUtil.getCustomerDetails(id); // Use instance to get customer details
	                request.setAttribute("details", cusDetails);
	                
	                RequestDispatcher dis = request.getRequestDispatcher("useraccount.jsp");
	                dis.forward(request, response);
	            }
	        } catch (NumberFormatException e) {
	            // Handle the case where ID is not a valid number
	            e.printStackTrace();
	            // Redirect or forward to an error page
	        }

	}

}
