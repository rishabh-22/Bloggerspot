package jsp;

import java.sql.*;

public class MySQL {
	
	static Connection con = null;
	
	public static Connection getCon() {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			return DriverManager.getConnection("jdbc:mysql://localhost/main", "root", "root");
			} catch (Exception e){
				System.out.println(e);
			}
			return con;
		}
		
}
