package Contact;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/DeleteOrderServlet")
public class DeleteOrderServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int order_id = Integer.parseInt(request.getParameter("order_id"));

	      
        boolean isDeleted = OrderDBUtil.deleteOrder(order_id);

        if (isDeleted) {
            
            RequestDispatcher dis = request.getRequestDispatcher("delete_success.jsp");
            dis.forward(request, response);
        } else {
           
            RequestDispatcher dis = request.getRequestDispatcher("delete_failure.jsp");
            dis.forward(request, response);
        }

	}

}
