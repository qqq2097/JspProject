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
				dto.setSnum(rs.getString("snum"));
				dto.setSname(rs.getString("sname"));
				dto.setSprice(rs.getString("sprice"));
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
				dto.setSnum(rs.getString("snum"));
				dto.setSname(rs.getString("sname"));
				dto.setSprice(rs.getString("sprice"));
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
				dto.setSnum(rs.getString("snum"));
				dto.setSname(rs.getString("sname"));
				dto.setSprice(rs.getString("sprice"));
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
	
	public void insertMybeverage(SangpumDto dto) {
		Connection conn=db.getConnection();
		PreparedStatement pstmt=null;
		
		String sql="insert into mybeverage values(null,?,?,?,?)";
		
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, dto.getSname());
			pstmt.setString(2, dto.getSprice());
			pstmt.setString(3, dto.getImgsrc());
			pstmt.setString(4, dto.getId());
			pstmt.execute();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			db.dbClose(pstmt, conn);
		}
	}
	
	public List<SangpumDto> mybeverageList(){
		List<SangpumDto> list=new Vector<SangpumDto>();
		
		Connection conn=db.getConnection();
		Statement stmt=null;
		ResultSet rs=null;
		
		String sql="select * from mybeverage";
		
		try {
			stmt=conn.createStatement();
			rs=stmt.executeQuery(sql);
			
			while (rs.next()) {
				SangpumDto dto=new SangpumDto();
				dto.setSnum(rs.getString("snum"));
				dto.setSname(rs.getString("sname"));
				dto.setSprice(rs.getString("sprice"));
				dto.setImgsrc(rs.getString("imgsrc"));
				dto.setId(rs.getString("id"));
				
				list.add(dto);
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			db.dbClose(rs, stmt, conn);
		}
		
		return list;
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
				dto.setSnum(rs.getString("snum"));
				dto.setSname(rs.getString("sname"));
				dto.setSprice(rs.getString("sprice"));
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
	
	public SangpumDto getfoodData(String num) {
		SangpumDto dto=new SangpumDto();
		
		Connection conn=db.getConnection();
		Statement stmt=null;
		ResultSet rs=null;
		
		String sql="select * from food where snum="+num;
		
		try {
			stmt=conn.createStatement();
			rs=stmt.executeQuery(sql);
			
			if(rs.next()) {
				dto.setSnum(rs.getString("snum"));
				dto.setSname(rs.getString("sname"));
				dto.setSprice(rs.getString("sprice"));
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
	
	public void insertMyfood(SangpumDto dto) {
		Connection conn=db.getConnection();
		PreparedStatement pstmt=null;
		
		String sql="insert into myfood values(null,?,?,?,?)";
		
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, dto.getSname());
			pstmt.setString(2, dto.getSprice());
			pstmt.setString(3, dto.getImgsrc());
			pstmt.setString(4, dto.getId());
			pstmt.execute();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			db.dbClose(pstmt, conn);
		}
	}
	
	public List<SangpumDto> myfoodList(){
		List<SangpumDto> list=new Vector<SangpumDto>();
		
		Connection conn=db.getConnection();
		Statement stmt=null;
		ResultSet rs=null;
		
		String sql="select * from myfood";
		
		try {
			stmt=conn.createStatement();
			rs=stmt.executeQuery(sql);
			
			while (rs.next()) {
				SangpumDto dto=new SangpumDto();
				dto.setSnum(rs.getString("snum"));
				dto.setSname(rs.getString("sname"));
				dto.setSprice(rs.getString("sprice"));
				dto.setImgsrc(rs.getString("imgsrc"));
				dto.setId(rs.getString("id"));
				
				list.add(dto);
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			db.dbClose(rs, stmt, conn);
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
				dto.setSnum(rs.getString("snum"));
				dto.setSname(rs.getString("sname"));
				dto.setSprice(rs.getString("sprice"));
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
	

	
	public SangpumDto getgoodsData(String num) {
		SangpumDto dto=new SangpumDto();
		
		Connection conn=db.getConnection();
		Statement stmt=null;
		ResultSet rs=null;
		
		String sql="select * from goods where snum="+num;
		
		try {
			stmt=conn.createStatement();
			rs=stmt.executeQuery(sql);
			
			if(rs.next()) {
				dto.setSnum(rs.getString("snum"));
				dto.setSname(rs.getString("sname"));
				dto.setSprice(rs.getString("sprice"));
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
	
	public void insertMygoods(SangpumDto dto) {
		Connection conn=db.getConnection();
		PreparedStatement pstmt=null;
		
		String sql="insert into mygoods values(null,?,?,?,?)";
		
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, dto.getSname());
			pstmt.setString(2, dto.getSprice());
			pstmt.setString(3, dto.getImgsrc());
			pstmt.setString(4, dto.getId());
			pstmt.execute();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			db.dbClose(pstmt, conn);
		}
	}
	
	public List<SangpumDto> mygoodsList(){
		List<SangpumDto> list=new Vector<SangpumDto>();
		
		Connection conn=db.getConnection();
		Statement stmt=null;
		ResultSet rs=null;
		
		String sql="select * from mygoods";
		
		try {
			stmt=conn.createStatement();
			rs=stmt.executeQuery(sql);
			
			while (rs.next()) {
				SangpumDto dto=new SangpumDto();
				dto.setSnum(rs.getString("snum"));
				dto.setSname(rs.getString("sname"));
				dto.setSprice(rs.getString("sprice"));
				dto.setImgsrc(rs.getString("imgsrc"));
				dto.setId(rs.getString("id"));
				
				list.add(dto);
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			db.dbClose(rs, stmt, conn);
		}
		
		return list;
	}
	
	//마이메뉴중복check 존재하면 true return
	public boolean isMybeverageCheck(String sname) {
		boolean b=false;
		
		Connection conn=db.getConnection();
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		
		String sql="select * from mybeverage where sname=?";
		
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, sname);
			rs=pstmt.executeQuery();
			
			if(rs.next()) b=true;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			db.dbClose(rs, pstmt, conn);
		}
		
		return b;
	}
	
	public boolean isMyfoodCheck(String sname) {
		boolean b=false;
		
		Connection conn=db.getConnection();
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		
		String sql="select * from myfood where sname=?";
		
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, sname);
			rs=pstmt.executeQuery();
			
			if(rs.next()) b=true;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			db.dbClose(rs, pstmt, conn);
		}
		
		return b;
	}
	
	public boolean isMygoodsCheck(String sname) {
		boolean b=false;
		
		Connection conn=db.getConnection();
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		
		String sql="select * from mygoods where sname=?";
		
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, sname);
			rs=pstmt.executeQuery();
			
			if(rs.next()) b=true;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			db.dbClose(rs, pstmt, conn);
		}
		
		return b;
	}
	
	//totalcount Beverage
	public int getTotalCountBeverage()
	{
		int n=0;
		
		Connection conn=db.getConnection();
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		
		String sql="select count(*) from mybeverage";
		
		try {
			pstmt=conn.prepareStatement(sql);
			rs=pstmt.executeQuery();
			
			if(rs.next())
				n=rs.getInt(1);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			db.dbClose(rs, pstmt, conn);
		}
		
		
		return n;
	}
	
	//totalcount Food
		public int getTotalCountFood()
		{
			int n=0;
			
			Connection conn=db.getConnection();
			PreparedStatement pstmt=null;
			ResultSet rs=null;
			
			String sql="select count(*) from myfood";
			
			try {
				pstmt=conn.prepareStatement(sql);
				rs=pstmt.executeQuery();
				
				if(rs.next())
					n=rs.getInt(1);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}finally {
				db.dbClose(rs, pstmt, conn);
			}
			
			
			return n;
		}
		
		//totalcount Goods
		public int getTotalCountGoods()
		{
			int n=0;
			
			Connection conn=db.getConnection();
			PreparedStatement pstmt=null;
			ResultSet rs=null;
			
			String sql="select count(*) from mygoods";
			
			try {
				pstmt=conn.prepareStatement(sql);
				rs=pstmt.executeQuery();
				
				if(rs.next())
					n=rs.getInt(1);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}finally {
				db.dbClose(rs, pstmt, conn);
			}
			
			
			return n;
		}
	
	public List<SangpumDto> mybeverageList(int start,int perpage){
		List<SangpumDto> list=new Vector<SangpumDto>();
		
		Connection conn=db.getConnection();
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		
		String sql="select * from mybeverage order by snum desc limit ?,?";
		
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1, start);
			pstmt.setInt(2, perpage);
			rs=pstmt.executeQuery();
			
			while (rs.next()) {
				SangpumDto dto=new SangpumDto();
				dto.setSnum(rs.getString("snum"));
				dto.setSname(rs.getString("sname"));
				dto.setSprice(rs.getString("sprice"));
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
	
	public void deleteMybeverage(String snum)
	{
		Connection conn=db.getConnection();
		PreparedStatement pstmt=null;
		String sql="delete from mybeverage where snum=?";
		
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, snum);
			pstmt.execute();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			db.dbClose(pstmt, conn);
		}
		
	}
	
	
	public List<SangpumDto> myFoodList(int start,int perpage){
		List<SangpumDto> list=new Vector<SangpumDto>();
		
		Connection conn=db.getConnection();
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		
		String sql="select * from myfood order by snum desc limit ?,?";
		
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1, start);
			pstmt.setInt(2, perpage);
			rs=pstmt.executeQuery();
			
			while (rs.next()) {
				SangpumDto dto=new SangpumDto();
				dto.setSnum(rs.getString("snum"));
				dto.setSname(rs.getString("sname"));
				dto.setSprice(rs.getString("sprice"));
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
	
	public void deleteFood(String snum)
	{
		Connection conn=db.getConnection();
		PreparedStatement pstmt=null;
		String sql="delete from myfood where snum=?";
		
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, snum);
			pstmt.execute();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			db.dbClose(pstmt, conn);
		}
		
	}
	
	
	public List<SangpumDto> mygoodsList(int start,int perpage){
		List<SangpumDto> list=new Vector<SangpumDto>();
		
		Connection conn=db.getConnection();
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		
		String sql="select * from mygoods order by snum desc limit ?,?";
		
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1, start);
			pstmt.setInt(2, perpage);
			rs=pstmt.executeQuery();
			
			while (rs.next()) {
				SangpumDto dto=new SangpumDto();
				dto.setSnum(rs.getString("snum"));
				dto.setSname(rs.getString("sname"));
				dto.setSprice(rs.getString("sprice"));
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
	
	
	public void deleteGoods(String snum)
	{
		Connection conn=db.getConnection();
		PreparedStatement pstmt=null;
		String sql="delete from mygoods where snum=?";
		
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, snum);
			pstmt.execute();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			db.dbClose(pstmt, conn);
		}
		
	}
}
