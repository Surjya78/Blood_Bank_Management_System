package blood;

import java.sql.*;

public class ConnectionProviderClass {

	public static Connection getCon() {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/bloodbank", "root", "hapi2001@");
			return con;
		} catch (Exception e) {
			// TODO: handle exception
			System.out.print(e);
			return null;
			
		}
	}
}
