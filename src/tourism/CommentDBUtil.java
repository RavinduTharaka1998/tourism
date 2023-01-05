package tourism;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.util.ArrayList;



public class CommentDBUtil {
	private static 	 PreparedStatement st = null;
	
	//validate function
	public static void validate(){
		
		ArrayList<Feedback> feed = new ArrayList<>();
		
		//Creating Database Connection
		String url = "jdbc:mysql://localhost:3306/comments";
		String user = "root";
		String password = "ChamathkaSandaminiSamarasinghe200062301778";
		
		//Validating
		
		try {			//so we can display an error if occured, without actually terminating the program
			Class.forName("com.mysql.jdbc.Driver");			//Class: an inbuild java class so we can do stuff with interfaces
			
			
			//Connection to call database
			Connection newCon = DriverManager.getConnection(url , user , password);
			
			
			
			String sql = "insert into Customer_comment(ID,Username,Name,email,Contry,Comment) values(?,?,?,?,?,?);";
		
			st = newCon.prepareStatement(sql);
			
//			st.setInt(0, feed.get(0).getId());
			st.setString(0, feed.get(0).getUserName());
			st.setString(1, feed.get(0).getName());
			st.setString(2, feed.get(0).getEmail());
			st.setString(3, feed.get(0).getCountry());
			st.setString(4, feed.get(0).getComment());
			
			//int i = st.executeUpdate();
			
		}
		
		catch(Exception e){
			e.printStackTrace();
		}
		
//		return feed;		//returning the array list
	
	}
}