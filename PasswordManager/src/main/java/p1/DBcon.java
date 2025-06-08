package p1;
import java.sql.*;
public class DBcon {
		
	public static Connection con;
	public static Statement st;
	public static int currentid;
	public static void connect()
	{
		try
		{
			Class.forName("com.mysql.cj.jdbc.Driver");
			 con=DriverManager.getConnection("jdbc:mysql://localhost:3306/password","root","tiger");
			st=con.createStatement();
		}
		catch(Exception e)
		{
			
		}
	}

}
