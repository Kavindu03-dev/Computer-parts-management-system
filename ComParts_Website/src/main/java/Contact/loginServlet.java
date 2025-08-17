package Contact;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

@WebServlet("/loginServlet")
public class loginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
     
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		

    	PrintWriter out=response.getWriter();
    	response.setContentType("text/html");
    	
    	customerDButil dbUtil = new customerDButil();
    	
        String username = request.getParameter("uid");
        String password = request.getParameter("pass");
        String action = request.getParameter("action"); 

        
        try {
            //Validate the user credentials
            List<customer> cusDetails = dbUtil.validate(username, password);
            
            
            
            if (cusDetails != null && !cusDetails.isEmpty()) {
               
                request.setAttribute("Details", cusDetails);

                if ("useraccount".equals(action)) {
                     //Redirect to User Account page if "Submit" button was clicked
                    RequestDispatcher dis = request.getRequestDispatcher("useraccount.jsp");
                    dis.forward(request, response);
                } else if ("homepage".equals(action)) {
                    // Redirect to Home Page if "Login" button was clicked
                    RequestDispatcher dis = request.getRequestDispatcher("Dashboard.jsp");
                    dis.forward(request, response);
                }

            } else {
                out.println("<script type='text/javascript'>");
                out.println("alert('Username or Password is incorrect');");
                out.println("location= 'login.jsp';");
                out.println("</script>");
               
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

	}

}
