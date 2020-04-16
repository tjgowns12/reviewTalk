package review;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class customDAO {
	private String url="jdbc:oracle:thin:@192.168.0.32:1521:xe";
	private String user="java",pwd="1234";
	private Connection con;
	private PreparedStatement ps;
	private ResultSet rs;
	
	public customDAO() {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
		} catch (ClassNotFoundException e) {e.printStackTrace();}
		
	}
}
