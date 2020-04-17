package user;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class userDAO {

	
	private String url = "jdbc:oracle:thin:@localhost:1521:xe";
	private String user = "java", pwd="1234";
	private Connection con;
	private PreparedStatement ps;
	private ResultSet rs;
	public userDAO() {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
		} catch (ClassNotFoundException e) {e.printStackTrace();}
	}
	
	public void insert(userDTO users) {
		String sql ="insert into user_data values(?, ?, ?, ?, ?, ?, ?, ?)";
		
		try {
			con = DriverManager.getConnection(url,user,pwd);
			ps = con.prepareStatement(sql);
			ps.setString(1, users.getId());
			ps.setString(2, users.getPw());
			ps.setString(3, users.getName());
			ps.setString(4, users.getNick());
			ps.setString(5, users.getPhone());
			ps.setString(6, users.getBorn());
			ps.setString(7, users.getAddr());
			ps.setString(8, users.getGender());
			ps.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	public int loginChk(String id, String pw) {
		int check = 0;
		String sql = "select * from user_data where id=?";
		try {
			con = DriverManager.getConnection(url,user,pwd);
			ps = con.prepareStatement(sql);
			ps.setString(1, id);
			rs = ps.executeQuery();
			if(rs.next()) {
				String dbPw = rs.getString("pw");
				if(dbPw.equals(pw)) {
					check = 1;
				}else {
					check = 0;
				}
			}else {
				check =-1;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		};
		return check;
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
