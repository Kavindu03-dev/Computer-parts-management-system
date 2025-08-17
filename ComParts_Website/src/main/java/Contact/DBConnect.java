package Contact;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

public class DBConnect {
	
	private static String url = "jdbc:mysql://localhost:3306/parts";
	private static String user = "root";
	private static String pass = "1234";
	private static Connection con;
	
	public static Connection getConnection() {
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			
			con = DriverManager.getConnection(url,user,pass);
			
			Statement stmt = con.createStatement();
		}
		
		catch(Exception e){
			System.out.println("Database connection not success!!");
		}
		
		
		
		return con;
	}
}
