package smarthomepage.com.cop.bbs.service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import org.springframework.stereotype.Repository;
import smarthomepage.com.cop.bbs.GuestVO;
import smarthomepage.com.utl.sys.dbm.DBmanager;


@Repository
public class GuestDAO {
	private static GuestDAO instance;
	private Connection cn;
	private Statement st;
	private PreparedStatement pst;
	private ResultSet rs;
	private GuestDAO (){
		cn = DBmanager.getConnection();
	}
	public static GuestDAO getInstance(){
		if(instance == null){
			instance = new GuestDAO();
		}
		return instance;
	}

	
	public int insertGuest(GuestVO gvo){
		int result = 0;
		String sql = "insert into guest (sabun, name, title, nalja, pay)";
		sql +="\n values(guest_seq.nextval, ?, ?, sysdate, ?";
		try {
			pst = cn.prepareStatement(sql);
			pst.setString(1, gvo.getName());
			pst.setString(2, gvo.getTitle());
			pst.setInt(3, gvo.getPay());
			result = pst.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return result;
	}
	
	public List<GuestVO> getGuestList(){
		List<GuestVO> glist = new ArrayList<GuestVO>();
		try {
		/*String sql = "select sabun, name, title, nalja, pay ";
		sql += "\n from (select rownum as seq, g.* from guest g)";
		sql += "\n where seq between ? and ?";
		sql += "\n order by sabun desc";*/
			
			String	sql = "select sabun, name, title, nalja, pay";
				sql += "\n from (select rownum as seq, g.* from guest g)";
				sql += "\n where seq between ? and ?";
				sql += "\n order by sabun desc";
		
			
			pst = cn.prepareStatement(sql);
			rs = pst.executeQuery();
			while(rs.next()){
				GuestVO gvo = new GuestVO();
				gvo.setSabun(rs.getInt("sabun"));
				gvo.setName(rs.getString("name"));
				gvo.setTitle(rs.getString("title"));
				gvo.setNalja(rs.getDate("nalja"));
				gvo.setPay(rs.getInt("pay"));
				glist.add(gvo);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		System.out.println("DAO glist :" + glist);
		return glist;
	}
	
	public List<GuestVO> getGuestSearch(){
		List<GuestVO> glist = new ArrayList<GuestVO>();
		/*String sql = "select sabun, name, title, nalja, pay";
		sql += "\n from (select rownum as seq, g.* from guest g "
				+ "\n where ? like '%?%')";
		sql += "\n where seq between ? and ?";
		sql += "\n order by sabun desc";*/
		String sql = "select * from guest";
		try {
			pst = cn.prepareStatement(sql);
			/*pst.setString(1, command.getKeyField());
			pst.setString(2, command.getKeyword());
			pst.setInt(3, command.getStart());
			pst.setInt(4, command.getEnd());*/
			rs = pst.executeQuery();
			while(rs.next()){
				GuestVO gvo = new GuestVO();
				gvo.setNalja(rs.getDate("nalja"));
				gvo.setName(rs.getString("name"));
				gvo.setPay(rs.getInt("pay"));
				gvo.setSabun(rs.getInt("sabun"));
				gvo.setTitle(rs.getString("title"));
				glist.add(gvo);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return glist;
		
	}
	public GuestVO getOneGuestByID(){
		GuestVO gvo = new GuestVO();
		String sql = "select * from guest where sabun =" ;
		try {
			st = cn.createStatement();
			rs = st.executeQuery(sql);
			
			if(rs.next()){
				gvo.setSabun(rs.getInt("sabun"));
				gvo.setName(rs.getString("name"));
				gvo.setTitle(rs.getString("title"));
				gvo.setNalja(rs.getDate("nalja"));
				gvo.setPay(rs.getInt("pay"));
				
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return gvo;
	}
	public int updateGuestTitle(GuestVO gvo){
		int result = 0;
		String sql = "update guest set title = ? ";
		sql += "\n where sabun = ?";
		try {
			pst = cn.prepareStatement(sql);
			pst.setString(1, gvo.getTitle());
			pst.setInt(2, gvo.getSabun());
			result = pst.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return result;
	}
	public int deleteGuest(GuestVO gvo){
		int result = 0;
		String sql = "delete from guest where sabun = ?";
		try {
			pst = cn.prepareStatement(sql);
			pst.setInt(1, gvo.getSabun());
			result = pst.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return result;
	}
	
	public int getTotalCount(){
		int result = 0;
		
		try {
			String sql = "select count(*) as count from guest";
			st = cn.createStatement();
			rs =st.executeQuery(sql);
			if(rs.next()){
				result = rs.getInt("count");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return result;
		
	}
	public int getSearchCount(){
		int result = 0;
		
		try {
			String sql = "select count(*) as count from guest";
			st = cn.createStatement();
			rs =st.executeQuery(sql);
			if(rs.next()){
				result = rs.getInt("count");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return result;
		
	}
		
}
