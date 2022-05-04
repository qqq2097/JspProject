package StarBucksDao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Vector;

import StarBucksDto.RewordDto;
import mysql.db.DbConnect;

public class RewordDao {
	DbConnect db = new DbConnect();
	
	public void insertReword(RewordDto dto)
	{
		Connection conn=db.getConnection();
		PreparedStatement pstmt=null;
		
		String sql="insert into reword values (null,?,?,?,now(),?)";
		
		try {
			pstmt=conn.prepareStatement(sql);
			
			pstmt.setString(1, dto.getCardnum());
			pstmt.setInt(2, dto.getStarcnt());
			pstmt.setString(3, dto.getStoreaddr());
			pstmt.setString(4, dto.getId());
			
			pstmt.execute();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			db.dbClose(pstmt, conn);
		}
	}
	
	public Vector<RewordDto> getAllRewords(String id)
	{
		Vector<RewordDto> list=new Vector<RewordDto>();
		Connection conn=db.getConnection();
		Statement stmt=null;
		ResultSet rs=null;
		
		String sql="select * from reword where id='"+id+"'";
		
		try {
			stmt=conn.createStatement();
			rs=stmt.executeQuery(sql);
			
			while(rs.next())
			{
				RewordDto dto=new RewordDto();
				
				dto.setNum(rs.getString("num"));
				dto.setCardnum(rs.getString("cardnum"));
				dto.setStarcnt(rs.getInt("starcnt"));
				dto.setStoreaddr(rs.getString("storeaddr"));
				dto.setBuyday(rs.getTimestamp("buyday"));
				dto.setId(rs.getString("id"));
				
				list.add(dto);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			db.dbClose(rs, stmt, conn);
		}
		
		return list;
	}
	
	
	public Vector<RewordDto> RadioOne(String id)
	{
		Vector<RewordDto> list=new Vector<RewordDto>();
		Connection conn=db.getConnection();
		Statement stmt=null;
		ResultSet rs=null;
		
		String sql="select * from reword where DATE_FORMAT(buyday,'%Y')='2022' and "
				+ " DATE_FORMAT(buyday,'%m')='05' and id='"+id+"'";
		
		try {
			stmt=conn.createStatement();
			rs=stmt.executeQuery(sql);
			
			while(rs.next())
			{
				RewordDto dto=new RewordDto();
				
				dto.setNum(rs.getString("num"));
				dto.setCardnum(rs.getString("cardnum"));
				dto.setStarcnt(rs.getInt("starcnt"));
				dto.setStoreaddr(rs.getString("storeaddr"));
				dto.setBuyday(rs.getTimestamp("buyday"));
				dto.setId(rs.getString("id"));
				
				list.add(dto);
				
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			db.dbClose(rs, stmt, conn);
		}
		
		return list;
	}
	
	public Vector<RewordDto> RadioTwo(String id)
	{
		Vector<RewordDto> list=new Vector<RewordDto>();
		Connection conn=db.getConnection();
		Statement stmt=null;
		ResultSet rs=null;
		
		String sql="select * from reword where DATE_FORMAT(buyday,'%Y')='2022' and id='"+id+"'";
		
		try {
			stmt=conn.createStatement();
			rs=stmt.executeQuery(sql);
			
			while(rs.next())
			{
				RewordDto dto=new RewordDto();
				
				dto.setNum(rs.getString("num"));
				dto.setCardnum(rs.getString("cardnum"));
				dto.setStarcnt(rs.getInt("starcnt"));
				dto.setStoreaddr(rs.getString("storeaddr"));
				dto.setBuyday(rs.getTimestamp("buyday"));
				dto.setId(rs.getString("id"));
				
				list.add(dto);
				
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			db.dbClose(rs, stmt, conn);
		}
		
		return list;
	}
	
	//id 누적 별 개수
	public int getTotalCountStar(String id)
	{
		int n=0;
		
		Connection conn=db.getConnection();
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		
		String sql="select count(*) from reword where id='"+id+"'";
		
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
	
	//검색 버튼을 통한 날짜 검색 (범위지정)
	public Vector<RewordDto> getAllRewordsBtn(String id,String d1,String d2)
	{
		Vector<RewordDto> list=new Vector<RewordDto>();
		Connection conn=db.getConnection();
		Statement stmt=null;
		ResultSet rs=null;
		
		String sql="select * from reword  where (buyday between '"+d1+"' and '"+d2+"') and id='"+id+"'";
		
		try {
			stmt=conn.createStatement();
			rs=stmt.executeQuery(sql);
			
			while(rs.next())
			{
				RewordDto dto=new RewordDto();
				
				dto.setNum(rs.getString("num"));
				dto.setCardnum(rs.getString("cardnum"));
				dto.setStarcnt(rs.getInt("starcnt"));
				dto.setStoreaddr(rs.getString("storeaddr"));
				dto.setBuyday(rs.getTimestamp("buyday"));
				dto.setId(rs.getString("id"));
				
				list.add(dto);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			db.dbClose(rs, stmt, conn);
		}
		
		return list;
	}
	
	//검색 버튼을 통한 날짜 검색 카운트 뽑기 (범위지정)
		public int getAllRewordsCnt(String id,String d1,String d2)
		{
			int n=0;
			
			Connection conn=db.getConnection();
			PreparedStatement pstmt=null;
			ResultSet rs=null;
			
			String sql="select count(*) from reword  where (buyday between '"+d1+"' and '"+d2+"') and id='"+id+"'";
			
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
		
		//검색 버튼을 통한 날짜 검색 (범위지정)
		public Vector<RewordDto> getAllRewordsBtnList(String id,String d1,String d2,int start,int perpage)
		{
			Vector<RewordDto> list=new Vector<RewordDto>();
			Connection conn=db.getConnection();
			PreparedStatement pstmt=null;
			ResultSet rs=null;
			
			String sql="select * from reword  where (buyday between '"+d1+"' and '"+d2+"') and id='"+id+"' "
					+ "order by num desc limit ?,?";
			
			try {
				pstmt=conn.prepareStatement(sql);
				pstmt.setInt(1, start);
				pstmt.setInt(2, perpage);
				rs=pstmt.executeQuery();
				
				while(rs.next())
				{
					RewordDto dto=new RewordDto();
					
					dto.setNum(rs.getString("num"));
					dto.setCardnum(rs.getString("cardnum"));
					dto.setStarcnt(rs.getInt("starcnt"));
					dto.setStoreaddr(rs.getString("storeaddr"));
					dto.setBuyday(rs.getTimestamp("buyday"));
					dto.setId(rs.getString("id"));
					
					list.add(dto);
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}finally {
				db.dbClose(rs, pstmt, conn);
			}
			
			return list;
		}
}
