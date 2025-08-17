package Contact;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBconnection {
	
	private static String url = "jdbc:mysql://localhost:3306/parts";
    private static String user = "root";
    private static String pword = "root";
    private static Connection con;

    //Private constructor to prevent making objects
    protected DBconnection() {}

   
    public static Connection getConnection() {
        if (con == null) {
            try {
                Class.forName("com.mysql.jdbc.Driver");
                con = DriverManager.getConnection(url, user, pword);
            } catch (ClassNotFoundException e) {
                System.out.println("Database driver not found: " + e.getMessage());
            } catch (SQLException e) {
                System.out.println("Failed to connect to the database: " + e.getMessage());
            } catch (Exception e) {
                System.out.println("Unexpected error occurred: " + e.getMessage());
            }
        }
        return con; 
    }

    
    public static void closeConnection() {
        if (con != null) {
            try {
                con.close(); 
                con = null;
            } catch (SQLException e) {
                System.out.println("Failed to close the database connection: " + e.getMessage());
            }
        }
    }

}
