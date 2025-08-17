package Contact;
import java.sql.Connection;
import java.sql.Statement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class customerDButil extends DBconnection implements CustomerDAO{

	private static Statement stmt = null; 
    private static ResultSet rs = null;

    public customerDButil() {
        super(); //Inheriting from the parent class
    }
    
    
    
    //Implement the validate method
  
    public List<customer> validate(String userName, String password) {
        ArrayList<customer> cus = new ArrayList<>();
        
        try {
            Connection con = DBconnection.getConnection();
            stmt = con.createStatement();
            String sql = "SELECT * FROM details WHERE username='" + userName + "' AND password='" + password + "'";
            rs = stmt.executeQuery(sql);
            
            if (rs.next()) {
                int id = rs.getInt(1);
                String name = rs.getString(2);
                String email = rs.getString(3);
                String passwordU = rs.getString(4);
                String usernameU = rs.getString(5);
                
                customer c1 = new customer(id, name, email, passwordU, usernameU);
                cus.add(c1);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        
        return cus;
    }

    //Implement the insertCustomer method
   
    public boolean insertCustomer(customer customer) {
        boolean isSuccess = false;
        try { 
            Connection con = DBconnection.getConnection();
            stmt = con.createStatement();
            String sql = "INSERT INTO details VALUES (0, '" + customer.getName() + "', '" + customer.getEmail() + "', '" + customer.getUsername() + "', '" + customer.getPassword() + "')";
            int rs = stmt.executeUpdate(sql);
            if (rs > 0) {
                isSuccess = true;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return isSuccess;
    }

    //Implement the updateCustomer method
    @Override
    public boolean updateCustomer(customer customer) {
        try { 
            Connection con = DBconnection.getConnection();
            stmt = con.createStatement();
            String sql = "UPDATE details SET name='" + customer.getName() + "', email='" + customer.getEmail() + "', password='" + customer.getPassword() + "', username='" + customer.getUsername() + "' WHERE id='" + customer.getId() + "'";
            int rs = stmt.executeUpdate(sql);
            return rs > 0;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }

    //Implement the deleteCustomer method
    @Override
    public boolean deleteCustomer(int id) {
        try {
            Connection con = DBconnection.getConnection();
            stmt = con.createStatement();
            String sql = "DELETE FROM details WHERE id='" + id + "'";
            int r = stmt.executeUpdate(sql);
            return r > 0;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }

    //Implement the getCustomerDetails method
    @Override
    public List<customer> getCustomerDetails(int id) {
        ArrayList<customer> cus = new ArrayList<>();
        try {
            Connection con = DBconnection.getConnection();
            stmt = con.createStatement();
            String sql = "SELECT * FROM details WHERE id='" + id + "'";
            rs = stmt.executeQuery(sql);
            
            while (rs.next()) {
                int customerId = rs.getInt(1);
                String name = rs.getString(2);
                String email = rs.getString(3);
                String password = rs.getString(4);
                String username = rs.getString(5);
                
                customer c = new customer(customerId, name, email, password, username);
                cus.add(c);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return cus;
    }

	
}
