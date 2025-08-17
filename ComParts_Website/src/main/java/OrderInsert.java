

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

import Contact.Order;
import Contact.OrderDBUtil;

@WebServlet("/OrderInsert")
public class OrderInsert extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

		protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		    
			String name = request.getParameter("name");
			String product = request.getParameter("product");
			String product_id = request.getParameter("product_id");
			String price = request.getParameter("price"); 
			String address = request.getParameter("address");
			String quantity = request.getParameter("quantity");

			
			
			boolean isTrue;
			isTrue=OrderDBUtil.insertOrder(name,product,product_id,price,address,quantity);
			
			if(isTrue==true) {
				
				List<Order> OrdDetails=OrderDBUtil.getOrderDetailsByLastInserted();
				request.setAttribute("OrdDetails",OrdDetails);
				RequestDispatcher dis=request.getRequestDispatcher("Bill.jsp");
				dis.forward(request, response);
				
			}else {
				RequestDispatcher dis2=request.getRequestDispatcher("unsuccess.jsp");
				dis2.forward(request, response);
			}
			

	}

}
