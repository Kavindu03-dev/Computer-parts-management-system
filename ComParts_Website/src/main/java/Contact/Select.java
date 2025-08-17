package Contact;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class Select {
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;

public static List<Feedback> getFeedback(String email){
		
		ArrayList<Feedback> feedback = new ArrayList<>();
		
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			
			String sql = "select * from feedback_details where email='"+email+"'";
			
			ResultSet rs = stmt.executeQuery(sql);
			
			if(rs.next()) {
				int id = rs.getInt(1);
				String Name = rs.getString(2);
				String Email = rs.getString(3);
				String Feedback_cont = rs.getString(4);
				
				feedback.add(new Feedback(id,Name,Email,Feedback_cont)); 
			}
			
					
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		
		
		return feedback;
		
	}
}
