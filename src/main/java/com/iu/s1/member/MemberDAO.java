package com.iu.s1.member;

import java.sql.Connection;
import java.sql.PreparedStatement;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.iu.s1.util.DBConnection;

@Repository
public class MemberDAO {
	
	@Autowired
	private SqlSession sqlSession;
	private final String NAMESPACE = "com.iu.s1.member.MemberDAO.";
	
	public int setMemberJoin(MemberDTO memberDTO) throws Exception{
		return sqlSession.insert(NAMESPACE + "setMemberJoin", memberDTO);
	}
	
	public int setMemberRoleAdd(MemberDTO memberDTO) throws Exception{
		return sqlSession.insert(NAMESPACE + "setMemberRoleAdd", memberDTO);
	}
	
	public MemberDTO getMemberLogin(MemberDTO memberDTO) throws Exception{
		return sqlSession.selectOne(NAMESPACE + "getMemberLogin", memberDTO);
	}
	
}
