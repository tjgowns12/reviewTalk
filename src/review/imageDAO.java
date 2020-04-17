package review;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class imageDAO {
	private String url = "jdbc:oracle:thin:@localhost:1521:xe";
	private String user = "java", pwd="1234";
	private Connection con;
	private PreparedStatement ps;
	private ResultSet rs;
	public imageDAO() {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
		} catch (ClassNotFoundException e) {e.printStackTrace();}
	}
	
	
	
	
	public void upload(String fileName, String fileRealName) {
		String sql = "insert into file values(?,?)";
		try {
			con = DriverManager.getConnection(url,user,pwd);
			ps = con.prepareStatement(sql);
			ps.setString(1, fileName);
			ps.setString(2, fileRealName);
			ps.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
