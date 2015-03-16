package net.cho.web.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import net.cho.web.factory.Command;
import net.cho.web.model.ItemVo;
import net.cho.web.util.DBmanager;
@Repository
public class ItemDao {
	private static ItemDao instance ;
	private Connection cn;
	private Statement st;
	private PreparedStatement pst;
	private ResultSet rs;
	
	public static ItemDao getInstance(){
		if(instance == null){
			instance = new ItemDao();
		}
		return instance;
	}
	private ItemDao (){
		cn = DBmanager.getConnection();
	}
	
	public void insertItem(ItemVo ivo){
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
	public List<ItemVo> getItemList(){
		List<ItemVo> list = new ArrayList<ItemVo>();
		try {
			String sql = "select * from item";
			st = cn.createStatement();
			rs = st.executeQuery(sql);
			
			while (rs.next()) {
				ItemVo ivo = new ItemVo();
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
	public ItemVo getOneItemByID(Command command){
		ItemVo ivo = new ItemVo();
		try {
			String sql = "select * from item where item_no ="+command.getKeyword();
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
	public List<ItemVo> getItemSearch(Command command){
		List<ItemVo> list = new ArrayList<ItemVo>();
		ItemVo ivo = new ItemVo();
		try {
			String sql = "select * from item ";
			sql += "\n where ? = ?";
			pst = cn.prepareStatement(sql);
			pst.setString(1, command.getKeyField());
			pst.setString(2, command.getKeyword());
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
	public int getSearchCount(Command command){
		int count = 0;
		try {
			String sql = "select count(*) as count from item where ? = ?";
			pst = cn.prepareStatement(sql);
			pst.setString(1, command.getKeyField());
			pst.setString(2, command.getKeyword());
			rs = pst.executeQuery();
			if (rs.next()) {
				count = rs.getInt("count");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return count;
	}
	public void uploadImg(ItemVo ivo) {
		// TODO Auto-generated method stub
		
	}
	
	
}
