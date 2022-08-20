package member.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import member.vo.MemberVO;

public class MemberDAO {
	Connection conn;
	PreparedStatement pstmt;

	public MemberDAO() {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","test", "1111");
		}catch(Exception e) {
			System.out.println("database connection error");
			e.printStackTrace();
		}
	}
	
	public MemberVO findOne(int idx){
		String sql=null;
		ResultSet rs=null;
		MemberVO m=null;
		
		try {
			sql="select * from member where idx=?";
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1, idx);
			rs=pstmt.executeQuery();
			
			if(rs.next()) {
				m=new MemberVO(rs.getInt("idx"),rs.getString("id"),rs.getString("password"));
			}
		}catch(Exception e) {
			System.out.println("findOne error");
			e.printStackTrace();
		}
		return m;
	}
	
}
