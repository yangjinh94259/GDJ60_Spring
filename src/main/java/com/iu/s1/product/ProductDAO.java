package com.iu.s1.product;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.iu.s1.util.DBConnection;

@Repository
public class ProductDAO {
	
	public ProductDTO getProductDetail(ProductDTO productDTO) throws Exception{
		Connection con = DBConnection.getConnection();
		
		String sql = "SELECT * FROM PRODUCT WHERE PRODUCTNUM = ?";
		
		PreparedStatement st = con.prepareStatement(sql);
		
		st.setLong(1, productDTO.getProductnum());
		
		ResultSet rs = st.executeQuery();
		
		if(rs.next()){
			productDTO = new ProductDTO();
			productDTO.setProductnum(rs.getLong("PRODUCTNUM"));
			productDTO.setProductname(rs.getString("PRODUCTNAME"));
			productDTO.setProductdetail(rs.getString("PRODUCTDETAIL"));
			productDTO.setProductjumsu(rs.getDouble("PRODUCTJUMSU"));
		}
		else {
			productDTO = null;
		}
		
		DBConnection.disConnection(rs, st, con);
		
		return productDTO;
	}
	
	//getMax
	public Long getProductNum() throws Exception{
		Connection con = DBConnection.getConnection();
		
		String sql = "SELECT PRODUCT_SEQ.NEXTVAL FROM DUAL";
		
		PreparedStatement st = con.prepareStatement(sql);
		
		ResultSet rs = st.executeQuery();
		
		rs.next();
		
		Long num = rs.getLong(1);
		
		DBConnection.disConnection(rs, st, con);
		
		return num;
	}
	
	
	//-------------------------------------------------------------------------------------------
	public List<ProductOptionDTO> getProductOptionList() throws Exception {
		List<ProductOptionDTO> ar = new ArrayList<ProductOptionDTO>();
		
		Connection con = DBConnection.getConnection();
		
		String sql = "SELECT * FROM PRODUCTOPTION";
		
		PreparedStatement st = con.prepareStatement(sql);
		
		ResultSet rs = st.executeQuery();
		
		while(rs.next()) {
			ProductOptionDTO productOptionDTO = new ProductOptionDTO();
			productOptionDTO.setOptionnum(rs.getLong("OPTIONNUM"));
			productOptionDTO.setProductnum(rs.getLong("PRODUCTNUM"));
			productOptionDTO.setOptionname(rs.getString("OPTIONNAME"));
			productOptionDTO.setOptionprice(rs.getLong("OPTIONPRICE"));
			productOptionDTO.setOptionamount(rs.getLong("OPTIONAMOUNT"));
			ar.add(productOptionDTO);
		}
		
		DBConnection.disConnection(rs, st, con);
		
		return ar;
		
	}

		public int setAddProductOption(ProductOptionDTO productOptionDTO) throws Exception {
			Connection con = DBConnection.getConnection();
			
			String sql = "INSERT INTO PRODUCTOPTION(OPTIONNUM, PRODUCTNUM, OPTIONNAME, OPTIONPRICE, OPTIONAMOUNT)"
					+ "VALUES(PRODUCT_SEQ.NEXTVAL, ?, ?, ?, ?)";
			
			PreparedStatement st = con.prepareStatement(sql);
			
			st.setLong(1, productOptionDTO.getProductnum());
			st.setString(2,productOptionDTO.getOptionname());
			st.setLong(3, productOptionDTO.getOptionprice());
			st.setLong(4, productOptionDTO.getOptionamount());
			
			int result = st.executeUpdate();
			
			DBConnection.disConnect(st, con);
			
			return result;

	}
	//-------------------------------------------------------------------------------------------
	
	public List<ProductDTO> getProductList() throws Exception{
		ArrayList<ProductDTO> ar = new ArrayList<ProductDTO>();
		
		Connection con = DBConnection.getConnection();
		
		String sql = "SELECT PRODUCTNUM, PRODUCTNAME, PRODUCTJUMSU "
				+ "FROM PRODUCT ORDER BY PRODUCTJUMSU DESC";
		
		PreparedStatement st = con.prepareStatement(sql);
		
		ResultSet rs = st.executeQuery();
		
		while(rs.next()) {
			ProductDTO productDTO = new ProductDTO();
			productDTO.setProductnum(rs.getLong("PRODUCTNUM"));
			productDTO.setProductname(rs.getString("PRODUCTNAME"));
			productDTO.setProductjumsu(rs.getDouble("PRODUCTJUMSU"));
			ar.add(productDTO);
		}
		
		DBConnection.disConnection(rs, st, con);
		
		return ar;
	}
	
	public int setAddProduct(ProductDTO productDTO) throws Exception{
		Connection con = DBConnection.getConnection();
		
		String sql = "INSERT INTO PRODUCT(PRODUCTNUM, PRODUCTNAME, PRODUCTDETAIL, PRODUCTJUMSU) "
				+ " VALUES(?, ?, ?, 0.0)";
		
		PreparedStatement st = con.prepareStatement(sql);
		
		st.setLong(1, productDTO.getProductnum());
		st.setString(2, productDTO.getProductname());
		st.setString(3, productDTO.getProductdetail());
		//st.setDouble(3, productDTO.getProductjumsu());
		
		int result = st.executeUpdate();
		
		DBConnection.disConnect(st, con);
		
		return result;
	}
	
}
