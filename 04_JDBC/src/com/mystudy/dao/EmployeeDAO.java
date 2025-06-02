package com.mystudy.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import com.mystudy.common.JdbcUtil;
import com.mystudy.vo.EmployeeVO;

public class EmployeeDAO {
	private static final String SELECT_BY_ID = 
			"SELECT SABUN, NAME, REGDATE, PAY " +
			"FROM EMPLOYEE " +
			"WHERE SABUN = ? ";

	public List<EmployeeVO> select() {
		return null;
	}
	
	public EmployeeVO selectById(int sabun) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		EmployeeVO vo = null;
		try {
			conn = JdbcUtil.getConnection();
			pstmt = conn.prepareStatement(SELECT_BY_ID);
			pstmt.setInt(1, sabun);
			rs = pstmt.executeQuery();
			
			while (rs.next()) {
				vo = new EmployeeVO(
						rs.getInt("SABUN"),
						rs.getString("NAME"),
						rs.getDate("REGDATE"),
						rs.getInt("PAY") );
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JdbcUtil.close(conn, pstmt, rs);
		}	
		return vo;
	}
	
	public int insert(EmployeeVO vo) {
		return 0;
	}
	
	public int update(EmployeeVO vo) {
		return 0;
	}
	
	public int delete(EmployeeVO vo) {
		return 0;
	}
	
	public int delete(int sabun) {
		return 0;
	}
	
	
}
