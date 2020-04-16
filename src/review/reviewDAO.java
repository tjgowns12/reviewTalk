package review;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class reviewDAO {

	private String url = "jdbc:oracle:thin:@localhost:1521:xe";
	private String user = "java", pwd="1234";
	private Connection con;
	private PreparedStatement ps;
	private ResultSet rs;
	public reviewDAO() {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
		} catch (ClassNotFoundException e) {e.printStackTrace();}
	}
	
	public void insert(reviewDTO dto) {
		String sql = "insert into review(id, name, image, content) values(?, ?, ?, ?)";
		try {
			con = DriverManager.getConnection(url,user,pwd);
			ps = con.prepareStatement(sql);
			ps.setInt(1, dto.getId());
			ps.setString(2, dto.getName());
			ps.setString(3, dto.getImage());
			ps.setString(4, dto.getContent());
			ps.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public void viewRealtime() {
		String sql = "select * from review";
		try {
			con = DriverManager.getConnection(url,user,pwd);
			ps = con.prepareStatement(sql);
			rs = ps.executeQuery();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	
}
