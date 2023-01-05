package tourism;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

public class tourism {
	
	public static int InsertMyPackage(String pname,String hname, String price, String cname, String phone,String non,String noa,String noc,String date,String charge) {
		int isSuccess = 0;
		// connect DB
		String url = "jdbc:mysql://localhost:3306/tourism";
		String user = "root";
		String pwd = "Rambo123";

		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection(url, user, pwd);

			Statement stmt = con.createStatement();
			String sql = "insert into mypackage values(0,'" + pname + "','" + hname + "','" + price + "','"
					+ cname + "','" + phone + "','" + non + "','" + noa + "','" + noc + "','" + date + "','" + charge + "')";

			int at = stmt.executeUpdate(sql);

			if (at > 0) {

				isSuccess = 1;
			} else if (at < 0) {

				isSuccess = 0;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return isSuccess;
	}
	
	public static int UpdateMyPackage(int id,String pname,String hname, String price, String cname, String phone,String non,String noa,String noc,String date,String charge) {
		
		int result = 0;
		
		String url = "jdbc:mysql://localhost:3306/tourism";
		String user = "root";
		String pwd = "Rambo123";
  
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection(url,user,pwd);
			
			Statement stmt = con.createStatement();	
			String sql = "update mypackage set pname = '"+pname+"',hname = '"+hname+"',price = '"+price+"',cname = '"+cname+"',phone = '"+phone+"',non = '"+non+"',noa = '"+noa+"',noc = '"+noc+"',date = '"+date+"',charge = '"+charge+"' where idmypackage = '"+id+"'";
			System.out.println("SQL Result: "+sql);
			int rs = stmt.executeUpdate(sql);
			System.out.println("SQL Result: "+rs);
			
			if(rs > 0) {
				result = 1;
			}
			else {
				result = 0;
			}
			
		
	}catch(Exception e){
		
		e.printStackTrace();
	}
		
		return result;
	}
	
	
	public static int DeleteMyPackage(int id) {
	    int result=0;
	    
	    String url = "jdbc:mysql://localhost:3306/tourism";
		String user = "root";
		String pwd = "Rambo123";

		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection(url, user, pwd);

			Statement stmt = con.createStatement();
			String sql = "delete from mypackage where idmypackage ='"+id+"'" ;

			int rn = stmt.executeUpdate(sql);
			if(rn>0)
			{
				result=1;
			}
			else
			{
				result=0;
			}
			
		
	}catch(Exception e)
		
	    {
		e.printStackTrace();
	    }
		
		return result;
	}


}
