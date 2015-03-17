package smarthomepage.com.cop.itm.service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import smarthomepage.com.cop.itm.ItemVO;
import smarthomepage.com.utl.sys.dbm.DBmanager;

@Repository
public class ItemDAO {
	private static ItemDAO instance ;
	private Connection cn;
	private Statement st;
	private PreparedStatement pst;
	private ResultSet rs;
	
	public static ItemDAO getInstance(){
		if(instance == null){
			instance = new ItemDAO();
		}
		return instance;
	}
	private ItemDAO (){
		cn = DBmanager.getConnection();
	}
	
	public void insertItem(ItemVO ivo){
		try {
			String sql = "insert into item";
			sql += "\n (item_no, item_name, price, pd_date, capa, description, pd_org, sale_type,cate_name, img_name )";
			sql += "\n values";
			sql += "(seq.nextval, ?, ?, ?, ?, ?, ?, ? , ?,?)";
			
			pst = cn.prepareStatement(sql);
			pst.setString(1, ivo.getItemName());
			pst.setInt(2, ivo.getPrice());
			pst.setString(3, ivo.getPdDate());
			pst.setInt(4, ivo.getCapa());
			pst.setString(5, ivo.getDescription());
			pst.setString(6, ivo.getPdOrg());
			pst.setString(7, ivo.getSaleType());
			pst.setString(8, ivo.getCateName());
			pst.setString(9, ivo.getImgName());
		
			pst.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}
	public List<ItemVO> getItemList(){
		List<ItemVO> list = new ArrayList<ItemVO>();
		try {
			String sql = "select * from item";
			st = cn.createStatement();
			rs = st.executeQuery(sql);
			
			while (rs.next()) {
				ItemVO ivo = new ItemVO();
				ivo.setCapa(rs.getInt("capa"));
				ivo.setItemNO(rs.getInt("item_no"));
				ivo.setItemName(rs.getString("item_name"));
				ivo.setPrice(rs.getInt("price"));
				ivo.setDescription(rs.getString("description"));
				ivo.setPdOrg(rs.getString("pd_org"));
				ivo.setSaleType(rs.getString("sale_type"));
				ivo.setItemNO(rs.getInt("item_no"));
				ivo.setPdDate(rs.getString("pd_date"));
				ivo.setImgName(rs.getString("img_name"));
				list.add(ivo);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		for(int i=0;i<list.size();i++){
			System.out.println("DAO 내부 리스트 항목들 :"+list.get(i));
		}
		return list;
	}
	public int getTotalCount(){
		int count=0;
		try {
			String sql = "select count(*) as count from item";
			st = cn.createStatement();
			rs = st.executeQuery(sql);
			if(rs.next()){
				count = rs.getInt("count");
			}
			
		} catch (Exception e) {
			// TODO: handle exception
		}
		return count;
	}
	public ItemVO getOneItemByID(){
		ItemVO ivo = new ItemVO();
		try {
			String sql = "select * from item where item_no =";
			st = cn.createStatement();
			rs = st.executeQuery(sql);
			if(rs.next()){
				ivo.setCapa(rs.getInt("capa"));
				ivo.setItemNO(rs.getInt("item_no"));
				ivo.setItemName(rs.getString("item_name"));
				ivo.setPrice(rs.getInt("price"));
				ivo.setDescription(rs.getString("description"));
				ivo.setPdOrg(rs.getString("pd_org"));
				ivo.setSaleType(rs.getString("sale_type"));
				ivo.setItemNO(rs.getInt("item_no"));
				ivo.setPdDate(rs.getString("pd_date"));
				ivo.setImgName(rs.getString("img_name"));
			
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
		return ivo;
	}
	public List<ItemVO> getItemSearch(){
		List<ItemVO> list = new ArrayList<ItemVO>();
		ItemVO ivo = new ItemVO();
		try {
			String sql = "select * from item ";
			sql += "\n where ? = ?";
			pst = cn.prepareStatement(sql);
			rs = pst.executeQuery();
			while(rs.next()){
				ivo.setCapa(rs.getInt("capa"));
				ivo.setItemNO(rs.getInt("item_no"));
				ivo.setItemName(rs.getString("item_name"));
				ivo.setPrice(rs.getInt("price"));
				ivo.setDescription(rs.getString("description"));
				ivo.setPdOrg(rs.getString("pd_org"));
				ivo.setSaleType(rs.getString("sale_type"));
				ivo.setItemNO(rs.getInt("item_no"));
				ivo.setPdDate(rs.getString("pd_date"));
				ivo.setImgName(rs.getString("img_name"));
			
				list.add(ivo);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	public int getSearchCount(){
		int count = 0;
		try {
			String sql = "select count(*) as count from item where ? = ?";
			pst = cn.prepareStatement(sql);
			rs = pst.executeQuery();
			if (rs.next()) {
				count = rs.getInt("count");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return count;
	}
	public void uploadImg(ItemVO ivo) {
		// TODO Auto-generated method stub
		
	}
	
	
}
