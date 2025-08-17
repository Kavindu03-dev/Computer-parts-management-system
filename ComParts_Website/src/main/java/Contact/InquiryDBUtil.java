package Contact;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class InquiryDBUtil {

	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;

	public static boolean insertInquiry(String name,String phone,String product,String inquiry){
		
		boolean isSuccess = false;
		
	
		
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			
			String sql = "insert into inquiry values(0,'"+name+"','"+phone+"','"+product+"','"+inquiry+"')";
			
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
	
	public static List<Inquiry> getInquiry(String phone){
		
		ArrayList<Inquiry> inquiry = new ArrayList<>();
		
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			
			String sql = "select * from inquiry where phone='"+phone+"'";
			
			ResultSet rs = stmt.executeQuery(sql);
			
			if(rs.next()) {
				int id = rs.getInt(1);
				String Name = rs.getString(2);
				String Phone = rs.getString(3);
				String Product = rs.getString(4);
				String Inquiry = rs.getString(5);
				
				inquiry.add(new Inquiry(id,Name,Phone,Product,Inquiry)); 
			}
			
					
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		
		
		return inquiry;
		
	}
	
	public static List<Inquiry> getById(String id){
		
		int convertId = Integer.parseInt(id);
		
		System.out.println(convertId);
		ArrayList<Inquiry> inquiry = new ArrayList<>();
		
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			
			String sql = "select * from inquiry where fid='"+convertId+"'";
			
			ResultSet rs = stmt.executeQuery(sql);
			
			if(rs.next()) {
				int id1 = rs.getInt(1);
				String Name = rs.getString(2);
				String Phone = rs.getString(3);
				String Product = rs.getString(4);
				String Inquiry = rs.getString(5);
				
				inquiry.add(new Inquiry(id1,Name,Phone,Product,Inquiry)); 
			}
		
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		
		
		return inquiry;
	}
	
public static boolean updateInquiry(String id,String name,String phone,String product,String inquiry){
		
		
		boolean isSuccess = false;
		
		try {
			con = DBConnect.getConnection();
			stmt = con.createStatement();
			
			
			
			String sql1 = "UPDATE inquiry SET name='"+name+"',phone='"+phone+"',product='"+product+"',inquiry='"+inquiry+"' WHERE id='"+id+"'";
			
			
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

public static boolean deleteInquiry(String id) {
	
	boolean isSuccess = false;
	int convertId = Integer.parseInt(id);
	
	try {
		con = DBConnect.getConnection();
		stmt = con.createStatement();
		
		String sql = "delete from inquiry where id='"+convertId+"'";
		
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
