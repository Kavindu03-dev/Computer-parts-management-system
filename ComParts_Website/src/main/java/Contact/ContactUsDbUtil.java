package Contact;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class ContactUsDbUtil {
	
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;

	public static boolean insertFeedback(String name,String email,String feedback){
		
		boolean isSuccess = false;
		
	
		
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			
			String sql = "insert into feedback_details values(0,'"+name+"','"+email+"','"+feedback+"')";
			
			int rs = stmt.executeUpdate(sql);
			
			if(rs>0) {
				isSuccess = true;
			}
			else {
				isSuccess = false;
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
		
		
	}
	
	public static List<Feedback> getById(String id){
		
		int convertId = Integer.parseInt(id);
		
		System.out.println(convertId);
		ArrayList<Feedback> feedback = new ArrayList<>();
		
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			
			String sql = "select * from feedback_details where fid='"+convertId+"'";
			
			ResultSet rs = stmt.executeQuery(sql);
			
			if(rs.next()) {
				int id1 = rs.getInt(1);
				String Name = rs.getString(2);
				String Email = rs.getString(3);
				String Feedback_cont = rs.getString(4);
				
				feedback.add(new Feedback(id1,Name,Email,Feedback_cont)); 
			}
		
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		
		
		return feedback;
	}
	
	
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
	
	public static boolean updateFeedback(String id,String name,String email,String feedback){
		
		
		boolean isSuccess = false;
		
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			
			
			
			String sql1 = "UPDATE feedback_details SET name='"+name+"',email='"+email+"',feedback='"+feedback+"' WHERE fid='"+id+"'";
			
			
			int rs = stmt.executeUpdate(sql1);
					
					
					if(rs>0) {
						isSuccess = true;
					}
					else {
						isSuccess = false;
					}		
			
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
		
		
	}
	
	
	public static boolean deleteFeedback(String id) {
		
		boolean isSuccess = false;
		int convertId = Integer.parseInt(id);
		
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			
			String sql = "delete from feedback_details where fid='"+convertId+"'";
			
			int rs = stmt.executeUpdate(sql);
			
			if(rs>0) {
				isSuccess = true;
			}
			else {
				isSuccess = false;
			}
		
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		
		
		return isSuccess;
		
	}
	
}
