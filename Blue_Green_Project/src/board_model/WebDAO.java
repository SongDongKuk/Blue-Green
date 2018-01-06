package board_model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;


public class WebDAO {
	private Connection conn;
	private PreparedStatement pst;
	private ResultSet rs;
	private int cnt;
	
public void getConnection() throws Exception {
	String url = "jdbc:oracle:thin:@127.1.0.0:1521:xe";
	String dbid = "system";
	String dbpw = "1234";
	
	Class.forName("oracle.jdbc.driver.OracleDriver");
	conn = DriverManager.getConnection(url, dbid, dbpw);
	
}
public void close() throws SQLException {
	if(rs != null) rs.close();
	if(pst != null) pst.close();
	if(conn != null) conn.close();

}
public int insert(String name, String title, String contents) throws Exception {
	getConnection();

	pst = conn.prepareStatement("insert into notice_board values(num.nextval,?,?,?,sysdate,0)");
	pst.setString(1, title);
	pst.setString(2, name);
	pst.setString(3, contents);

	
	cnt = pst.executeUpdate();
	
	close();
	
	return cnt;
}
public ArrayList<NoticeDTO> selectAll() throws Exception {
	getConnection();
	ArrayList<NoticeDTO> temp = new ArrayList<>();
	
	pst = conn.prepareStatement("select * from notice_board");
	rs = pst.executeQuery();
	
	while(rs.next()) {
		
		temp.add(new NoticeDTO(rs.getInt(1), 
				rs.getString(2), 
				rs.getString(3), 
				rs.getString(4), 
				rs.getString(5), 
				rs.getInt(6)));
	}
	close();
	return temp;
}
public NoticeDTO selectOne(String code) throws Exception {
	getConnection();
	NoticeDTO dto = null;
	pst = conn.prepareStatement("select * from notice_board where num=?");
	pst.setString(1, code);
	
	rs = pst.executeQuery();
	if(rs.next()) {
		dto = new NoticeDTO(rs.getInt(1), 
				rs.getString(2), 
				rs.getString(3), 
				rs.getString(4), 
				rs.getString(5), 
				rs.getInt(6));
	}
	close();
	return dto;
}
public int countHits(String code) throws Exception {
	getConnection();
	pst = conn.prepareStatement("update notice_board set hits=hits+1 where num=?");
	pst.setString(1, code);
	
	cnt = pst.executeUpdate();
	
	close();
	return cnt;
}
public int delectBoard(int num) throws Exception {
	getConnection();
	pst = conn.prepareStatement("delete notice_board where num =?");
	pst.setInt(1, num);
	cnt = pst.executeUpdate();
	close();
	return cnt;
}
public int updateBoard(String title, String contents, int num) throws Exception {
	getConnection();
	pst = conn.prepareStatement("update notice_board set title=? contents=? where num=?");
	pst.setString(1, title);
	pst.setString(2, contents);
	pst.setInt(3, num);
	
	cnt = pst.executeUpdate();
	close();
	return cnt;
}
	
	
	
	
	
}
