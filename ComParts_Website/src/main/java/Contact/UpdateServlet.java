package Contact;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/UpdateServlet")
public class UpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	
		
		

	    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	        try {
	            // Get parameters
	            int id = Integer.parseInt(request.getParameter("cus.id")); // Convert to int
	            String name = request.getParameter("name");
	            String email = request.getParameter("email");
	            String password = request.getParameter("password");
	            String username = request.getParameter("username");

	            // Create a new customer object
	            customer updatedCustomer = new customer(id, name, email, password, username);

	            // Call the update method
	            customerDButil dbUtil = new customerDButil();
	            boolean isTrue = dbUtil.updateCustomer(updatedCustomer); // Pass the customer object

	            if (isTrue) {
	                List<customer> cusDetails = dbUtil.getCustomerDetails(id); // Get details using ID
	                request.setAttribute("Details", cusDetails);
	                RequestDispatcher dis = request.getRequestDispatcher("useraccount.jsp");
	                dis.forward(request, response);
	            } else {
	                RequestDispatcher dis = request.getRequestDispatcher("unsuccess.jsp");
	                dis.forward(request, response);
	            }
	        } catch (Exception e) {
	            e.printStackTrace(); // Log exception for debugging
	        }

	}

}
