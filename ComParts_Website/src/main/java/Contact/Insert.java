package Contact;



import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

import Contact.customer;
import Contact.customerDButil;

@WebServlet("/Insert")
public class Insert extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
		protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	        // Retrieve parameters 
	        String name = request.getParameter("Name");
	        String email = request.getParameter("Email");
	        String username = request.getParameter("Username");
	        String password = request.getParameter("Password");
	        
	        //Create a new customer object using the retrieved parameters
	        customer newCustomer = new customer(0, name, email, password, username); // Pass 0 for id

	        
	        //Create an object of customerDButil
	        customerDButil dbUtil = new customerDButil(); 
	        
	        //Call the insertCustomer method with the new customer object
	        boolean isSuccess = dbUtil.insertCustomer(newCustomer);
	        
	        if (isSuccess) {
	            RequestDispatcher dis = request.getRequestDispatcher("Succesfulinsert.jsp");
	            dis.forward(request, response);
	        } else {
	            RequestDispatcher dis2 = request.getRequestDispatcher("Unsuccess.jsp");
	            dis2.forward(request, response);
	        }

	}

}
