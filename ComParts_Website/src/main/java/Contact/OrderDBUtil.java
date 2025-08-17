package Contact;

import java.sql.Connection;
import java.sql.Statement;
import java.sql.ResultSet;
import java.sql.Connection;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;





public class OrderDBUtil {


	private static Connection con=null;
	private static Statement stmt=null;
	private static ResultSet rs=null;
	
	
	public static boolean insertOrder(String name,String product,String product_id,String price,String address,String quantity) {
		
		boolean isSuccess=false;
		
		try {
			con=DBConnect.getConnection();
			stmt=con.createStatement();
			String sql="insert into orders values(0,'"+name+"','"+product+"','"+product_id+"','"+price+"','"+address+"','"+quantity+"')";
			int rs=stmt.executeUpdate(sql);
			
			if(rs>0) {
				isSuccess=true;
			}else {
				isSuccess=false;
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		
		return isSuccess;
		
	}
	
	public static List<Order> getOrderDetailsByLastInserted() {
	    List<Order> orders = new ArrayList<>();
	    Connection con = null;
	    Statement stmt = null;
	    ResultSet rs = null;

	    try {
	        con = DBConnect.getConnection();
	        stmt = con.createStatement();
	        String sql = "SELECT * FROM orders ORDER BY order_id DESC LIMIT 1"; // Get the last inserted order
	        rs = stmt.executeQuery(sql);

	        while (rs.next()) {
	            int orderId = rs.getInt(1);
	            String name = rs.getString(2);
	            String product = rs.getString(3);
	            String product_id = rs.getString(4);
	            String price = rs.getString(5);
	            String address = rs.getString(6);
	            String quantity = rs.getString(7);
	            
	            Order o = new Order(orderId, name, product, product_id, price, address, quantity);
	            orders.add(o);
	        }
	    } catch (Exception e) {
	        e.printStackTrace();
	    } finally {
	       
	        try {
	            if (rs != null) rs.close();
	            if (stmt != null) stmt.close();
	            if (con != null) con.close();
	        } catch (Exception e) {
	            e.printStackTrace();
	        }
	    }
	    return orders;
	}
	
	 public static boolean deleteOrder(int order_id) {
	        boolean isSuccess = false;
	        Connection con = null;
	        Statement stmt = null;
	        

	        try {
	           
	           
	            con = DBConnect.getConnection();
	           
	            String sql = "DELETE FROM orders WHERE order_id=" + order_id;
	            
	            stmt = con.createStatement();
	            
	            
	            int rs = stmt.executeUpdate(sql);

	            if (rs > 0) {
	                isSuccess = true;
	            }

	        } catch (Exception e) {
	            e.printStackTrace();
	        } finally {
	            try {
	                if (stmt != null) stmt.close();
	                if (con != null) con.close();
	            } catch (Exception e) {
	                e.printStackTrace();
	            }
	        }

	        return isSuccess;
	    }
	 
	 public static boolean updateOrder(String order_id,String name, String product, String product_id, String price, String address, String quantity) {
		    boolean isSuccess = false;

		    try {
		        
		        con = DBConnect.getConnection();
		        stmt = con.createStatement();

		        
		        String sql = "UPDATE orders SET name = '" + name + "', product = '" + product + "', product_id = " + product_id + 
	                     ", price = " + price + ", address = '" + address + "', quantity = '"+ quantity + "'"
	                     +" WHERE order_id ='"+order_id+"'" ;
		        int rs = stmt.executeUpdate(sql);

		        
		        if (rs > 0) {
		            isSuccess = true;
		        } else {
		            isSuccess = false;
		        }
		    } catch (Exception e) {
		        e.printStackTrace();
		    }

		    return isSuccess;
		}

	 

		    
		    public static List<Order> getOrderDetails(int order_id) {
		        List<Order> orderList = new ArrayList<>();
		        Connection con = null;
		        Statement stmt = null;
		        ResultSet rs = null;

		        try {
		            // Get a connection
		            con = DBConnect.getConnection();
		            stmt = con.createStatement();

		            // SQL query to fetch order details by order_id
		            String sql = "SELECT * FROM orders WHERE order_id = " + order_id;
		            rs = stmt.executeQuery(sql);

		            // Process the result set
		            while (rs.next()) {
		                int id = rs.getInt("order_id");
		                String name = rs.getString("name");
		                String product = rs.getString("product");
		                String product_id = rs.getString("product_id");
		                String price = rs.getString("price");
		                String address = rs.getString("address");
		                String quantity = rs.getString("quantity");

		                // Create an Order object and add it to the list
		                Order order = new Order(id, name, product, product_id, price, address, quantity);
		                orderList.add(order);
		            }

		        } catch (Exception e) {
		            e.printStackTrace();
		        } finally {
		            // Close the connection, statement, and result set
		            if (rs != null) {
		                try { rs.close(); } catch (Exception e) { e.printStackTrace(); }
		            }
		            if (stmt != null) {
		                try { stmt.close(); } catch (Exception e) { e.printStackTrace(); }
		            }
		            if (con != null) {
		                try { con.close(); } catch (Exception e) { e.printStackTrace(); }
		            }
	        }

		        return orderList;
		    }

		    public static List<Order> getById(String order_Id) {
		        int convertedID = Integer.parseInt(order_Id);
		        
		        // Create a list to hold the Order objects
		        ArrayList<Order> orderList = new ArrayList<>();
		        
		        try {
		            // Establish the database connection
		            con = DBConnect.getConnection();
		            stmt = con.createStatement();
		            
		            // Correct the SQL query with proper syntax
		            String sql = "SELECT * FROM orders WHERE order_id = " + convertedID;
		            
		            // Execute the query
		            rs = stmt.executeQuery(sql);
		            
		            // Process the result set
		            while (rs.next()) {
		                int order_id = rs.getInt(1);
		                String name = rs.getString(2);
		                String product = rs.getString(3);
		                String product_id = rs.getString(4);
		                String price = rs.getString(5);
		                String address = rs.getString(6);
		                String quantity = rs.getString(7);
		                
		                // Create an Order object and add it to the list
		                Order ordr = new Order(order_id, name, product, product_id, price, address, quantity);
		                orderList.add(ordr);
		            }
		        } catch (Exception e) {
		            e.printStackTrace();
		        } finally {
		            // Close the database connections here (optional for better resource management)
		        }
		        
		        // Return the list of orders
		        return orderList;
		    }
		    
		    
		    public static List<Order> getAllOrder(int order_id) {
		        List<Order> orderList = new ArrayList<>();
		        Connection con = null;
		        Statement stmt = null;
		        ResultSet rs = null;

		        try {
		            // Get a connection
		            con = DBConnect.getConnection();
		            stmt = con.createStatement();

		            // SQL query to fetch order details by order_id
		            String sql = "SELECT * FROM orders WHERE order_id = " + order_id;
		            rs = stmt.executeQuery(sql);

		            // Process the result set
		            while (rs.next()) {
		                int id = rs.getInt("order_id");
		                String name = rs.getString("name");
		                String product = rs.getString("product");
		                String product_id = rs.getString("product_id");
		                String price = rs.getString("price");
		                String address = rs.getString("address");
		                String quantity = rs.getString("quantity");

		                // Create an Order object and add it to the list
		                Order order = new Order(id, name, product, product_id, price, address, quantity);
		                orderList.add(order);
		            }

		        } catch (Exception e) {
		            e.printStackTrace();
		        } finally {
		            // Close the connection, statement, and result set
		            if (rs != null) {
		                try { rs.close(); } catch (Exception e) { e.printStackTrace(); }
		            }
		            if (stmt != null) {
		                try { stmt.close(); } catch (Exception e) { e.printStackTrace(); }
		            }
		            if (con != null) {
		                try { con.close(); } catch (Exception e) { e.printStackTrace(); }
		            }
	        }

		        return orderList;
		    }


}
