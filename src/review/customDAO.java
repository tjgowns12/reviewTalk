package review;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class customDAO {
	private String url="jdbc:oracle:thin:@192.168.0.33:1521:xe";
	private String user="java",pwd="1234";
	private Connection con;
	private PreparedStatement ps;
	private ResultSet rs;
	
	public customDAO() {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
		} catch (ClassNotFoundException e) {e.printStackTrace();}
		
	}
	public ArrayList<customDTO> list(int start) {
		String sql="select B.* from(select rownum rn,A.* from(select * from customer order by savedate desc)A)B where rn between ? and ?";
		
		ArrayList<customDTO> list=new ArrayList<customDTO>();
		
		try {
			if(start==0)start=1;
			con=DriverManager.getConnection(url,user,pwd);
			ps=con.prepareStatement(sql);
			ps.setInt(1, (start - 1) * 3 + 1);
			ps.setInt(2,  3 * start);
			rs=ps.executeQuery();
			while(rs.next()) {
				customDTO cu =new customDTO();
				cu.setContent(rs.getString("content"));
				cu.setTitle(rs.getString("title"));
				cu.setWriter(rs.getString("writer"));
				cu.setCustomNum(rs.getInt("customNum"));
				cu.setSavedate(rs.getString("savedate"));				
				list.add(cu);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}return list;
	}
	public void write_save(String writer,String content,String title) {
		String sql="insert into customer(customNum,writer,title,content)"+
				"values(customer_seq.nextval,?,?,?)";
		
		try {
			con=DriverManager.getConnection(url,user,pwd);
			ps=con.prepareStatement(sql);
			ps.setString(1, writer);
			ps.setString(2, title);
			ps.setString(3, content);
			ps.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}
	public int getTotalPage() {
		String sql="select count(*) from customer";
		int totPage=0;
		try {
			con=DriverManager.getConnection(url,user,pwd);
			ps=con.prepareStatement(sql);
			rs=ps.executeQuery();
			if(rs.next()) totPage=rs.getInt(1);
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		if(totPage%3==0) {
			totPage=totPage/3;
		}else if(totPage%3>0) {
			totPage=totPage/3;
			totPage+=1;
		}
		return totPage;

	}
	
	
	
	
	
	
}
