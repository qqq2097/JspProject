package data.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.List;
import java.util.Vector;

import data.dto.SangpumDto;
import mysql.db.DbConnect;

public class SangpumDao {

	DbConnect db=new DbConnect();
	
	public List<SangpumDto> getList(int start,int end){
		List<SangpumDto> list=new Vector<SangpumDto>();
		
		Connection conn=db.getConnection();
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		
		String sql="select * from sangpum order by snum asc limit ?,?";
		
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1, start);
			pstmt.setInt(2, end);
			rs=pstmt.executeQuery();
			
			while (rs.next()) {
				SangpumDto dto=new SangpumDto();
				dto.setSnum(rs.getInt("snum"));
				dto.setSname(rs.getString("sname"));
				dto.setSprice(rs.getInt("sprice"));
				dto.setImgsrc(rs.getString("imgsrc"));
				
				list.add(dto);
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			db.dbClose(rs, pstmt, conn);
		}
		
		return list;
	}
	
	
	public List<SangpumDto> getbeverageList(int start,int end){
		List<SangpumDto> list=new Vector<SangpumDto>();
		
		Connection conn=db.getConnection();
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		
		String sql="select * from beverage order by snum asc limit ?,?";
		
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1, start);
			pstmt.setInt(2, end);
			rs=pstmt.executeQuery();
			
			while (rs.next()) {
				SangpumDto dto=new SangpumDto();
				dto.setSnum(rs.getInt("snum"));
				dto.setSname(rs.getString("sname"));
				dto.setSprice(rs.getInt("sprice"));
				dto.setImgsrc(rs.getString("imgsrc"));
				
				list.add(dto);
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			db.dbClose(rs, pstmt, conn);
		}
		
		return list;
	}
	
	public SangpumDto getbeverageData(String num) {
		SangpumDto dto=new SangpumDto();
		
		Connection conn=db.getConnection();
		Statement stmt=null;
		ResultSet rs=null;
		
		String sql="select * from beverage where snum="+num;
		
		try {
			stmt=conn.createStatement();
			rs=stmt.executeQuery(sql);
			
			if(rs.next()) {
				dto.setSnum(rs.getInt("snum"));
				dto.setSname(rs.getString("sname"));
				dto.setSprice(rs.getInt("sprice"));
				dto.setImgsrc(rs.getString("imgsrc"));
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			db.dbClose(rs, stmt, conn);
		}
		
		return dto;
	}
	
	
	
	public List<SangpumDto> getfoodList(int start,int end){
		List<SangpumDto> list=new Vector<SangpumDto>();
		
		Connection conn=db.getConnection();
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		
		String sql="select * from food order by snum asc limit ?,?";
		
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1, start);
			pstmt.setInt(2, end);
			rs=pstmt.executeQuery();
			
			while (rs.next()) {
				SangpumDto dto=new SangpumDto();
				dto.setSnum(rs.getInt("snum"));
				dto.setSname(rs.getString("sname"));
				dto.setSprice(rs.getInt("sprice"));
				dto.setImgsrc(rs.getString("imgsrc"));
				
				list.add(dto);
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			db.dbClose(rs, pstmt, conn);
		}
		
		return list;
	}
	
	public List<SangpumDto> getgoodsList(int start,int end){
		List<SangpumDto> list=new Vector<SangpumDto>();
		
		Connection conn=db.getConnection();
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		
		String sql="select * from goods order by snum asc limit ?,?";
		
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1, start);
			pstmt.setInt(2, end);
			rs=pstmt.executeQuery();
			
			while (rs.next()) {
				SangpumDto dto=new SangpumDto();
				dto.setSnum(rs.getInt("snum"));
				dto.setSname(rs.getString("sname"));
				dto.setSprice(rs.getInt("sprice"));
				dto.setImgsrc(rs.getString("imgsrc"));
				
				list.add(dto);
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			db.dbClose(rs, pstmt, conn);
		}
		
		return list;
	}
	
}
