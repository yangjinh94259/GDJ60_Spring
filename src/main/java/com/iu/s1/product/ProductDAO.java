package com.iu.s1.product;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.iu.s1.util.DBConnection;
import com.iu.s1.util.Pager;

@Repository
public class ProductDAO {
	
	@Autowired
	private SqlSession sqlSession;
	private final String NAMESPACE = "com.iu.s1.product.ProductDAO.";
	
	public Long getProductCount(Pager pager) throws Exception{
		return sqlSession.selectOne(NAMESPACE + "getProductCount", pager);
	}
	
	public List<ProductDTO> getProductList(Pager pager) throws Exception{
		return sqlSession.selectList(NAMESPACE + "getProductList", pager);
	}
	
	//delete
	public int setProductDelete(Long productNum) throws Exception{
		
		return sqlSession.delete(NAMESPACE + "setProductDelete", productNum);
		
	}
	
	public ProductDTO getProductDetail(ProductDTO productDTO) throws Exception{
		
		return sqlSession.selectOne(NAMESPACE + "getProductDetail", productDTO);
	
	}
	
	//getMax
	public Long getProductNum() throws Exception{
		
		return sqlSession.selectOne(NAMESPACE + "getProductNum");
		
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
			productOptionDTO.setOptionNum(rs.getLong("OPTIONNUM"));
			productOptionDTO.setProductNum(rs.getLong("PRODUCTNUM"));
			productOptionDTO.setOptionName(rs.getString("OPTIONNAME"));
			productOptionDTO.setOptionPrice(rs.getLong("OPTIONPRICE"));
			productOptionDTO.setOptionAmount(rs.getLong("OPTIONAMOUNT"));
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
			
			st.setLong(1, productOptionDTO.getProductNum());
			st.setString(2,productOptionDTO.getOptionName());
			st.setLong(3, productOptionDTO.getOptionPrice());
			st.setLong(4, productOptionDTO.getOptionAmount());
			
			int result = st.executeUpdate();
			
			DBConnection.disConnect(st, con);
			
			return result;

	}
	//-------------------------------------------------------------------------------------------
	
	public int setProductAdd(ProductDTO productDTO) throws Exception{
	
		return sqlSession.insert(NAMESPACE + "setProductAdd", productDTO);
		
	}
	
}
