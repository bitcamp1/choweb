package smarthomepage.com.cop.itm.service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import smarthomepage.com.cop.itm.CategoryVO;
import smarthomepage.com.utl.sys.dbm.DBmanager;
@Repository
public class CategoryDAO {
	private static CategoryDAO instance;
	private Connection cn;
	private Statement st;
	private PreparedStatement pst;
	private ResultSet rs;
	CategoryVO cvo;
	private CategoryDAO() {
		cn = DBmanager.getConnection();
	}
	public static CategoryDAO getInstance (){
		if(instance == null){
			instance = new CategoryDAO();
		}
		return instance;
	}
	
	
	public int insertCategory(CategoryVO cvo){
		int result = 0;
		try {
			String sql = "insert into category (cate_no, cate_name )"
					+ "\n values(seq.nextval , ?)";
			pst = cn.prepareStatement(sql);
			pst.setString(1, cvo.getCateName());
			result = pst.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}
	public List<CategoryVO> selectAllCategory(){
		List<CategoryVO> list = new ArrayList<CategoryVO>();
		try {
		/*	String sql = "select * from "
					+ "\n (select rownum as row, c.* from category c"
					+ "\n where "+command.getKeyField()+" like '%"+command.getKeyword()+"%')"
					+ "\n where row between '"+command.getStart()+"' and '"+command.getEnd()+"' "
					+ "\n order by row desc";*/
			cvo = new CategoryVO();
			st = cn.createStatement();
		/*	rs = st.executeQuery(sql);*/
			while (rs.next()) {
				cvo.setCateName(rs.getString("cate_name"));
				cvo.setCateNO(rs.getInt("cate_no"));
				list.add(cvo);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return list;
	}
	public CategoryVO selectCateName(CategoryVO cvo){
		String sql = "select cate_name from category where cate_no = ?";
		try {
			st = cn.createStatement();
			rs = st.executeQuery(sql);
			cvo.setCateName(rs.getString(1));
		} catch (Exception e) {
			e.printStackTrace();
		}
		return cvo;
	}
	public int updateCategory(CategoryVO cvo){
		int result = -1;
		try {
			String sql = "update category set cate_name = ?";
			sql += "where cate_no = ?";
					pst = cn.prepareStatement(sql);
					pst.setString(1, cvo.getCateName());
					pst.setInt(2, cvo.getCateNO());
					result = pst.executeUpdate(sql);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}
	public int deleteCategory(CategoryVO cvo){
		int result = 0;
		try {
			String sql = "delete from category where cate_no = ?";
			pst = cn.prepareStatement(sql);
			result = pst.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}
}
