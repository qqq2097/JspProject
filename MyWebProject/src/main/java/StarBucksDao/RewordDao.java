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

	DbConnect db=new DbConnect();
	
	
	//인서트
	public void insertReword(RewordDto dto)
	{
		Connection conn=db.getConnection();
		PreparedStatement pstmt=null;
		
		String sql="insert into reword values (null,?,?,?,now())";
		
		try {
			pstmt=conn.prepareStatement(sql);
			
			pstmt.setString(1, dto.getCardnum());
			pstmt.setInt(2, dto.getStarcnt());
			pstmt.setString(3, dto.getStoreaddr());
			
			pstmt.execute();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			db.dbClose(pstmt, conn);
		}
	}
	
	
	//출력
	public Vector<RewordDto> getAllRewords()
	{
		Vector<RewordDto> list=new Vector<RewordDto>();
		Connection conn=db.getConnection();
		Statement stmt=null;
		ResultSet rs=null;
		
		String sql="select * from reword";
		
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
	
	//날짜 계산
	public void calendar(String d1,String d2)
	{
		
	}
	
	//1개월 라디오 
	public Vector<RewordDto> RadioOne()
	{
		Vector<RewordDto> list=new Vector<RewordDto>();
		Connection conn=db.getConnection();
		Statement stmt=null;
		ResultSet rs=null;
		
		String sql="select * from reword where DATE_FORMAT(buyday,'%Y') = '2022' and DATE_FORMAT(buyday,'%m') = '04'";
		
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
	
	//1년 라디오 
		public Vector<RewordDto> RadioTwo()
		{
			Vector<RewordDto> list=new Vector<RewordDto>();
			Connection conn=db.getConnection();
			Statement stmt=null;
			ResultSet rs=null;
			
			String sql="select * from reword where DATE_FORMAT(buyday,'%Y') = '2022'";
			
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
}
